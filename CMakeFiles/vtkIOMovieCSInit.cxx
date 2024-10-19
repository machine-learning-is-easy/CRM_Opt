#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkIOMovieConfigure_Init(vtkClientServerInterpreter*);
extern void vtkGenericMovieWriter_Init(vtkClientServerInterpreter*);
extern void vtkAVIWriter_Init(vtkClientServerInterpreter*);
extern void vtkMP4Writer_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOMovieCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkIOMovieConfigure_Init(csi);
  vtkGenericMovieWriter_Init(csi);
  vtkAVIWriter_Init(csi);
  vtkMP4Writer_Init(csi);
}
