// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#include "pqSLACActionGroup.h"
#include "pqSLACActionGroupImplementation.h"

pqSLACActionGroupImplementation::pqSLACActionGroupImplementation(QObject* p)
  : QObject(p)
{
  this->ActionGroup = new pqSLACActionGroup(this);
  setObjectName("pqSLACActionGroup");
}

pqSLACActionGroupImplementation::~pqSLACActionGroupImplementation() = default;

QString pqSLACActionGroupImplementation::groupName()
{
  return "ToolBar/SLAC";
}

QActionGroup* pqSLACActionGroupImplementation::actionGroup()
{
  return this->ActionGroup;
}
