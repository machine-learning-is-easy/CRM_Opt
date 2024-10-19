#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCMLMoleculeReader_Init(vtkClientServerInterpreter*);
extern void vtkGaussianCubeReader_Init(vtkClientServerInterpreter*);
extern void vtkGaussianCubeReader2_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeReaderBase_Init(vtkClientServerInterpreter*);
extern void vtkPDBReader_Init(vtkClientServerInterpreter*);
extern void vtkVASPAnimationReader_Init(vtkClientServerInterpreter*);
extern void vtkVASPTessellationReader_Init(vtkClientServerInterpreter*);
extern void vtkXYZMolReader_Init(vtkClientServerInterpreter*);
extern void vtkXYZMolReader2_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOChemistryCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCMLMoleculeReader_Init(csi);
  vtkGaussianCubeReader_Init(csi);
  vtkGaussianCubeReader2_Init(csi);
  vtkMoleculeReaderBase_Init(csi);
  vtkPDBReader_Init(csi);
  vtkVASPAnimationReader_Init(csi);
  vtkVASPTessellationReader_Init(csi);
  vtkXYZMolReader_Init(csi);
  vtkXYZMolReader2_Init(csi);
}
