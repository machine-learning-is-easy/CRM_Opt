#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation31__;

template void vtkm::worklet::gradient::DeducedPointGrad<
  vtkm::cont::CoordinateSystem,
  vtkm::Vec3f_32,
  vtkm::cont::StorageTagSOA>::operator()(const vtkm::cont::CellSetSingleType<>&) const;

#undef vtkm_GradientInstantiation
