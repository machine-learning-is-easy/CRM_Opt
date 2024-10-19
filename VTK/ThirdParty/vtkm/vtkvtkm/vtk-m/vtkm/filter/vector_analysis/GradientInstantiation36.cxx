#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation36__;

template vtkm::cont::ArrayHandle<vtkm::Vec<vtkm::Float32, 3>>
vtkm::worklet::CellGradient::Run(
  const vtkm::cont::UnknownCellSet&,
  const vtkm::cont::CoordinateSystem&,
  const vtkm::cont::ArrayHandle<vtkm::Float32, vtkm::cont::StorageTagBasic>&,
  GradientOutputFields<vtkm::Float32>&);

#undef vtkm_GradientInstantiation
