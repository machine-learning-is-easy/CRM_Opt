// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

// Object factories should never have deprecation warnings.
// NOLINTNEXTLINE(modernize-macro-to-enum)
#define VTK_DEPRECATION_LEVEL 0

#include "vtkIOParallelExodusObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.
#include "vtkPExodusIIWriter.h"


VTK_ABI_NAMESPACE_BEGIN

vtkStandardNewMacro(vtkIOParallelExodusObjectFactory);

// Now create the functions to create overrides with.
VTK_CREATE_CREATE_FUNCTION(vtkPExodusIIWriter)


vtkIOParallelExodusObjectFactory::vtkIOParallelExodusObjectFactory()
{
this->RegisterOverride("vtkExodusIIWriter", "vtkPExodusIIWriter", "Override for VTK::IOParallelExodus module", 1, vtkObjectFactoryCreatevtkPExodusIIWriter);

}

const char * vtkIOParallelExodusObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkIOParallelExodusObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkIOParallelExodusCount = 0;

VTKIOPARALLELEXODUS_EXPORT void vtkIOParallelExodus_AutoInit_Construct()
{
  if(++vtkIOParallelExodusCount == 1)
  {


    vtkIOParallelExodusObjectFactory* factory = vtkIOParallelExodusObjectFactory::New();
    if (factory)
    {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
    }
  }
}
VTK_ABI_NAMESPACE_END
