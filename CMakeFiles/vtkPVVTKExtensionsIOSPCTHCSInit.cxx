#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkSpyPlotBlock_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotFileSeriesReader_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotHistoryReader_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotIStream_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotReader_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotReaderMap_Init(vtkClientServerInterpreter*);
extern void vtkSpyPlotUniReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOSPCTHCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSpyPlotBlock_Init(csi);
  vtkSpyPlotFileSeriesReader_Init(csi);
  vtkSpyPlotHistoryReader_Init(csi);
  vtkSpyPlotIStream_Init(csi);
  vtkSpyPlotReader_Init(csi);
  vtkSpyPlotReaderMap_Init(csi);
  vtkSpyPlotUniReader_Init(csi);
}
