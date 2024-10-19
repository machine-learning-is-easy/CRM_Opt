// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#ifndef pqSaveStateAndScreenshotActionsImplementation_h
#define pqSaveStateAndScreenshotActionsImplementation_h

#include "pqToolBarInterface.h"
#include <QObject>

/// interface class for plugins that create QActionGroups
/// for adding actions to menus and toolbars
class pqSaveStateAndScreenshotActionsImplementation : public QObject, public pqToolBarInterface
{
  Q_OBJECT
  Q_INTERFACES(pqToolBarInterface)
public:
  pqSaveStateAndScreenshotActionsImplementation(QObject* p);
  ~pqSaveStateAndScreenshotActionsImplementation() override;
  QToolBar* toolBar(QWidget* parent) override;
private:
  Q_DISABLE_COPY(pqSaveStateAndScreenshotActionsImplementation);
};

#endif
