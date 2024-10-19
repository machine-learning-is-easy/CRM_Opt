// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqNodeEditorWidget.h"
#include "pqNodeEditorWidgetImplementation.h"

#include <QDockWidget>
#include <QWidget>

pqNodeEditorWidgetImplementation::pqNodeEditorWidgetImplementation(QObject* p)
  : QObject(p)
{
  this->MyDock = nullptr;
  setObjectName("pqNodeEditorWidget");
}

QString pqNodeEditorWidgetImplementation::dockArea() const
{
  return "Right";
}

QDockWidget* pqNodeEditorWidgetImplementation::dockWindow(QWidget* p)
{
  if(!this->MyDock)
  {
    this->MyDock = new pqNodeEditorWidget(p);
    this->MyDock->setObjectName("pqNodeEditorWidget");
  }
  return this->MyDock;
}
