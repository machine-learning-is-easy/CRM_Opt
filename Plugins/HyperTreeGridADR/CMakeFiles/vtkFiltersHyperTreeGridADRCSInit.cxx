#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFunctor_Init(vtkClientServerInterpreter*);
extern void vtkAbstractAccumulator_Init(vtkClientServerInterpreter*);
extern void vtkAbstractArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkArithmeticMeanArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkEntropyArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkGeometricMeanArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkHarmonicMeanArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkMaxAccumulator_Init(vtkClientServerInterpreter*);
extern void vtkMaxArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkQuantileAccumulator_Init(vtkClientServerInterpreter*);
extern void vtkQuantileArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkResampleToHyperTreeGrid_Init(vtkClientServerInterpreter*);
extern void vtkStandardDeviationArrayMeasurement_Init(vtkClientServerInterpreter*);
extern void vtkArithmeticAccumulator_Init(vtkClientServerInterpreter*);
extern void vtkBinsAccumulator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersHyperTreeGridADRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFunctor_Init(csi);
  vtkAbstractAccumulator_Init(csi);
  vtkAbstractArrayMeasurement_Init(csi);
  vtkArithmeticMeanArrayMeasurement_Init(csi);
  vtkEntropyArrayMeasurement_Init(csi);
  vtkGeometricMeanArrayMeasurement_Init(csi);
  vtkHarmonicMeanArrayMeasurement_Init(csi);
  vtkMaxAccumulator_Init(csi);
  vtkMaxArrayMeasurement_Init(csi);
  vtkQuantileAccumulator_Init(csi);
  vtkQuantileArrayMeasurement_Init(csi);
  vtkResampleToHyperTreeGrid_Init(csi);
  vtkStandardDeviationArrayMeasurement_Init(csi);
  vtkArithmeticAccumulator_Init(csi);
  vtkBinsAccumulator_Init(csi);
}
