#ifndef vtkm_ArrayRangeComputeTemplateInstantiation
#define vtkm_ArrayRangeComputeTemplateInstantiation
#endif

#include <vtkm/cont/ArrayRangeComputeTemplateInstantiationsIncludes.h>

/* Needed for linking errors when no instantiations */
int vtkm_ArrayRangeComputeTemplateInstantiation8__;

VTK_M_ARRAY_RANGE_COMPUTE_FLOAT_VECN(template VTKM_CONT_EXPORT,
                                     3,
                                     StorageTagXGCCoordinates);

#undef vtkm_ArrayRangeComputeTemplateInstantiation
