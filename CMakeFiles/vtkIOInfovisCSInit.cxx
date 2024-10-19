#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBiomTableReader_Init(vtkClientServerInterpreter*);
extern void vtkChacoGraphReader_Init(vtkClientServerInterpreter*);
extern void vtkDelimitedTextReader_Init(vtkClientServerInterpreter*);
extern void vtkDIMACSGraphReader_Init(vtkClientServerInterpreter*);
extern void vtkDIMACSGraphWriter_Init(vtkClientServerInterpreter*);
extern void vtkFixedWidthTextReader_Init(vtkClientServerInterpreter*);
extern void vtkISIReader_Init(vtkClientServerInterpreter*);
extern void vtkMultiNewickTreeReader_Init(vtkClientServerInterpreter*);
extern void vtkNewickTreeReader_Init(vtkClientServerInterpreter*);
extern void vtkNewickTreeWriter_Init(vtkClientServerInterpreter*);
extern void vtkPhyloXMLTreeReader_Init(vtkClientServerInterpreter*);
extern void vtkPhyloXMLTreeWriter_Init(vtkClientServerInterpreter*);
extern void vtkRISReader_Init(vtkClientServerInterpreter*);
extern void vtkTemporalDelimitedTextReader_Init(vtkClientServerInterpreter*);
extern void vtkTulipReader_Init(vtkClientServerInterpreter*);
extern void vtkXGMLReader_Init(vtkClientServerInterpreter*);
extern void vtkXMLTreeReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOInfovisCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBiomTableReader_Init(csi);
  vtkChacoGraphReader_Init(csi);
  vtkDelimitedTextReader_Init(csi);
  vtkDIMACSGraphReader_Init(csi);
  vtkDIMACSGraphWriter_Init(csi);
  vtkFixedWidthTextReader_Init(csi);
  vtkISIReader_Init(csi);
  vtkMultiNewickTreeReader_Init(csi);
  vtkNewickTreeReader_Init(csi);
  vtkNewickTreeWriter_Init(csi);
  vtkPhyloXMLTreeReader_Init(csi);
  vtkPhyloXMLTreeWriter_Init(csi);
  vtkRISReader_Init(csi);
  vtkTemporalDelimitedTextReader_Init(csi);
  vtkTulipReader_Init(csi);
  vtkXGMLReader_Init(csi);
  vtkXMLTreeReader_Init(csi);
}
