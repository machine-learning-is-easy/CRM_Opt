// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#include "pqStreamLinesAnimationManager.h"
#include "pqStreamLinesAnimationManagerImplementation.h"

//-----------------------------------------------------------------------------
pqStreamLinesAnimationManagerImplementation::pqStreamLinesAnimationManagerImplementation(QObject* p)
  : QObject(p)
{
  this->UserImplementation = new pqStreamLinesAnimationManager();
  setObjectName("pqStreamLinesAnimationManager");
}

//-----------------------------------------------------------------------------
pqStreamLinesAnimationManagerImplementation::~pqStreamLinesAnimationManagerImplementation()
{
  delete this->UserImplementation;
  this->UserImplementation = nullptr;
}

//-----------------------------------------------------------------------------
void pqStreamLinesAnimationManagerImplementation::startup()
{
  this->UserImplementation->onStartup();
}

//-----------------------------------------------------------------------------
void pqStreamLinesAnimationManagerImplementation::shutdown()
{
  this->UserImplementation->onShutdown();
}
