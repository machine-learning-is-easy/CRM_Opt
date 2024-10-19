#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPrismGeometryRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkPrismGeometryRepresentationWithFaces_Init(vtkClientServerInterpreter*);
extern void vtkPrismSelectionRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkPrismView_Init(vtkClientServerInterpreter*);
extern void vtkSMPrismViewProxy_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPrismViewsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPrismGeometryRepresentation_Init(csi);
  vtkPrismGeometryRepresentationWithFaces_Init(csi);
  vtkPrismSelectionRepresentation_Init(csi);
  vtkPrismView_Init(csi);
  vtkSMPrismViewProxy_Init(csi);
}
