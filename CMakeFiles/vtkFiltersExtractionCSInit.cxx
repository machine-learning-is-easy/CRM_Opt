#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBlockSelector_Init(vtkClientServerInterpreter*);
extern void vtkConvertSelection_Init(vtkClientServerInterpreter*);
extern void vtkExpandMarkedElements_Init(vtkClientServerInterpreter*);
extern void vtkExtractBlock_Init(vtkClientServerInterpreter*);
extern void vtkExtractBlockUsingDataAssembly_Init(vtkClientServerInterpreter*);
extern void vtkExtractCellsByType_Init(vtkClientServerInterpreter*);
extern void vtkExtractDataArraysOverTime_Init(vtkClientServerInterpreter*);
extern void vtkExtractDataOverTime_Init(vtkClientServerInterpreter*);
extern void vtkExtractDataSets_Init(vtkClientServerInterpreter*);
extern void vtkExtractExodusGlobalTemporalVariables_Init(vtkClientServerInterpreter*);
extern void vtkExtractGeometry_Init(vtkClientServerInterpreter*);
extern void vtkExtractGrid_Init(vtkClientServerInterpreter*);
extern void vtkExtractLevel_Init(vtkClientServerInterpreter*);
extern void vtkExtractParticlesOverTime_Init(vtkClientServerInterpreter*);
extern void vtkExtractPolyDataGeometry_Init(vtkClientServerInterpreter*);
extern void vtkExtractRectilinearGrid_Init(vtkClientServerInterpreter*);
extern void vtkExtractSelectedArraysOverTime_Init(vtkClientServerInterpreter*);
extern void vtkExtractSelectedRows_Init(vtkClientServerInterpreter*);
extern void vtkExtractSelection_Init(vtkClientServerInterpreter*);
extern void vtkExtractTensorComponents_Init(vtkClientServerInterpreter*);
extern void vtkExtractTimeSteps_Init(vtkClientServerInterpreter*);
extern void vtkExtractUnstructuredGrid_Init(vtkClientServerInterpreter*);
extern void vtkExtractVectorComponents_Init(vtkClientServerInterpreter*);
extern void vtkFrustumSelector_Init(vtkClientServerInterpreter*);
extern void vtkHierarchicalDataExtractDataSets_Init(vtkClientServerInterpreter*);
extern void vtkHierarchicalDataExtractLevel_Init(vtkClientServerInterpreter*);
extern void vtkLocationSelector_Init(vtkClientServerInterpreter*);
extern void vtkProbeSelectedLocations_Init(vtkClientServerInterpreter*);
extern void vtkSelector_Init(vtkClientServerInterpreter*);
extern void vtkValueSelector_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersExtractionCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBlockSelector_Init(csi);
  vtkConvertSelection_Init(csi);
  vtkExpandMarkedElements_Init(csi);
  vtkExtractBlock_Init(csi);
  vtkExtractBlockUsingDataAssembly_Init(csi);
  vtkExtractCellsByType_Init(csi);
  vtkExtractDataArraysOverTime_Init(csi);
  vtkExtractDataOverTime_Init(csi);
  vtkExtractDataSets_Init(csi);
  vtkExtractExodusGlobalTemporalVariables_Init(csi);
  vtkExtractGeometry_Init(csi);
  vtkExtractGrid_Init(csi);
  vtkExtractLevel_Init(csi);
  vtkExtractParticlesOverTime_Init(csi);
  vtkExtractPolyDataGeometry_Init(csi);
  vtkExtractRectilinearGrid_Init(csi);
  vtkExtractSelectedArraysOverTime_Init(csi);
  vtkExtractSelectedRows_Init(csi);
  vtkExtractSelection_Init(csi);
  vtkExtractTensorComponents_Init(csi);
  vtkExtractTimeSteps_Init(csi);
  vtkExtractUnstructuredGrid_Init(csi);
  vtkExtractVectorComponents_Init(csi);
  vtkFrustumSelector_Init(csi);
  vtkHierarchicalDataExtractDataSets_Init(csi);
  vtkHierarchicalDataExtractLevel_Init(csi);
  vtkLocationSelector_Init(csi);
  vtkProbeSelectedLocations_Init(csi);
  vtkSelector_Init(csi);
  vtkValueSelector_Init(csi);
}
