#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAnnotatedCubeActor_Init(vtkClientServerInterpreter*);
extern void vtkArcPlotter_Init(vtkClientServerInterpreter*);
extern void vtkAxesActor_Init(vtkClientServerInterpreter*);
extern void vtkAxisActor_Init(vtkClientServerInterpreter*);
extern void vtkAxisActor2D_Init(vtkClientServerInterpreter*);
extern void vtkAxisFollower_Init(vtkClientServerInterpreter*);
extern void vtkBarChartActor_Init(vtkClientServerInterpreter*);
extern void vtkCaptionActor2D_Init(vtkClientServerInterpreter*);
extern void vtkConvexHull2D_Init(vtkClientServerInterpreter*);
extern void vtkCornerAnnotation_Init(vtkClientServerInterpreter*);
extern void vtkCubeAxesActor_Init(vtkClientServerInterpreter*);
extern void vtkCubeAxesActor2D_Init(vtkClientServerInterpreter*);
extern void vtkGraphAnnotationLayersFilter_Init(vtkClientServerInterpreter*);
extern void vtkLeaderActor2D_Init(vtkClientServerInterpreter*);
extern void vtkLegendBoxActor_Init(vtkClientServerInterpreter*);
extern void vtkLegendScaleActor_Init(vtkClientServerInterpreter*);
extern void vtkParallelCoordinatesActor_Init(vtkClientServerInterpreter*);
extern void vtkPieChartActor_Init(vtkClientServerInterpreter*);
extern void vtkPolarAxesActor_Init(vtkClientServerInterpreter*);
extern void vtkPolarAxesActor2D_Init(vtkClientServerInterpreter*);
extern void vtkProp3DAxisFollower_Init(vtkClientServerInterpreter*);
extern void vtkRadialGridActor2D_Init(vtkClientServerInterpreter*);
extern void vtkScalarBarActor_Init(vtkClientServerInterpreter*);
extern void vtkSpiderPlotActor_Init(vtkClientServerInterpreter*);
extern void vtkXYPlotActor_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingAnnotationCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAnnotatedCubeActor_Init(csi);
  vtkArcPlotter_Init(csi);
  vtkAxesActor_Init(csi);
  vtkAxisActor_Init(csi);
  vtkAxisActor2D_Init(csi);
  vtkAxisFollower_Init(csi);
  vtkBarChartActor_Init(csi);
  vtkCaptionActor2D_Init(csi);
  vtkConvexHull2D_Init(csi);
  vtkCornerAnnotation_Init(csi);
  vtkCubeAxesActor_Init(csi);
  vtkCubeAxesActor2D_Init(csi);
  vtkGraphAnnotationLayersFilter_Init(csi);
  vtkLeaderActor2D_Init(csi);
  vtkLegendBoxActor_Init(csi);
  vtkLegendScaleActor_Init(csi);
  vtkParallelCoordinatesActor_Init(csi);
  vtkPieChartActor_Init(csi);
  vtkPolarAxesActor_Init(csi);
  vtkPolarAxesActor2D_Init(csi);
  vtkProp3DAxisFollower_Init(csi);
  vtkRadialGridActor2D_Init(csi);
  vtkScalarBarActor_Init(csi);
  vtkSpiderPlotActor_Init(csi);
  vtkXYPlotActor_Init(csi);
}
