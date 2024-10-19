// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#include "pqBivariateManager.h"
#include "pqBivariateManagerImplementation.h"

//-----------------------------------------------------------------------------
pqBivariateManagerImplementation::pqBivariateManagerImplementation(QObject* p)
  : QObject(p)
{
  this->UserImplementation = new pqBivariateManager();
  setObjectName("pqBivariateManager");
}

//-----------------------------------------------------------------------------
pqBivariateManagerImplementation::~pqBivariateManagerImplementation()
{
  delete this->UserImplementation;
  this->UserImplementation = nullptr;
}

//-----------------------------------------------------------------------------
void pqBivariateManagerImplementation::startup()
{
  this->UserImplementation->onStartup();
}

//-----------------------------------------------------------------------------
void pqBivariateManagerImplementation::shutdown()
{
  this->UserImplementation->onShutdown();
}
