#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFiltersCellGrid_Init(vtkClientServerInterpreter*);
extern void vtkCellGridComputeSides_Init(vtkClientServerInterpreter*);
extern void vtkCellGridElevation_Init(vtkClientServerInterpreter*);
extern void vtkCellGridPointProbe_Init(vtkClientServerInterpreter*);
extern void vtkUnstructuredGridToCellGrid_Init(vtkClientServerInterpreter*);
extern void vtkCellGridElevationQuery_Init(vtkClientServerInterpreter*);
extern void vtkDGBoundsResponder_Init(vtkClientServerInterpreter*);
extern void vtkDGCopyResponder_Init(vtkClientServerInterpreter*);
extern void vtkDGElevationResponder_Init(vtkClientServerInterpreter*);
extern void vtkDGEvaluator_Init(vtkClientServerInterpreter*);
extern void vtkDGRangeResponder_Init(vtkClientServerInterpreter*);
extern void vtkDGSidesResponder_Init(vtkClientServerInterpreter*);
extern void vtkDGTranscribeUnstructuredCells_Init(vtkClientServerInterpreter*);
extern void vtkInterpolateCalculator_Init(vtkClientServerInterpreter*);
extern void vtkCellAttributeInformation_Init(vtkClientServerInterpreter*);
extern void vtkDGInterpolateCalculator_Init(vtkClientServerInterpreter*);
extern void vtkDGAttributeInformation_Init(vtkClientServerInterpreter*);
extern void vtkDGCell_Init(vtkClientServerInterpreter*);
extern void vtkDGEdge_Init(vtkClientServerInterpreter*);
extern void vtkDGHex_Init(vtkClientServerInterpreter*);
extern void vtkDGPyr_Init(vtkClientServerInterpreter*);
extern void vtkDGQuad_Init(vtkClientServerInterpreter*);
extern void vtkDGTet_Init(vtkClientServerInterpreter*);
extern void vtkDGTri_Init(vtkClientServerInterpreter*);
extern void vtkDGVert_Init(vtkClientServerInterpreter*);
extern void vtkDGWdg_Init(vtkClientServerInterpreter*);
extern void vtkDeRhamCell_Init(vtkClientServerInterpreter*);
extern void vtkDGConstantOperators_Init(vtkClientServerInterpreter*);
extern void vtkDGHGradOperators_Init(vtkClientServerInterpreter*);
extern void vtkDGHCurlOperators_Init(vtkClientServerInterpreter*);
extern void vtkDGHDivOperators_Init(vtkClientServerInterpreter*);
extern void vtkDGOperatorEntry_Init(vtkClientServerInterpreter*);
extern void vtkDGInvokeOperator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersCellGridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFiltersCellGrid_Init(csi);
  vtkCellGridComputeSides_Init(csi);
  vtkCellGridElevation_Init(csi);
  vtkCellGridPointProbe_Init(csi);
  vtkUnstructuredGridToCellGrid_Init(csi);
  vtkCellGridElevationQuery_Init(csi);
  vtkDGBoundsResponder_Init(csi);
  vtkDGCopyResponder_Init(csi);
  vtkDGElevationResponder_Init(csi);
  vtkDGEvaluator_Init(csi);
  vtkDGRangeResponder_Init(csi);
  vtkDGSidesResponder_Init(csi);
  vtkDGTranscribeUnstructuredCells_Init(csi);
  vtkInterpolateCalculator_Init(csi);
  vtkCellAttributeInformation_Init(csi);
  vtkDGInterpolateCalculator_Init(csi);
  vtkDGAttributeInformation_Init(csi);
  vtkDGCell_Init(csi);
  vtkDGEdge_Init(csi);
  vtkDGHex_Init(csi);
  vtkDGPyr_Init(csi);
  vtkDGQuad_Init(csi);
  vtkDGTet_Init(csi);
  vtkDGTri_Init(csi);
  vtkDGVert_Init(csi);
  vtkDGWdg_Init(csi);
  vtkDeRhamCell_Init(csi);
  vtkDGConstantOperators_Init(csi);
  vtkDGHGradOperators_Init(csi);
  vtkDGHCurlOperators_Init(csi);
  vtkDGHDivOperators_Init(csi);
  vtkDGOperatorEntry_Init(csi);
  vtkDGInvokeOperator_Init(csi);
}
