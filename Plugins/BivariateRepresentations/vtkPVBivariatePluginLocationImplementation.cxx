// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "vtkPVBivariatePluginLocation.h"
#include "vtkPVBivariatePluginLocationImplementation.h"

#include <vtkPVPlugin.h>

//-----------------------------------------------------------------------------
vtkPVBivariatePluginLocationImplementation::vtkPVBivariatePluginLocationImplementation(QObject* p)
  : QObject(p)
{
  this->UserImplementation = new vtkPVBivariatePluginLocation();
  setObjectName("vtkPVBivariatePluginLocation");

  vtkPVPlugin* plugin = dynamic_cast<vtkPVPlugin*>(p);
  if (plugin != nullptr)
  {
    this->StoreLocation(plugin->GetFileName());
  }
}

//-----------------------------------------------------------------------------
vtkPVBivariatePluginLocationImplementation::~vtkPVBivariatePluginLocationImplementation()
{
  delete this->UserImplementation;
  this->UserImplementation = nullptr;
}

//-----------------------------------------------------------------------------
void vtkPVBivariatePluginLocationImplementation::StoreLocation(const char* location)
{
  this->UserImplementation->StoreLocation(location);
}
