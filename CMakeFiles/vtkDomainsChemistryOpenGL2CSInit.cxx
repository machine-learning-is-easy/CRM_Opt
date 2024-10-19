#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOpenGLMoleculeMapper_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkDomainsChemistryOpenGL2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOpenGLMoleculeMapper_Init(csi);
}
