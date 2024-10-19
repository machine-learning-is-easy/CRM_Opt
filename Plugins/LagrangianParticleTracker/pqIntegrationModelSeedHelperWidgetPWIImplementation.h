// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.

#ifndef pqIntegrationModelSeedHelperWidgetPWIImplementation_h
#define pqIntegrationModelSeedHelperWidgetPWIImplementation_h

#include "pqPropertyWidgetInterface.h"
#include <QObject>

class pqIntegrationModelSeedHelperWidgetPWIImplementation : public QObject, public pqPropertyWidgetInterface
{
  Q_OBJECT
  Q_INTERFACES(pqPropertyWidgetInterface)
public:
  pqIntegrationModelSeedHelperWidgetPWIImplementation(QObject* parent);
  ~pqIntegrationModelSeedHelperWidgetPWIImplementation() override;

  /// Given a proxy and its property, create a widget for the same, of possible.
  /// For unsupported/unknown proxies/properties, implementations should simply
  /// return nullptr without raising any errors (or messages).
  pqPropertyWidget* createWidgetForProperty(vtkSMProxy *proxy,
    vtkSMProperty *property, QWidget* parentWidget) override;

  /// Given a proxy and its property group, create a widget for the same, of possible.
  /// For unsupported/unknown proxies/property-groups, implementations should simply
  /// return nullptr without raising any errors (or messages).
  pqPropertyWidget* createWidgetForPropertyGroup(vtkSMProxy *proxy,
    vtkSMPropertyGroup *group, QWidget* parentWidget) override;

  /// Given the type of the decorator and the pqPropertyWidget that needs to be
  /// decorated, create the pqPropertyWidgetDecorator instance, if possible.
  /// For unsupported/unknown, implementations should simply return nullptr
  //without / raising any errors (or messages).
  pqPropertyWidgetDecorator* createWidgetDecorator(
    const QString& type, vtkPVXMLElement* config, pqPropertyWidget* widget) override;

private:
  Q_DISABLE_COPY(pqIntegrationModelSeedHelperWidgetPWIImplementation)
};

#endif
