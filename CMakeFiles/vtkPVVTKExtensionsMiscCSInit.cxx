#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAppendRectilinearGrid_Init(vtkClientServerInterpreter*);
extern void vtkAttributeDataReductionFilter_Init(vtkClientServerInterpreter*);
extern void vtkCleanArrays_Init(vtkClientServerInterpreter*);
extern void vtkCompleteArrays_Init(vtkClientServerInterpreter*);
extern void vtkEnvironmentAnnotationFilter_Init(vtkClientServerInterpreter*);
extern void vtkMergeBlocks_Init(vtkClientServerInterpreter*);
extern void vtkMinMax_Init(vtkClientServerInterpreter*);
extern void vtkPExtractHistogram_Init(vtkClientServerInterpreter*);
extern void vtkPVExtractHistogram2D_Init(vtkClientServerInterpreter*);
extern void vtkPVBox_Init(vtkClientServerInterpreter*);
extern void vtkPVChangeOfBasisHelper_Init(vtkClientServerInterpreter*);
extern void vtkPVCylinder_Init(vtkClientServerInterpreter*);
extern void vtkPVMergeTables_Init(vtkClientServerInterpreter*);
extern void vtkPVMergeTablesMultiBlock_Init(vtkClientServerInterpreter*);
extern void vtkPVPlane_Init(vtkClientServerInterpreter*);
extern void vtkPVTransform_Init(vtkClientServerInterpreter*);
extern void vtkPVRotateAroundOriginTransform_Init(vtkClientServerInterpreter*);
extern void vtkReductionFilter_Init(vtkClientServerInterpreter*);
extern void vtkSelectionSerializer_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsMiscCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAppendRectilinearGrid_Init(csi);
  vtkAttributeDataReductionFilter_Init(csi);
  vtkCleanArrays_Init(csi);
  vtkCompleteArrays_Init(csi);
  vtkEnvironmentAnnotationFilter_Init(csi);
  vtkMergeBlocks_Init(csi);
  vtkMinMax_Init(csi);
  vtkPExtractHistogram_Init(csi);
  vtkPVExtractHistogram2D_Init(csi);
  vtkPVBox_Init(csi);
  vtkPVChangeOfBasisHelper_Init(csi);
  vtkPVCylinder_Init(csi);
  vtkPVMergeTables_Init(csi);
  vtkPVMergeTablesMultiBlock_Init(csi);
  vtkPVPlane_Init(csi);
  vtkPVTransform_Init(csi);
  vtkPVRotateAroundOriginTransform_Init(csi);
  vtkReductionFilter_Init(csi);
  vtkSelectionSerializer_Init(csi);
}
