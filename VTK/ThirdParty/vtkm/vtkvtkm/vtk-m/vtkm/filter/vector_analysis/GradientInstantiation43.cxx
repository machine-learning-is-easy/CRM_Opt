#ifndef vtkm_GradientInstantiation
#define vtkm_GradientInstantiation
#endif

#include <vtkm/filter/vector_analysis/worklet/Gradient.h>

/* Needed for linking errors when no instantiations */
int vtkm_GradientInstantiation43__;

template vtkm::cont::ArrayHandle<vtkm::Vec<vtkm::Vec3f_64, 3>>
vtkm::worklet::CellGradient::Run(
  const vtkm::cont::UnknownCellSet&,
  const vtkm::cont::CoordinateSystem&,
  const vtkm::cont::ArrayHandle<
    vtkm::Vec3f_64,
    vtkm::cont::StorageTagCartesianProduct<vtkm::cont::StorageTagBasic,
                                           vtkm::cont::StorageTagBasic,
                                           vtkm::cont::StorageTagBasic>>&,
  GradientOutputFields<vtkm::Vec3f_64>&);

#undef vtkm_GradientInstantiation
