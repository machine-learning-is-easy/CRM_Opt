// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqSaveStateAndScreenshotActions.h"
#include "pqSaveStateAndScreenshotActionsImplementation.h"

pqSaveStateAndScreenshotActionsImplementation::pqSaveStateAndScreenshotActionsImplementation(QObject* p)
  : QObject(p)
{
  setObjectName("pqSaveStateAndScreenshotActions");
}

pqSaveStateAndScreenshotActionsImplementation::~pqSaveStateAndScreenshotActionsImplementation() = default;

QToolBar* pqSaveStateAndScreenshotActionsImplementation::toolBar(QWidget* parentWdg)
{
  return new pqSaveStateAndScreenshotActions(parentWdg);
}
