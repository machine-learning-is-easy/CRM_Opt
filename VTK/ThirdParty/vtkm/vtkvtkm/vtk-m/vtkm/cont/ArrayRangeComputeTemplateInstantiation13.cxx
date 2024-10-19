#ifndef vtkm_ArrayRangeComputeTemplateInstantiation
#define vtkm_ArrayRangeComputeTemplateInstantiation
#endif

#include <vtkm/cont/ArrayRangeComputeTemplateInstantiationsIncludes.h>

/* Needed for linking errors when no instantiations */
int vtkm_ArrayRangeComputeTemplateInstantiation13__;

VTK_M_ARRAY_RANGE_COMPUTE_INT_SCALARS(template VTKM_CONT_EXPORT,
                                      vtkm::cont::StorageTagCounting);
VTK_M_ARRAY_RANGE_COMPUTE_FLOAT_SCALARS(template VTKM_CONT_EXPORT,
                                        vtkm::cont::StorageTagCounting);
VTK_M_ARRAY_RANGE_COMPUTE_OTHER_SCALARS(template VTKM_CONT_EXPORT,
                                        vtkm::cont::StorageTagCounting);

#undef vtkm_ArrayRangeComputeTemplateInstantiation
