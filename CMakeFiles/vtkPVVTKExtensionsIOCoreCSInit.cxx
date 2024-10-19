#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAdditionalFieldReader_Init(vtkClientServerInterpreter*);
extern void vtkCSVWriter_Init(vtkClientServerInterpreter*);
extern void vtkFileSeriesReader_Init(vtkClientServerInterpreter*);
extern void vtkFileSeriesWriter_Init(vtkClientServerInterpreter*);
extern void vtkMetaReader_Init(vtkClientServerInterpreter*);
extern void vtkParallelSerialWriter_Init(vtkClientServerInterpreter*);
extern void vtkPVDReader_Init(vtkClientServerInterpreter*);
extern void vtkStringReader_Init(vtkClientServerInterpreter*);
extern void vtkStringWriter_Init(vtkClientServerInterpreter*);
extern void vtkXMLCollectionReader_Init(vtkClientServerInterpreter*);
extern void vtkXMLPVDWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAdditionalFieldReader_Init(csi);
  vtkCSVWriter_Init(csi);
  vtkFileSeriesReader_Init(csi);
  vtkFileSeriesWriter_Init(csi);
  vtkMetaReader_Init(csi);
  vtkParallelSerialWriter_Init(csi);
  vtkPVDReader_Init(csi);
  vtkStringReader_Init(csi);
  vtkStringWriter_Init(csi);
  vtkXMLCollectionReader_Init(csi);
  vtkXMLPVDWriter_Init(csi);
}
