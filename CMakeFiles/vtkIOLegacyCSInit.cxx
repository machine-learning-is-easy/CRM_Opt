#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCompositeDataReader_Init(vtkClientServerInterpreter*);
extern void vtkCompositeDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkDataObjectReader_Init(vtkClientServerInterpreter*);
extern void vtkDataObjectWriter_Init(vtkClientServerInterpreter*);
extern void vtkDataReader_Init(vtkClientServerInterpreter*);
extern void vtkDataSetReader_Init(vtkClientServerInterpreter*);
extern void vtkDataSetWriter_Init(vtkClientServerInterpreter*);
extern void vtkDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkGenericDataObjectReader_Init(vtkClientServerInterpreter*);
extern void vtkGenericDataObjectWriter_Init(vtkClientServerInterpreter*);
extern void vtkGraphReader_Init(vtkClientServerInterpreter*);
extern void vtkGraphWriter_Init(vtkClientServerInterpreter*);
extern void vtkLegacyCellGridReader_Init(vtkClientServerInterpreter*);
extern void vtkLegacyCellGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkPixelExtentIO_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataReader_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkRectilinearGridReader_Init(vtkClientServerInterpreter*);
extern void vtkRectilinearGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkSimplePointsReader_Init(vtkClientServerInterpreter*);
extern void vtkSimplePointsWriter_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridReader_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkStructuredPointsReader_Init(vtkClientServerInterpreter*);
extern void vtkStructuredPointsWriter_Init(vtkClientServerInterpreter*);
extern void vtkTableReader_Init(vtkClientServerInterpreter*);
extern void vtkTableWriter_Init(vtkClientServerInterpreter*);
extern void vtkTreeReader_Init(vtkClientServerInterpreter*);
extern void vtkTreeWriter_Init(vtkClientServerInterpreter*);
extern void vtkUnstructuredGridReader_Init(vtkClientServerInterpreter*);
extern void vtkUnstructuredGridWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOLegacyCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCompositeDataReader_Init(csi);
  vtkCompositeDataWriter_Init(csi);
  vtkDataObjectReader_Init(csi);
  vtkDataObjectWriter_Init(csi);
  vtkDataReader_Init(csi);
  vtkDataSetReader_Init(csi);
  vtkDataSetWriter_Init(csi);
  vtkDataWriter_Init(csi);
  vtkGenericDataObjectReader_Init(csi);
  vtkGenericDataObjectWriter_Init(csi);
  vtkGraphReader_Init(csi);
  vtkGraphWriter_Init(csi);
  vtkLegacyCellGridReader_Init(csi);
  vtkLegacyCellGridWriter_Init(csi);
  vtkPixelExtentIO_Init(csi);
  vtkPolyDataReader_Init(csi);
  vtkPolyDataWriter_Init(csi);
  vtkRectilinearGridReader_Init(csi);
  vtkRectilinearGridWriter_Init(csi);
  vtkSimplePointsReader_Init(csi);
  vtkSimplePointsWriter_Init(csi);
  vtkStructuredGridReader_Init(csi);
  vtkStructuredGridWriter_Init(csi);
  vtkStructuredPointsReader_Init(csi);
  vtkStructuredPointsWriter_Init(csi);
  vtkTableReader_Init(csi);
  vtkTableWriter_Init(csi);
  vtkTreeReader_Init(csi);
  vtkTreeWriter_Init(csi);
  vtkUnstructuredGridReader_Init(csi);
  vtkUnstructuredGridWriter_Init(csi);
}
