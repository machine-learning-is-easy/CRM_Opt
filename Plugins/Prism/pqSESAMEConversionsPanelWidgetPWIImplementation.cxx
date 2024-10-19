// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqSESAMEConversionsPanelWidgetPWIImplementation.h"

#include "pqSESAMEConversionsPanelWidget.h"
#include "vtkSMProperty.h"
#include "vtkSMPropertyGroup.h"

#define _paraview_property_widget_kind_widget 0
#define _paraview_property_widget_kind_group_widget 1
#define _paraview_property_widget_kind_widget_decorator 0

//-----------------------------------------------------------------------------
pqSESAMEConversionsPanelWidgetPWIImplementation::pqSESAMEConversionsPanelWidgetPWIImplementation(QObject* parentObject)
  : QObject(parentObject)
{
  setObjectName("pqSESAMEConversionsPanelWidget");
}

//-----------------------------------------------------------------------------
pqSESAMEConversionsPanelWidgetPWIImplementation::~pqSESAMEConversionsPanelWidgetPWIImplementation() = default;

//-----------------------------------------------------------------------------
pqPropertyWidget* pqSESAMEConversionsPanelWidgetPWIImplementation::createWidgetForProperty(
  vtkSMProxy *smproxy, vtkSMProperty *smproperty, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_widget
  // handle properties that specify custom panel widgets
  if (smproperty && smproperty->GetPanelWidget() &&
      strcmp(smproperty->GetPanelWidget(), "SESAMEConversions") == 0)
  {
    return new pqSESAMEConversionsPanelWidget(smproxy, smproperty, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smproperty);
  Q_UNUSED(parentWidget);
  return nullptr;
}


//-----------------------------------------------------------------------------
pqPropertyWidget* pqSESAMEConversionsPanelWidgetPWIImplementation::createWidgetForPropertyGroup(
  vtkSMProxy *smproxy, vtkSMPropertyGroup *smgroup, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_group_widget
  // handle properties that specify custom panel widgets
  if (smgroup && smgroup->GetPanelWidget() &&
      strcmp(smgroup->GetPanelWidget(), "SESAMEConversions") == 0)
  {
    return new pqSESAMEConversionsPanelWidget(smproxy, smgroup, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smgroup);
  Q_UNUSED(parentWidget);
  return nullptr;
}

//-----------------------------------------------------------------------------
pqPropertyWidgetDecorator* pqSESAMEConversionsPanelWidgetPWIImplementation::createWidgetDecorator(
  const QString& type, vtkPVXMLElement* config, pqPropertyWidget* widget)
{
#if _paraview_property_widget_kind_widget_decorator
  // handle properties that specify custom panel widgets
  if (type == "SESAMEConversions")
  {
    return new pqSESAMEConversionsPanelWidget(config, widget);
  }
#endif
  Q_UNUSED(type);
  Q_UNUSED(config);
  Q_UNUSED(widget);
  return nullptr;
}
