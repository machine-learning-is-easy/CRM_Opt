"""Load native reservoir simulator output into an RVA-ready pipeline."""

import binascii
import os
import re
import traceback

_text_type = type(u'')


def _split_path(path):
    """Return a directory and basename for local or remote-style paths."""
    normalized = path.replace('\\', '/')
    slash = normalized.rfind('/')
    if slash < 0:
        return '', normalized
    return normalized[:slash], normalized[slash + 1:]


def _join_path(directory, basename):
    if not directory:
        return basename
    return directory.rstrip('/') + '/' + basename


def _case_name(pvd_path):
    directory, basename = _split_path(pvd_path)
    root, extension = os.path.splitext(basename)
    if extension.lower() != '.pvd':
        raise ValueError("Simulator output must be a .pvd file")
    if not root:
        raise ValueError("Simulator output path has no case name")
    return directory, root


def _sanitize_pipeline_name(name, fallback):
    try:
        text = _text_type(name).strip()
    except Exception:
        text = _text_type('')
    text = re.sub(r'[^A-Za-z0-9_-]+', '_', text).strip('_')
    if not text:
        text = fallback
    return text


def _unique_well_names(well_ids, names):
    """Return stable, pipeline-safe names with deterministic suffixes."""
    result = []
    used = set()
    names_are_aligned = names is not None and len(names) == len(well_ids)
    for index, well_id in enumerate(well_ids):
        fallback = 'well_%d' % well_id
        raw_name = names[index] if names_are_aligned else fallback
        base_name = _sanitize_pipeline_name(raw_name, fallback)
        safe_name = base_name
        suffix = 2
        while safe_name in used:
            safe_name = '%s_%d' % (base_name, suffix)
            suffix += 1
        used.add(safe_name)
        result.append(safe_name)
    return result


def _extraction_script(well_id):
    """Build a ParaView 3.14 ProgrammableFilter script for one well."""
    return """import vtk
input_data = self.GetInputDataObject(0, 0)
output_data = self.GetOutputDataObject(0)
output_data.Initialize()
well_ids = input_data.GetPointData().GetArray('WellId')
if well_ids is None:
    raise RuntimeError('wells.vtp does not contain the required WellId array')
point_index = -1
for index in range(input_data.GetNumberOfPoints()):
    if int(well_ids.GetTuple1(index)) == %(well_id)d:
        point_index = index
        break
if point_index < 0:
    raise RuntimeError('WellId %(well_id)d is not present in wells.vtp')
points = vtk.vtkPoints()
points.InsertNextPoint(input_data.GetPoint(point_index))
vertices = vtk.vtkCellArray()
vertices.InsertNextCell(1)
vertices.InsertCellPoint(0)
output_data.SetPoints(points)
output_data.SetVerts(vertices)
input_point_data = input_data.GetPointData()
output_point_data = output_data.GetPointData()
output_point_data.CopyAllocate(input_point_data, 1)
output_point_data.CopyData(input_point_data, point_index, 0)
""" % {'well_id': int(well_id)}


def _show_warning(title, message):
    try:
        from PyQt4.QtGui import QMessageBox
        QMessageBox.warning(None, title, message)
    except Exception:
        print('%s: %s' % (title, message))


def _rename_source(simple, name, proxy):
    try:
        simple.RenameSource(name, proxy)
        return
    except TypeError:
        pass
    previous = simple.GetActiveSource()
    try:
        simple.SetActiveSource(proxy)
        simple.RenameSource(name)
    finally:
        simple.SetActiveSource(previous)


def _array_available(proxy, association, name):
    proxy.UpdatePipeline()
    information = proxy.GetDataInformation()
    if association == 'CELL_DATA':
        attributes = information.GetCellDataInformation()
    else:
        attributes = information.GetPointDataInformation()
    return attributes is not None and attributes.GetArrayInformation(name) is not None


def _color_grid(simple, proxy, view):
    display = simple.GetDisplayProperties(proxy, view)
    for array_name in ('Pressure', 'Sw', 'So'):
        if not _array_available(proxy, 'CELL_DATA', array_name):
            continue
        display.ColorAttributeType = 'CELL_DATA'
        display.ColorArrayName = array_name
        try:
            display.LookupTable = simple.GetLookupTableForArray(array_name, 1)
        except Exception:
            pass
        return array_name
    display.ColorArrayName = ''
    return None


def _field_names(data, count):
    field_data = data.GetFieldData()
    if field_data is None:
        return None
    names = field_data.GetAbstractArray('name')
    if names is None or names.GetNumberOfTuples() != count:
        return None
    result = []
    for index in range(count):
        try:
            result.append(names.GetValue(index))
        except Exception:
            return None
    return result


