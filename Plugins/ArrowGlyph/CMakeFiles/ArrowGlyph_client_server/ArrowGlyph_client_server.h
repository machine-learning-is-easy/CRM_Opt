#ifndef ArrowGlyph_client_server_h
#define ArrowGlyph_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkArrowGlyphFilterCS_Initialize(vtkClientServerInterpreter*);

inline void ArrowGlyph_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkArrowGlyphFilterCS_Initialize(csi);
}

#endif
