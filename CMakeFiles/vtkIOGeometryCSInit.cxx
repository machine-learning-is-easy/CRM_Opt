#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void GLTFSampler_Init(vtkClientServerInterpreter*);
extern void vtkAVSucdReader_Init(vtkClientServerInterpreter*);
extern void vtkBYUReader_Init(vtkClientServerInterpreter*);
extern void vtkBYUWriter_Init(vtkClientServerInterpreter*);
extern void vtkChacoReader_Init(vtkClientServerInterpreter*);
extern void vtkFacetWriter_Init(vtkClientServerInterpreter*);
extern void vtkFLUENTReader_Init(vtkClientServerInterpreter*);
extern void vtkGAMBITReader_Init(vtkClientServerInterpreter*);
extern void vtkGLTFDocumentLoader_Init(vtkClientServerInterpreter*);
extern void vtkGLTFReader_Init(vtkClientServerInterpreter*);
extern void vtkGLTFTexture_Init(vtkClientServerInterpreter*);
extern void vtkGLTFWriter_Init(vtkClientServerInterpreter*);
extern void vtkHoudiniPolyDataWriter_Init(vtkClientServerInterpreter*);
extern void vtkIVWriter_Init(vtkClientServerInterpreter*);
extern void vtkMCubesReader_Init(vtkClientServerInterpreter*);
extern void vtkMCubesWriter_Init(vtkClientServerInterpreter*);
extern void vtkMFIXReader_Init(vtkClientServerInterpreter*);
extern void vtkOBJReader_Init(vtkClientServerInterpreter*);
extern void vtkOBJWriter_Init(vtkClientServerInterpreter*);
extern void vtkOFFReader_Init(vtkClientServerInterpreter*);
extern void vtkOpenFOAMReader_Init(vtkClientServerInterpreter*);
extern void vtkParticleReader_Init(vtkClientServerInterpreter*);
extern void vtkProStarReader_Init(vtkClientServerInterpreter*);
extern void vtkPTSReader_Init(vtkClientServerInterpreter*);
extern void vtkSTLReader_Init(vtkClientServerInterpreter*);
extern void vtkSTLWriter_Init(vtkClientServerInterpreter*);
extern void vtkTecplotReader_Init(vtkClientServerInterpreter*);
extern void vtkWindBladeReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOGeometryCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  GLTFSampler_Init(csi);
  vtkAVSucdReader_Init(csi);
  vtkBYUReader_Init(csi);
  vtkBYUWriter_Init(csi);
  vtkChacoReader_Init(csi);
  vtkFacetWriter_Init(csi);
  vtkFLUENTReader_Init(csi);
  vtkGAMBITReader_Init(csi);
  vtkGLTFDocumentLoader_Init(csi);
  vtkGLTFReader_Init(csi);
  vtkGLTFTexture_Init(csi);
  vtkGLTFWriter_Init(csi);
  vtkHoudiniPolyDataWriter_Init(csi);
  vtkIVWriter_Init(csi);
  vtkMCubesReader_Init(csi);
  vtkMCubesWriter_Init(csi);
  vtkMFIXReader_Init(csi);
  vtkOBJReader_Init(csi);
  vtkOBJWriter_Init(csi);
  vtkOFFReader_Init(csi);
  vtkOpenFOAMReader_Init(csi);
  vtkParticleReader_Init(csi);
  vtkProStarReader_Init(csi);
  vtkPTSReader_Init(csi);
  vtkSTLReader_Init(csi);
  vtkSTLWriter_Init(csi);
  vtkTecplotReader_Init(csi);
  vtkWindBladeReader_Init(csi);
}
