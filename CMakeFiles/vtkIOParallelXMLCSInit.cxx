#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkXMLCompositeDataSetWriterHelper_Init(vtkClientServerInterpreter*);
extern void vtkXMLDataWriterHelper_Init(vtkClientServerInterpreter*);
extern void vtkXMLPartitionedDataSetCollectionWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPartitionedDataSetWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLWriter2_Init(vtkClientServerInterpreter*);
extern void vtkXMLPDataObjectWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPDataSetWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPHierarchicalBoxDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPHyperTreeGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPImageDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPMultiBlockDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPPolyDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPRectilinearGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPStructuredDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPStructuredGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPTableWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPUniformGridAMRWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPUnstructuredDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLPUnstructuredGridWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOParallelXMLCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkXMLCompositeDataSetWriterHelper_Init(csi);
  vtkXMLDataWriterHelper_Init(csi);
  vtkXMLPartitionedDataSetCollectionWriter_Init(csi);
  vtkXMLPartitionedDataSetWriter_Init(csi);
  vtkXMLWriter2_Init(csi);
  vtkXMLPDataObjectWriter_Init(csi);
  vtkXMLPDataSetWriter_Init(csi);
  vtkXMLPDataWriter_Init(csi);
  vtkXMLPHierarchicalBoxDataWriter_Init(csi);
  vtkXMLPHyperTreeGridWriter_Init(csi);
  vtkXMLPImageDataWriter_Init(csi);
  vtkXMLPMultiBlockDataWriter_Init(csi);
  vtkXMLPPolyDataWriter_Init(csi);
  vtkXMLPRectilinearGridWriter_Init(csi);
  vtkXMLPStructuredDataWriter_Init(csi);
  vtkXMLPStructuredGridWriter_Init(csi);
  vtkXMLPTableWriter_Init(csi);
  vtkXMLPUniformGridAMRWriter_Init(csi);
  vtkXMLPUnstructuredDataWriter_Init(csi);
  vtkXMLPUnstructuredGridWriter_Init(csi);
}
