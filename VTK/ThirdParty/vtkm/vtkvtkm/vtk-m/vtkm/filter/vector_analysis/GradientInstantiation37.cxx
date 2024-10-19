#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation37__;

template vtkm::cont::ArrayHandle<vtkm::Vec<vtkm::Float64, 3>>
vtkm::worklet::CellGradient::Run(
  const vtkm::cont::UnknownCellSet&,
  const vtkm::cont::CoordinateSystem&,
  const vtkm::cont::ArrayHandle<vtkm::Float64, vtkm::cont::StorageTagBasic>&,
  GradientOutputFields<vtkm::Float64>&);

#undef vtkm_GradientInstantiation