def _well_metadata(data):
    point_data = data.GetPointData()
    point_count = data.GetNumberOfPoints()
    well_ids = point_data.GetArray('WellId') if point_data is not None else None
    cell_ids = point_data.GetArray('CellId') if point_data is not None else None
    well_types = point_data.GetArray('WellType') if point_data is not None else None
    if well_ids is None or cell_ids is None or well_types is None:
        raise ValueError('wells.vtp must contain WellId, CellId, and WellType point arrays')
    for array in (well_ids, cell_ids, well_types):
        if array.GetNumberOfTuples() != point_count:
            raise ValueError('Well metadata tuple counts do not match the point count')

    ids = [int(well_ids.GetTuple1(index)) for index in range(point_count)]
    if len(set(ids)) != len(ids):
        raise ValueError('wells.vtp contains duplicate WellId values')
    names = _unique_well_names(ids, _field_names(data, point_count))
    metadata = []
    for index, well_id in enumerate(ids):
        metadata.append({
            'well_id': well_id,
            'cell_id': int(cell_ids.GetTuple1(index)),
            'well_type': int(well_types.GetTuple1(index)),
            'name': names[index],
        })
    return metadata


def _style_well(simple, proxy, view, well_type):
    display = simple.GetDisplayProperties(proxy, view)
    try:
        display.Representation = 'Points'
    except Exception:
        pass
    try:
        display.PointSize = 12.0
    except Exception:
        pass
    color = [0.1, 0.35, 0.95] if well_type > 0 else [0.9, 0.15, 0.1]
    try:
        display.ColorArrayName = ''
    except Exception:
        pass
    try:
        display.DiffuseColor = color
    except Exception:
        try:
            display.AmbientColor = color
        except Exception:
            pass


def LoadSimulatorOutput(pvd_path):
    """Load a simulator grid and prepare one PolyData pipeline source per well."""
    from paraview import servermanager
    import paraview.simple as simple

    directory, case_name = _case_name(pvd_path)
    wells_path = _join_path(directory, 'wells.vtp')
    view = simple.GetRenderView()
    if view is None:
        view = simple.CreateRenderView()

    grid = simple.OpenDataFile(pvd_path)
    if grid is None:
        raise RuntimeError("ParaView could not open simulator collection '%s'" % pvd_path)
    _rename_source(simple, case_name + '_grid', grid)
    simple.Show(grid, view)
    _color_grid(simple, grid, view)
    scene = simple.GetAnimationScene()
    time_steps = list(scene.TimeKeeper.TimestepValues)
    if time_steps:
        scene.StartTime = time_steps[0]
        scene.EndTime = time_steps[-1]
        scene.PlayMode = 'Snap To TimeSteps'

    try:
        wells = simple.OpenDataFile(wells_path)
        if wells is None:
            raise RuntimeError("ParaView could not open sibling well file '%s'" % wells_path)
    except Exception as error:
        wells = None
        wells_error = error
    else:
        wells_error = None
    if wells is None:
        _show_warning('RVA Simulator Output',
                      "Loaded the reservoir grid, but could not open sibling wells.vtp: %s" %
                      (wells_error if wells_error is not None else wells_path))
        view.ResetCamera()
        simple.Render(view)
        simple.SetActiveSource(grid)
        return {'grid': grid, 'wells': None, 'well_sources': []}

    _rename_source(simple, case_name + '_wells_all', wells)
    wells.UpdatePipeline()
    simple.Show(wells, view)
    well_sources = []
    try:
        fetched_wells = servermanager.Fetch(wells)
        if fetched_wells is None:
            raise RuntimeError('ParaView could not fetch wells.vtp from the server')
        if not fetched_wells.IsA('vtkPolyData'):
            raise TypeError('wells.vtp produced %s instead of vtkPolyData' %
                            fetched_wells.GetClassName())
        metadata = _well_metadata(fetched_wells)
        for record in metadata:
            prepared = simple.ProgrammableFilter(Input=wells)
            prepared.Script = _extraction_script(record['well_id'])
            prepared.OutputDataSetType = 0  # vtkPolyData in ParaView 3.14.1.
            _rename_source(simple,
                           '%s_well_%s' % (case_name, record['name']), prepared)
            prepared.UpdatePipeline()
            simple.Show(prepared, view)
            _style_well(simple, prepared, view, record['well_type'])
            well_sources.append(prepared)
    except Exception as error:
        for prepared in well_sources:
            try:
                simple.Delete(prepared)
            except Exception:
                pass
        well_sources = []
        _show_warning('RVA Simulator Output',
                      'The combined well geometry was loaded, but per-well sources '
                      'could not be prepared: %s' % error)
    else:
        simple.Hide(wells, view)

    view.ResetCamera()
    simple.Render(view)
    simple.SetActiveSource(grid)
    return {'grid': grid, 'wells': wells, 'well_sources': well_sources}


def LoadSimulatorOutputFromHex(encoded_path):
    """Decode a C++-supplied UTF-8 path, display failures, and run the loader."""
    try:
        path = binascii.unhexlify(str(encoded_path)).decode('utf-8')
        return LoadSimulatorOutput(path)
    except Exception:
        details = traceback.format_exc()
        try:
            from PyQt4.QtGui import QMessageBox
            QMessageBox.critical(None, 'RVA Simulator Output', details)
        except Exception:
            print(details)
        return None
