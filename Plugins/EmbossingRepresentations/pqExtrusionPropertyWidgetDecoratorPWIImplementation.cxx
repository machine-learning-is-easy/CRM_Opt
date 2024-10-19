// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-FileCopyrightText: Copyright (c) Sandia Corporation
// SPDX-License-Identifier: BSD-3-Clause
// Generated file.  Do not edit.


#include "pqExtrusionPropertyWidgetDecoratorPWIImplementation.h"

#include "pqExtrusionPropertyWidgetDecorator.h"
#include "vtkSMProperty.h"
#include "vtkSMPropertyGroup.h"

#define _paraview_property_widget_kind_widget 0
#define _paraview_property_widget_kind_group_widget 0
#define _paraview_property_widget_kind_widget_decorator 1

//-----------------------------------------------------------------------------
pqExtrusionPropertyWidgetDecoratorPWIImplementation::pqExtrusionPropertyWidgetDecoratorPWIImplementation(QObject* parentObject)
  : QObject(parentObject)
{
  setObjectName("pqExtrusionPropertyWidgetDecorator");
}

//-----------------------------------------------------------------------------
pqExtrusionPropertyWidgetDecoratorPWIImplementation::~pqExtrusionPropertyWidgetDecoratorPWIImplementation() = default;

//-----------------------------------------------------------------------------
pqPropertyWidget* pqExtrusionPropertyWidgetDecoratorPWIImplementation::createWidgetForProperty(
  vtkSMProxy *smproxy, vtkSMProperty *smproperty, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_widget
  // handle properties that specify custom panel widgets
  if (smproperty && smproperty->GetPanelWidget() &&
      strcmp(smproperty->GetPanelWidget(), "ExtrusionPropertyWidgetDecorator") == 0)
  {
    return new pqExtrusionPropertyWidgetDecorator(smproxy, smproperty, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smproperty);
  Q_UNUSED(parentWidget);
  return nullptr;
}


//-----------------------------------------------------------------------------
pqPropertyWidget* pqExtrusionPropertyWidgetDecoratorPWIImplementation::createWidgetForPropertyGroup(
  vtkSMProxy *smproxy, vtkSMPropertyGroup *smgroup, QWidget* parentWidget)
{
#if _paraview_property_widget_kind_group_widget
  // handle properties that specify custom panel widgets
  if (smgroup && smgroup->GetPanelWidget() &&
      strcmp(smgroup->GetPanelWidget(), "ExtrusionPropertyWidgetDecorator") == 0)
  {
    return new pqExtrusionPropertyWidgetDecorator(smproxy, smgroup, parentWidget);
  }
#endif
  Q_UNUSED(smproxy);
  Q_UNUSED(smgroup);
  Q_UNUSED(parentWidget);
  return nullptr;
}

//-----------------------------------------------------------------------------
pqPropertyWidgetDecorator* pqExtrusionPropertyWidgetDecoratorPWIImplementation::createWidgetDecorator(
  const QString& type, vtkPVXMLElement* config, pqPropertyWidget* widget)
{
#if _paraview_property_widget_kind_widget_decorator
  // handle properties that specify custom panel widgets
  if (type == "ExtrusionPropertyWidgetDecorator")
  {
    return new pqExtrusionPropertyWidgetDecorator(config, widget);
  }
#endif
  Q_UNUSED(type);
  Q_UNUSED(config);
  Q_UNUSED(widget);
  return nullptr;
}
