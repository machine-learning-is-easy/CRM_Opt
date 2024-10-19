#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkSILBuilder_Init(vtkClientServerInterpreter*);
extern void vtkXdmfDataArray_Init(vtkClientServerInterpreter*);
extern void vtkXdmfReader_Init(vtkClientServerInterpreter*);
extern void vtkXdmfWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOXdmf2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSILBuilder_Init(csi);
  vtkXdmfDataArray_Init(csi);
  vtkXdmfReader_Init(csi);
  vtkXdmfWriter_Init(csi);
}
