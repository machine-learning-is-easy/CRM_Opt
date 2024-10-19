#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMPASReader_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFCAMReader_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFCFReader_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFCFWriter_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFPOPReader_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFReader_Init(vtkClientServerInterpreter*);
extern void vtkNetCDFUGRIDReader_Init(vtkClientServerInterpreter*);
extern void vtkSLACParticleReader_Init(vtkClientServerInterpreter*);
extern void vtkSLACReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIONetCDFCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMPASReader_Init(csi);
  vtkNetCDFCAMReader_Init(csi);
  vtkNetCDFCFReader_Init(csi);
  vtkNetCDFCFWriter_Init(csi);
  vtkNetCDFPOPReader_Init(csi);
  vtkNetCDFReader_Init(csi);
  vtkNetCDFUGRIDReader_Init(csi);
  vtkSLACParticleReader_Init(csi);
  vtkSLACReader_Init(csi);
}
