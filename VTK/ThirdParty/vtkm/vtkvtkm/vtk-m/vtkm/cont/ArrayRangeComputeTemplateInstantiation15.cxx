#ifndef vtkm_ArrayRangeComputeTemplateInstantiation
#define vtkm_ArrayRangeComputeTemplateInstantiation
#endif

#include <vtkm/cont/ArrayRangeComputeTemplateInstantiationsIncludes.h>

/* Needed for linking errors when no instantiations */
int vtkm_ArrayRangeComputeTemplateInstantiation15__;

VTK_M_ARRAY_RANGE_COMPUTE_INT_VECN(template VTKM_CONT_EXPORT,
                                   3,
                                   vtkm::cont::StorageTagCounting);
VTK_M_ARRAY_RANGE_COMPUTE_FLOAT_VECN(template VTKM_CONT_EXPORT,
                                     3,
                                     vtkm::cont::StorageTagCounting);
VTK_M_ARRAY_RANGE_COMPUTE_OTHER_VECN(template VTKM_CONT_EXPORT,
                                     3,
                                     vtkm::cont::StorageTagCounting);

#undef vtkm_ArrayRangeComputeTemplateInstantiation
