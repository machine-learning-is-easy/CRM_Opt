// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#ifndef vtkPVBivariatePluginLocationImplementation_h
#define vtkPVBivariatePluginLocationImplementation_h

#include "pqPluginLocationInterface.h"
#include <QObject>

class vtkPVBivariatePluginLocation;

class vtkPVBivariatePluginLocationImplementation : public QObject, public pqPluginLocationInterface
{
  Q_OBJECT
  Q_INTERFACES(pqPluginLocationInterface)
public:
  vtkPVBivariatePluginLocationImplementation(QObject* p=0);
  ~vtkPVBivariatePluginLocationImplementation() override;

  /// Called once after the ParaView starts. If ParaView is already running when
  /// the plugin is loaded, this method will be called when the plugin is loaded.
  void StoreLocation(const char* location) override;
protected:
  vtkPVBivariatePluginLocation *UserImplementation;
};

#endif
