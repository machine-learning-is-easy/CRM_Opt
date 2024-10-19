// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#ifndef pqNonOrthogonalAutoStartImplementation_h
#define pqNonOrthogonalAutoStartImplementation_h

#include "pqAutoStartInterface.h"
#include <QObject>

class pqNonOrthogonalAutoStart;

class pqNonOrthogonalAutoStartImplementation : public QObject, public pqAutoStartInterface
{
  Q_OBJECT
  Q_INTERFACES(pqAutoStartInterface)
public:
  pqNonOrthogonalAutoStartImplementation(QObject* p=nullptr);
  ~pqNonOrthogonalAutoStartImplementation() override;

  /// Called once after the ParaView starts. If ParaView is already running when
  /// the plugin is loaded, this method will be called when the plugin is loaded.
  void startup() override;

  /// Called once before the program shuts down.
  void shutdown() override;
protected:
  pqNonOrthogonalAutoStart *UserImplementation;
};

#endif
