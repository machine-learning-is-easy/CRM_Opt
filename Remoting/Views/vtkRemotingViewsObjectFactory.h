// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

#ifndef vtkRemotingViewsObjectFactory_h
#define vtkRemotingViewsObjectFactory_h

#include "vtkRemotingViewsModule.h" // For export macro
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN

class VTKREMOTINGVIEWS_EXPORT vtkRemotingViewsObjectFactory : public vtkObjectFactory
{
public:
  static vtkRemotingViewsObjectFactory * New();
  vtkTypeMacro(vtkRemotingViewsObjectFactory, vtkObjectFactory);

  const char * GetDescription() override { return "vtkRemotingViews factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkRemotingViewsObjectFactory();

private:
  vtkRemotingViewsObjectFactory(const vtkRemotingViewsObjectFactory&) = delete;
  void operator=(const vtkRemotingViewsObjectFactory&) = delete;
};

VTK_ABI_NAMESPACE_END

#endif // vtkRemotingViewsObjectFactory_h
