#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFreeTypeStringToImage_Init(vtkClientServerInterpreter*);
extern void vtkFreeTypeTools_Init(vtkClientServerInterpreter*);
extern void vtkMathTextFreeTypeTextRenderer_Init(vtkClientServerInterpreter*);
extern void vtkMathTextUtilities_Init(vtkClientServerInterpreter*);
extern void vtkScaledTextActor_Init(vtkClientServerInterpreter*);
extern void vtkTextRendererStringToImage_Init(vtkClientServerInterpreter*);
extern void vtkVectorText_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingFreeTypeCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFreeTypeStringToImage_Init(csi);
  vtkFreeTypeTools_Init(csi);
  vtkMathTextFreeTypeTextRenderer_Init(csi);
  vtkMathTextUtilities_Init(csi);
  vtkScaledTextActor_Init(csi);
  vtkTextRendererStringToImage_Init(csi);
  vtkVectorText_Init(csi);
}
