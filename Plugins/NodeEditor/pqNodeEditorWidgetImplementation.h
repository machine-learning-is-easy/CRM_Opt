// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#ifndef pqNodeEditorWidgetImplementation_h
#define pqNodeEditorWidgetImplementation_h

#include "pqDockWindowInterface.h"
#include <QObject>

// make this dock window a part of the application
class pqNodeEditorWidgetImplementation : public QObject, public pqDockWindowInterface
{
  Q_OBJECT
  Q_INTERFACES(pqDockWindowInterface)
public:
  pqNodeEditorWidgetImplementation(QObject* p);
  QString dockArea() const override;
  QDockWidget* dockWindow(QWidget* p) override;

protected:
  QDockWidget *MyDock;
};

#endif
