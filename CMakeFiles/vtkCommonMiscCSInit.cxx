#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkContourValues_Init(vtkClientServerInterpreter*);
extern void vtkErrorCode_Init(vtkClientServerInterpreter*);
extern void vtkExprTkFunctionParser_Init(vtkClientServerInterpreter*);
extern void vtkFunctionParser_Init(vtkClientServerInterpreter*);
extern void vtkHeap_Init(vtkClientServerInterpreter*);
extern void vtkPolygonBuilder_Init(vtkClientServerInterpreter*);
extern void vtkResourceFileLocator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonMiscCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkContourValues_Init(csi);
  vtkErrorCode_Init(csi);
  vtkExprTkFunctionParser_Init(csi);
  vtkFunctionParser_Init(csi);
  vtkHeap_Init(csi);
  vtkPolygonBuilder_Init(csi);
  vtkResourceFileLocator_Init(csi);
}
