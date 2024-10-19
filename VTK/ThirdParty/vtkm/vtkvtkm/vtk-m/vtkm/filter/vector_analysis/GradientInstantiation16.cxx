#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation16__;

template void vtkm::worklet::gradient::DeducedPointGrad<
  vtkm::cont::CoordinateSystem,
  vtkm::Vec3f_64,
  vtkm::cont::StorageTagCartesianProduct<vtkm::cont::StorageTagBasic,
                                         vtkm::cont::StorageTagBasic,
                                         vtkm::cont::StorageTagBasic>>::
operator()(const vtkm::cont::CellSetStructured<2>&) const;

#undef vtkm_GradientInstantiation
