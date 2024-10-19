#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkHDFReader_Init(vtkClientServerInterpreter*);
extern void vtkHDFWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOHDFCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkHDFReader_Init(csi);
  vtkHDFWriter_Init(csi);
}
