#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkExtractSelectionRange_Init(vtkClientServerInterpreter*);
extern void vtkPConvertSelection_Init(vtkClientServerInterpreter*);
extern void vtkExtractCellsAlongLine_Init(vtkClientServerInterpreter*);
extern void vtkPVExtractCellsByType_Init(vtkClientServerInterpreter*);
extern void vtkPVExtractSelection_Init(vtkClientServerInterpreter*);
extern void vtkPVSelectionSource_Init(vtkClientServerInterpreter*);
extern void vtkPVSingleOutputExtractSelection_Init(vtkClientServerInterpreter*);
extern void vtkSelectArraysExtractBlocks_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsExtractionCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExtractSelectionRange_Init(csi);
  vtkPConvertSelection_Init(csi);
  vtkExtractCellsAlongLine_Init(csi);
  vtkPVExtractCellsByType_Init(csi);
  vtkPVExtractSelection_Init(csi);
  vtkPVSelectionSource_Init(csi);
  vtkPVSingleOutputExtractSelection_Init(csi);
  vtkSelectArraysExtractBlocks_Init(csi);
}
