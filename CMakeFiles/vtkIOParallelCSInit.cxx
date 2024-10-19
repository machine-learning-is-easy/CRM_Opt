#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkEnSightWriter_Init(vtkClientServerInterpreter*);
extern void vtkMultiBlockPLOT3DReader_Init(vtkClientServerInterpreter*);
extern void vtkNek5000Reader_Init(vtkClientServerInterpreter*);
extern void vtkPChacoReader_Init(vtkClientServerInterpreter*);
extern void vtkPDataSetReader_Init(vtkClientServerInterpreter*);
extern void vtkPDataSetWriter_Init(vtkClientServerInterpreter*);
extern void vtkPImageWriter_Init(vtkClientServerInterpreter*);
extern void vtkPlot3DMetaReader_Init(vtkClientServerInterpreter*);
extern void vtkPOpenFOAMReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOParallelCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkEnSightWriter_Init(csi);
  vtkMultiBlockPLOT3DReader_Init(csi);
  vtkNek5000Reader_Init(csi);
  vtkPChacoReader_Init(csi);
  vtkPDataSetReader_Init(csi);
  vtkPDataSetWriter_Init(csi);
  vtkPImageWriter_Init(csi);
  vtkPlot3DMetaReader_Init(csi);
  vtkPOpenFOAMReader_Init(csi);
}
