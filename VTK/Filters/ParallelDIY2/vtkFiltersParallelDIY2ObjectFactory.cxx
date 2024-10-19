// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

// Object factories should never have deprecation warnings.
// NOLINTNEXTLINE(modernize-macro-to-enum)
#define VTK_DEPRECATION_LEVEL 0

#include "vtkFiltersParallelDIY2ObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.
#include "vtkPResampleToImage.h"
#include "vtkPResampleWithDataSet.h"


VTK_ABI_NAMESPACE_BEGIN

vtkStandardNewMacro(vtkFiltersParallelDIY2ObjectFactory);

// Now create the functions to create overrides with.
VTK_CREATE_CREATE_FUNCTION(vtkPResampleToImage)
VTK_CREATE_CREATE_FUNCTION(vtkPResampleWithDataSet)


vtkFiltersParallelDIY2ObjectFactory::vtkFiltersParallelDIY2ObjectFactory()
{
this->RegisterOverride("vtkResampleToImage", "vtkPResampleToImage", "Override for VTK::FiltersParallelDIY2 module", 1, vtkObjectFactoryCreatevtkPResampleToImage);
this->RegisterOverride("vtkResampleWithDataSet", "vtkPResampleWithDataSet", "Override for VTK::FiltersParallelDIY2 module", 1, vtkObjectFactoryCreatevtkPResampleWithDataSet);

}

const char * vtkFiltersParallelDIY2ObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkFiltersParallelDIY2ObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkFiltersParallelDIY2Count = 0;

VTKFILTERSPARALLELDIY2_EXPORT void vtkFiltersParallelDIY2_AutoInit_Construct()
{
  if(++vtkFiltersParallelDIY2Count == 1)
  {


    vtkFiltersParallelDIY2ObjectFactory* factory = vtkFiltersParallelDIY2ObjectFactory::New();
    if (factory)
    {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
    }
  }
}
VTK_ABI_NAMESPACE_END
