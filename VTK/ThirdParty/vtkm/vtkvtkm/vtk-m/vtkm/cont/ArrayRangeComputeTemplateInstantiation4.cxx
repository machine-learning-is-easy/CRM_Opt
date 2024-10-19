#ifndef vtkm_ArrayRangeComputeTemplateInstantiation
#define vtkm_ArrayRangeComputeTemplateInstantiation
#endif

#include <vtkm/cont/ArrayRangeComputeTemplateInstantiationsIncludes.h>

/* Needed for linking errors when no instantiations */
int vtkm_ArrayRangeComputeTemplateInstantiation4__;

VTK_M_ARRAY_RANGE_COMPUTE_ALL_VECN(template VTKM_CONT_EXPORT,
                                   2,
                                   vtkm::cont::StorageTagSOA);

#undef vtkm_ArrayRangeComputeTemplateInstantiation
