// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqIntegrationModelSurfaceHelperWidgetPWIImplementation.h"

#include "pqIntegrationModelSurfaceHelperWidget.h"
#include "vtkSMProperty.h"
#include "vtkSMPropertyGroup.h"

#define _paraview_property_widget_kind_widget 1
#define _paraview_property_widget_kind_group_widget 0
#define _paraview_property_widget_kind_widget_decorator 0

//-----------------------------------------------------------------------------
pqIntegrationModelSurfaceHelperWidgetPWIImplementation::pqIntegrationModelSurfaceHelperWidgetPWIImplementation(QObject* parentObject)
  : QObject(parentObject)
{
  setObjectName("pqIntegrationModelSurfaceHelperWidget");
}

//-----------------------------------------------------------------------------
pqIntegrationModelSurfaceHelperWidgetPWIImplementation::~pqIntegrationModelSurfaceHelperWidgetPWIImplementation() = default;

//-----------------------------------------------------------------------------
pqPropertyWidget* pqIntegrationModelSurfaceHelperWidgetPWIImplementation::createWidgetForProperty(
  vtkSMProxy *smproxy, vtkSMProperty *smproperty, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_widget
  // handle properties that specify custom panel widgets
  if (smproperty && smproperty->GetPanelWidget() &&
      strcmp(smproperty->GetPanelWidget(), "integration_model_surface_helper_widget") == 0)
  {
    return new pqIntegrationModelSurfaceHelperWidget(smproxy, smproperty, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smproperty);
  Q_UNUSED(parentWidget);
  return nullptr;
}


//-----------------------------------------------------------------------------
pqPropertyWidget* pqIntegrationModelSurfaceHelperWidgetPWIImplementation::createWidgetForPropertyGroup(
  vtkSMProxy *smproxy, vtkSMPropertyGroup *smgroup, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_group_widget
  // handle properties that specify custom panel widgets
  if (smgroup && smgroup->GetPanelWidget() &&
      strcmp(smgroup->GetPanelWidget(), "integration_model_surface_helper_widget") == 0)
  {
    return new pqIntegrationModelSurfaceHelperWidget(smproxy, smgroup, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smgroup);
  Q_UNUSED(parentWidget);
  return nullptr;
}

//-----------------------------------------------------------------------------
pqPropertyWidgetDecorator* pqIntegrationModelSurfaceHelperWidgetPWIImplementation::createWidgetDecorator(
  const QString& type, vtkPVXMLElement* config, pqPropertyWidget* widget)
{
#if _paraview_property_widget_kind_widget_decorator
  // handle properties that specify custom panel widgets
  if (type == "integration_model_surface_helper_widget")
  {
    return new pqIntegrationModelSurfaceHelperWidget(config, widget);
  }
#endif
  Q_UNUSED(type);
  Q_UNUSED(config);
  Q_UNUSED(widget);
  return nullptr;
}
