// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#include "pqNonOrthogonalAutoStart.h"
#include "pqNonOrthogonalAutoStartImplementation.h"

//-----------------------------------------------------------------------------
pqNonOrthogonalAutoStartImplementation::pqNonOrthogonalAutoStartImplementation(QObject* p)
  : QObject(p)
{
  this->UserImplementation = new pqNonOrthogonalAutoStart();
  setObjectName("pqNonOrthogonalAutoStart");
}

//-----------------------------------------------------------------------------
pqNonOrthogonalAutoStartImplementation::~pqNonOrthogonalAutoStartImplementation()
{
  delete this->UserImplementation;
  this->UserImplementation = nullptr;
}

//-----------------------------------------------------------------------------
void pqNonOrthogonalAutoStartImplementation::startup()
{
  this->UserImplementation->startup();
}

//-----------------------------------------------------------------------------
void pqNonOrthogonalAutoStartImplementation::shutdown()
{
  this->UserImplementation->shutdown();
}
