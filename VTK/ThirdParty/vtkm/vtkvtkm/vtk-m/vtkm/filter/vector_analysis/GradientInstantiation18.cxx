#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation18__;

template void vtkm::worklet::gradient::DeducedPointGrad<
  vtkm::cont::CoordinateSystem,
  vtkm::Float32,
  vtkm::cont::StorageTagBasic>::operator()(const vtkm::cont::CellSetExplicit<>&) const;

#undef vtkm_GradientInstantiation
