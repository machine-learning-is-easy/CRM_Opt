#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkUpdateCellsV8toV9_Init(vtkClientServerInterpreter*);
extern void vtkAbstractParticleWriter_Init(vtkClientServerInterpreter*);
extern void vtkAbstractPolyDataReader_Init(vtkClientServerInterpreter*);
extern void vtkArrayDataReader_Init(vtkClientServerInterpreter*);
extern void vtkArrayDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkArrayReader_Init(vtkClientServerInterpreter*);
extern void vtkArrayWriter_Init(vtkClientServerInterpreter*);
extern void vtkASCIITextCodec_Init(vtkClientServerInterpreter*);
extern void vtkBase64InputStream_Init(vtkClientServerInterpreter*);
extern void vtkBase64OutputStream_Init(vtkClientServerInterpreter*);
extern void vtkBase64Utilities_Init(vtkClientServerInterpreter*);
extern void vtkDataCompressor_Init(vtkClientServerInterpreter*);
extern void vtkDelimitedTextWriter_Init(vtkClientServerInterpreter*);
extern void vtkFileResourceStream_Init(vtkClientServerInterpreter*);
extern void vtkGlobFileNames_Init(vtkClientServerInterpreter*);
extern void vtkInputStream_Init(vtkClientServerInterpreter*);
extern void vtkJavaScriptDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkLZ4DataCompressor_Init(vtkClientServerInterpreter*);
extern void vtkLZMADataCompressor_Init(vtkClientServerInterpreter*);
extern void vtkMemoryResourceStream_Init(vtkClientServerInterpreter*);
extern void vtkOutputStream_Init(vtkClientServerInterpreter*);
extern void vtkResourceParser_Init(vtkClientServerInterpreter*);
extern void vtkResourceStream_Init(vtkClientServerInterpreter*);
extern void vtkSortFileNames_Init(vtkClientServerInterpreter*);
extern void vtkTextCodec_Init(vtkClientServerInterpreter*);
extern void vtkTextCodecFactory_Init(vtkClientServerInterpreter*);
extern void vtkURI_Init(vtkClientServerInterpreter*);
extern void vtkURILoader_Init(vtkClientServerInterpreter*);
extern void vtkUTF16TextCodec_Init(vtkClientServerInterpreter*);
extern void vtkUTF8TextCodec_Init(vtkClientServerInterpreter*);
extern void vtkWriter_Init(vtkClientServerInterpreter*);
extern void vtkZLibDataCompressor_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkUpdateCellsV8toV9_Init(csi);
  vtkAbstractParticleWriter_Init(csi);
  vtkAbstractPolyDataReader_Init(csi);
  vtkArrayDataReader_Init(csi);
  vtkArrayDataWriter_Init(csi);
  vtkArrayReader_Init(csi);
  vtkArrayWriter_Init(csi);
  vtkASCIITextCodec_Init(csi);
  vtkBase64InputStream_Init(csi);
  vtkBase64OutputStream_Init(csi);
  vtkBase64Utilities_Init(csi);
  vtkDataCompressor_Init(csi);
  vtkDelimitedTextWriter_Init(csi);
  vtkFileResourceStream_Init(csi);
  vtkGlobFileNames_Init(csi);
  vtkInputStream_Init(csi);
  vtkJavaScriptDataWriter_Init(csi);
  vtkLZ4DataCompressor_Init(csi);
  vtkLZMADataCompressor_Init(csi);
  vtkMemoryResourceStream_Init(csi);
  vtkOutputStream_Init(csi);
  vtkResourceParser_Init(csi);
  vtkResourceStream_Init(csi);
  vtkSortFileNames_Init(csi);
  vtkTextCodec_Init(csi);
  vtkTextCodecFactory_Init(csi);
  vtkURI_Init(csi);
  vtkURILoader_Init(csi);
  vtkUTF16TextCodec_Init(csi);
  vtkUTF8TextCodec_Init(csi);
  vtkWriter_Init(csi);
  vtkZLibDataCompressor_Init(csi);
}
