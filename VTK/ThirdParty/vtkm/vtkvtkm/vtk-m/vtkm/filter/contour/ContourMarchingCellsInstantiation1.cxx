#ifndef vtkm_ContourMarchingCellsInstantiation
#define vtkm_ContourMarchingCellsInstantiation
#endif

#include <vtkm/filter/contour/worklet/ContourMarchingCells.h>

/* Needed for linking errors when no instantiations */
int vtkm_ContourMarchingCellsInstantiation1__;

template void vtkm::worklet::contour::DeduceCellType::operator()(
  const vtkm::cont::CellSetStructured<2>& cells,
  const vtkm::cont::CoordinateSystem& coordinateSystem,
  vtkm::cont::CellSetSingleType<>& outputCells,
  const std::vector<vtkm::Float64>& isovalues,
  const vtkm::cont::ArrayHandle<vtkm::Float64, vtkm::cont::StorageTagBasic>& input,
  vtkm::cont::ArrayHandle<vtkm::Vec3f>& vertices,
  vtkm::cont::ArrayHandle<vtkm::Vec3f>& normals,
  vtkm::worklet::contour::CommonState& sharedState) const;

#undef vtkm_ContourMarchingCellsInstantiation
