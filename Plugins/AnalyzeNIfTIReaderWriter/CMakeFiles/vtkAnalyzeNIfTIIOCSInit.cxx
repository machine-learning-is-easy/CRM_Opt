#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAnalyzeReader_Init(vtkClientServerInterpreter*);
extern void vtkAnalyzeWriter_Init(vtkClientServerInterpreter*);
extern void vtkNIfTIReader_Init(vtkClientServerInterpreter*);
extern void vtkNIfTIWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkAnalyzeNIfTIIOCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAnalyzeReader_Init(csi);
  vtkAnalyzeWriter_Init(csi);
  vtkNIfTIReader_Init(csi);
  vtkNIfTIWriter_Init(csi);
}
