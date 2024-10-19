#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBlueObeliskData_Init(vtkClientServerInterpreter*);
extern void vtkBlueObeliskDataParser_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeMapper_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeToAtomBallFilter_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeToBondStickFilter_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeToLinesFilter_Init(vtkClientServerInterpreter*);
extern void vtkMoleculeToPolyDataFilter_Init(vtkClientServerInterpreter*);
extern void vtkPeriodicTable_Init(vtkClientServerInterpreter*);
extern void vtkPointSetToMoleculeFilter_Init(vtkClientServerInterpreter*);
extern void vtkProgrammableElectronicData_Init(vtkClientServerInterpreter*);
extern void vtkProteinRibbonFilter_Init(vtkClientServerInterpreter*);
extern void vtkSimpleBondPerceiver_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkDomainsChemistryCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBlueObeliskData_Init(csi);
  vtkBlueObeliskDataParser_Init(csi);
  vtkMoleculeMapper_Init(csi);
  vtkMoleculeToAtomBallFilter_Init(csi);
  vtkMoleculeToBondStickFilter_Init(csi);
  vtkMoleculeToLinesFilter_Init(csi);
  vtkMoleculeToPolyDataFilter_Init(csi);
  vtkPeriodicTable_Init(csi);
  vtkPointSetToMoleculeFilter_Init(csi);
  vtkProgrammableElectronicData_Init(csi);
  vtkProteinRibbonFilter_Init(csi);
  vtkSimpleBondPerceiver_Init(csi);
}
