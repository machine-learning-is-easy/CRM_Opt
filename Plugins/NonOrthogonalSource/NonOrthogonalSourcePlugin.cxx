#include "NonOrthogonalSourcePlugin.h"

#include "vtkObjectFactory.h"
#include "vtkPVPluginLoader.h"

#define _paraview_add_plugin_EULA 0
#define _paraview_add_plugin_SERVER_MANAGER_XML 0
#define _paraview_add_plugin_MODULES 1
#define _paraview_add_plugin_UI_INTERFACES 1
#define _paraview_add_plugin_with_resources 0

#if !_paraview_add_plugin_built_shared && _paraview_add_plugin_with_resources
// For Q_INIT_RESOURCE
#include <QtCore/QtGlobal>
#endif

#if _paraview_add_plugin_EULA
#include ""
#endif

#include "NonOrthogonalSource_qch.h"

namespace
{
  // This ensures that when the shared library for this plugin is
  // unloaded during finalization sequence, it notifies the vtkPVPluginLoader
  // so it does not double-dlclose() an already unloaded plugin.
  // This does not affect static builds and hence we don't need to worry about
  // making sure this instance gets created in static builds.
  class NonOrthogonalSourcePluginCleaner
  {
  public:
    NonOrthogonalSourcePluginCleaner() = default;
    ~NonOrthogonalSourcePluginCleaner()
    {
      // The plugin library is being unloaded.
      // Let the plugin loader know so it doesn't try to unload it again.
      vtkPVPluginLoader::PluginLibraryUnloaded("NonOrthogonalSource");
    }
  } NonOrthogonalSourcePluginCleaner_Instance;
}

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_SERVER_MANAGER_XML
#include "NonOrthogonalSource_server_manager.h"
#endif

#if _paraview_add_plugin_MODULES
#include "NonOrthogonalSource_server_manager_modules.h"
#include "NonOrthogonalSource_client_server.h"
#endif

//-----------------------------------------------------------------------------
void NonOrthogonalSourcePlugin::GetBinaryResources(
  std::vector<std::string>& resources)
{
  {
      const char *text = NonOrthogonalSource_qch();
      resources.emplace_back(text);
      delete [] text;
    }

  (void)resources;
}

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_with_ui
#include "pqNonOrthogonalAutoStartImplementation.h"

#define PARAVIEW_ADD_INTERFACES(arg) \
  (arg).push_back(new pqNonOrthogonalAutoStartImplementation(this)); \

#endif

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_with_xml
vtkClientServerInterpreterInitializer::InterpreterInitializationCallback
NonOrthogonalSourcePlugin::GetInitializeInterpreterCallback()
{
#if _paraview_add_plugin_MODULES
  return NonOrthogonalSource_client_server_initialize;
#else
  return nullptr;
#endif
}

//-----------------------------------------------------------------------------
void NonOrthogonalSourcePlugin::GetXMLs(std::vector<std::string> &xmls)
{
  (void)xmls;
#if _paraview_add_plugin_SERVER_MANAGER_XML
  NonOrthogonalSource_server_manager_initialize(xmls);
#endif
#if _paraview_add_plugin_MODULES
  NonOrthogonalSource_server_manager_modules_initialize(xmls);
#endif
}
#endif

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_with_ui
QObjectList NonOrthogonalSourcePlugin::interfaces()
{
  QObjectList ifaces;
#if _paraview_add_plugin_UI_INTERFACES
  PARAVIEW_ADD_INTERFACES(ifaces);
#endif
  return ifaces;
}
#endif

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_with_initializers
void NonOrthogonalSourcePlugin::Initialize()
{
  
}
#endif

//-----------------------------------------------------------------------------
#if _paraview_add_plugin_with_python

void NonOrthogonalSourcePlugin::GetPythonSourceList(std::vector<std::string>& modules,
  std::vector<std::string>& sources,
  std::vector<int> &package_flags)
{
  const char *moduleNames[] = {

  };
  char *moduleSources[] = {

  };
  const int packageFlags[] = {

  };

  for (int cc=0; moduleNames[cc]; cc++)
  {
    modules.push_back(moduleNames[cc]);
    sources.push_back(moduleSources[cc]);
    package_flags.push_back(packageFlags[cc]);

    // free allocated memory.
    delete[] moduleSources[cc];
    moduleSources[cc] = nullptr;
  }
}
#endif

//-----------------------------------------------------------------------------
static void initialize_NonOrthogonalSource_plugin_qt_resources()
{
#if !_paraview_add_plugin_built_shared && _paraview_add_plugin_with_resources
  // For static builds, initialize the Qt resources.

#endif
#if !_paraview_add_plugin_built_shared && _paraview_add_plugin_with_ui
  // For static builds, initialize the Qt plugin.
  Q_IMPORT_PLUGIN(NonOrthogonalSourcePlugin)
#endif
}

//-----------------------------------------------------------------------------
NonOrthogonalSourcePlugin::NonOrthogonalSourcePlugin()
{
  initialize_NonOrthogonalSource_plugin_qt_resources();
}

//-----------------------------------------------------------------------------
const char* NonOrthogonalSourcePlugin::GetEULA()
{
#if _paraview_add_plugin_EULA
  return NonOrthogonalSource_EULA;
#else
  return nullptr;
#endif
}

//-----------------------------------------------------------------------------
// Mark this as a ParaView-ServerManager plugin.
PV_PLUGIN_EXPORT(NonOrthogonalSource, NonOrthogonalSourcePlugin)
