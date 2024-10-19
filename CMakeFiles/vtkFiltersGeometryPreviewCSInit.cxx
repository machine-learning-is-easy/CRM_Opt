#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOctreeImageToPointSetFilter_Init(vtkClientServerInterpreter*);
extern void vtkPointSetToOctreeImageFilter_Init(vtkClientServerInterpreter*);
extern void vtkPointSetStreamer_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersGeometryPreviewCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOctreeImageToPointSetFilter_Init(csi);
  vtkPointSetToOctreeImageFilter_Init(csi);
  vtkPointSetStreamer_Init(csi);
}
