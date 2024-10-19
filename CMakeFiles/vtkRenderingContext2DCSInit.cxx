#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAbstractContextBufferId_Init(vtkClientServerInterpreter*);
extern void vtkAbstractContextItem_Init(vtkClientServerInterpreter*);
extern void vtkBlockItem_Init(vtkClientServerInterpreter*);
extern void vtkBrush_Init(vtkClientServerInterpreter*);
extern void vtkContext2D_Init(vtkClientServerInterpreter*);
extern void vtkContext3D_Init(vtkClientServerInterpreter*);
extern void vtkContextActor_Init(vtkClientServerInterpreter*);
extern void vtkContextClip_Init(vtkClientServerInterpreter*);
extern void vtkContextDevice2D_Init(vtkClientServerInterpreter*);
extern void vtkContextDevice3D_Init(vtkClientServerInterpreter*);
extern void vtkContextItem_Init(vtkClientServerInterpreter*);
extern void vtkContextKeyEvent_Init(vtkClientServerInterpreter*);
extern void vtkContextMapper2D_Init(vtkClientServerInterpreter*);
extern void vtkContextMouseEvent_Init(vtkClientServerInterpreter*);
extern void vtkContextScene_Init(vtkClientServerInterpreter*);
extern void vtkContextTransform_Init(vtkClientServerInterpreter*);
extern void vtkImageItem_Init(vtkClientServerInterpreter*);
extern void vtkLabeledContourPolyDataItem_Init(vtkClientServerInterpreter*);
extern void vtkMarkerUtilities_Init(vtkClientServerInterpreter*);
extern void vtkPen_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataItem_Init(vtkClientServerInterpreter*);
extern void vtkPropItem_Init(vtkClientServerInterpreter*);
extern void vtkTooltipItem_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingContext2DCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAbstractContextBufferId_Init(csi);
  vtkAbstractContextItem_Init(csi);
  vtkBlockItem_Init(csi);
  vtkBrush_Init(csi);
  vtkContext2D_Init(csi);
  vtkContext3D_Init(csi);
  vtkContextActor_Init(csi);
  vtkContextClip_Init(csi);
  vtkContextDevice2D_Init(csi);
  vtkContextDevice3D_Init(csi);
  vtkContextItem_Init(csi);
  vtkContextKeyEvent_Init(csi);
  vtkContextMapper2D_Init(csi);
  vtkContextMouseEvent_Init(csi);
  vtkContextScene_Init(csi);
  vtkContextTransform_Init(csi);
  vtkImageItem_Init(csi);
  vtkLabeledContourPolyDataItem_Init(csi);
  vtkMarkerUtilities_Init(csi);
  vtkPen_Init(csi);
  vtkPolyDataItem_Init(csi);
  vtkPropItem_Init(csi);
  vtkTooltipItem_Init(csi);
}
