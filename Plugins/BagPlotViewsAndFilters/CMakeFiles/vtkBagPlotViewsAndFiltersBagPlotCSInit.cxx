#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVExtractBagPlots_Init(vtkClientServerInterpreter*);
extern void vtkSMFunctionalBagChartSeriesSelectionDomain_Init(vtkClientServerInterpreter*);
extern void vtkSMBagChartSeriesListDomain_Init(vtkClientServerInterpreter*);
extern void vtkPVBagChartRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkPVBagPlotMatrixView_Init(vtkClientServerInterpreter*);
extern void vtkPVBagPlotMatrixRepresentation_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkBagPlotViewsAndFiltersBagPlotCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVExtractBagPlots_Init(csi);
  vtkSMFunctionalBagChartSeriesSelectionDomain_Init(csi);
  vtkSMBagChartSeriesListDomain_Init(csi);
  vtkPVBagChartRepresentation_Init(csi);
  vtkPVBagPlotMatrixView_Init(csi);
  vtkPVBagPlotMatrixRepresentation_Init(csi);
}
