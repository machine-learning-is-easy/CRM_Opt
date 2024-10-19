#ifndef vtkm_ArrayRangeComputeTemplateInstantiation
#define vtkm_ArrayRangeComputeTemplateInstantiation
#endif

#include <vtkm/cont/ArrayRangeComputeTemplateInstantiationsIncludes.h>

/* Needed for linking errors when no instantiations */
int vtkm_ArrayRangeComputeTemplateInstantiation9__;

VTK_M_ARRAY_RANGE_COMPUTE_ALL_SCALARS(template VTKM_CONT_EXPORT,
                                      vtkm::cont::StorageTagConstant);

#undef vtkm_ArrayRangeComputeTemplateInstantiation
