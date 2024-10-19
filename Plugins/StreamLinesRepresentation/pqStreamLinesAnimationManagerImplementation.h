// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#ifndef pqStreamLinesAnimationManagerImplementation_h
#define pqStreamLinesAnimationManagerImplementation_h

#include "pqAutoStartInterface.h"
#include <QObject>

class pqStreamLinesAnimationManager;

class pqStreamLinesAnimationManagerImplementation : public QObject, public pqAutoStartInterface
{
  Q_OBJECT
  Q_INTERFACES(pqAutoStartInterface)
public:
  pqStreamLinesAnimationManagerImplementation(QObject* p=nullptr);
  ~pqStreamLinesAnimationManagerImplementation() override;

  /// Called once after the ParaView starts. If ParaView is already running when
  /// the plugin is loaded, this method will be called when the plugin is loaded.
  void startup() override;

  /// Called once before the program shuts down.
  void shutdown() override;
protected:
  pqStreamLinesAnimationManager *UserImplementation;
};

#endif
