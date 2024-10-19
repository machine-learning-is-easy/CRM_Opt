// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

#ifndef vtkFiltersParallelDIY2ObjectFactory_h
#define vtkFiltersParallelDIY2ObjectFactory_h

#include "vtkFiltersParallelDIY2Module.h" // For export macro
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN

class VTKFILTERSPARALLELDIY2_EXPORT vtkFiltersParallelDIY2ObjectFactory : public vtkObjectFactory
{
public:
  static vtkFiltersParallelDIY2ObjectFactory * New();
  vtkTypeMacro(vtkFiltersParallelDIY2ObjectFactory, vtkObjectFactory);

  const char * GetDescription() override { return "vtkFiltersParallelDIY2 factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkFiltersParallelDIY2ObjectFactory();

private:
  vtkFiltersParallelDIY2ObjectFactory(const vtkFiltersParallelDIY2ObjectFactory&) = delete;
  void operator=(const vtkFiltersParallelDIY2ObjectFactory&) = delete;
};

VTK_ABI_NAMESPACE_END

#endif // vtkFiltersParallelDIY2ObjectFactory_h
