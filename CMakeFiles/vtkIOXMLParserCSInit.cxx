#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkXMLDataParser_Init(vtkClientServerInterpreter*);
extern void vtkXMLParser_Init(vtkClientServerInterpreter*);
extern void vtkXMLUtilities_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOXMLParserCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkXMLDataParser_Init(csi);
  vtkXMLParser_Init(csi);
  vtkXMLUtilities_Init(csi);
}
