#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAMRBaseParticlesReader_Init(vtkClientServerInterpreter*);
extern void vtkAMRBaseReader_Init(vtkClientServerInterpreter*);
extern void vtkAMRDataSetCache_Init(vtkClientServerInterpreter*);
extern void vtkAMREnzoParticlesReader_Init(vtkClientServerInterpreter*);
extern void vtkAMREnzoReader_Init(vtkClientServerInterpreter*);
extern void vtkAMReXGridReader_Init(vtkClientServerInterpreter*);
extern void vtkAMReXParticlesReader_Init(vtkClientServerInterpreter*);
extern void vtkAMRFlashParticlesReader_Init(vtkClientServerInterpreter*);
extern void vtkAMRFlashReader_Init(vtkClientServerInterpreter*);
extern void vtkAMRVelodyneReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOAMRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAMRBaseParticlesReader_Init(csi);
  vtkAMRBaseReader_Init(csi);
  vtkAMRDataSetCache_Init(csi);
  vtkAMREnzoParticlesReader_Init(csi);
  vtkAMREnzoReader_Init(csi);
  vtkAMReXGridReader_Init(csi);
  vtkAMReXParticlesReader_Init(csi);
  vtkAMRFlashParticlesReader_Init(csi);
  vtkAMRFlashReader_Init(csi);
  vtkAMRVelodyneReader_Init(csi);
}
