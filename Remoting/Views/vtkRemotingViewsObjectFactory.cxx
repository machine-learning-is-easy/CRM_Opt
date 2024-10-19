// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

// Object factories should never have deprecation warnings.
// NOLINTNEXTLINE(modernize-macro-to-enum)
#define VTK_DEPRECATION_LEVEL 0

#include "vtkRemotingViewsObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.
#include "vtkSMParaViewPipelineControllerWithRendering.h"


VTK_ABI_NAMESPACE_BEGIN

vtkStandardNewMacro(vtkRemotingViewsObjectFactory);

// Now create the functions to create overrides with.
VTK_CREATE_CREATE_FUNCTION(vtkSMParaViewPipelineControllerWithRendering)


vtkRemotingViewsObjectFactory::vtkRemotingViewsObjectFactory()
{
this->RegisterOverride("vtkSMParaViewPipelineController", "vtkSMParaViewPipelineControllerWithRendering", "Override for ParaView::RemotingViews module", 1, vtkObjectFactoryCreatevtkSMParaViewPipelineControllerWithRendering);

}

const char * vtkRemotingViewsObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkRemotingViewsObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkRemotingViewsCount = 0;

VTKREMOTINGVIEWS_EXPORT void vtkRemotingViews_AutoInit_Construct()
{
  if(++vtkRemotingViewsCount == 1)
  {


    vtkRemotingViewsObjectFactory* factory = vtkRemotingViewsObjectFactory::New();
    if (factory)
    {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
    }
  }
}
VTK_ABI_NAMESPACE_END
