// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqFlipBookToolbarActions.h"
#include "pqFlipBookToolbarActionsImplementation.h"

pqFlipBookToolbarActionsImplementation::pqFlipBookToolbarActionsImplementation(QObject* p)
  : QObject(p)
{
  setObjectName("pqFlipBookToolbarActions");
}

pqFlipBookToolbarActionsImplementation::~pqFlipBookToolbarActionsImplementation() = default;

QToolBar* pqFlipBookToolbarActionsImplementation::toolBar(QWidget* parentWdg)
{
  return new pqFlipBookToolbarActions(parentWdg);
}
