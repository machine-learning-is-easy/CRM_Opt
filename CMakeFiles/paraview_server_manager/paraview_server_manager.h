#ifndef paraview_server_manager_h
#define paraview_server_manager_h

#include "paraview_server_manager_data.h"
#include <string>
#include <vector>

inline void paraview_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = paraview_server_managerpointsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managercore_sourcesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managermisc_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managermisc_utilitiesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_pv_iocoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_pv_iocoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_pv_iocoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_pv_iospcthGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_pv_ioimageGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_pv_ioimageGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioexodusGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_ioexodusGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_pv_ioensightGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_pv_ioamrGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerstatistics_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manageramr_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerrendering_sourcesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersrenderingGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managergeneral_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managergeneral_sourcesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerparallel_diy_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerparallel_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managermaterial_interface_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerflowpaths_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerextraction_filtersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manager2dwidgets_remotingviewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manager3dwidgets_remotingviewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerextractors_remotingviewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerextractors_jsonGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerrenderingGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_remotingviewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerutilities_remotingviewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerviews_and_representationsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manageranimationGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_animationGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manageranimation_winGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_manageranimation_oggtheoraGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerutilities_settingsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerextractorsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerinternal_writersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerutilitiesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_computationalgeometryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_domainschemistryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_geoviscoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iochemistryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersamrGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_filtersamrGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterscellgridGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterscoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_filterscoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterspointsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersextractionGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersflowpathsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersgeneralGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_filtersgeneralGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_plotonintersectioncurvesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_normalglyphsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersgenericGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersgeometryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersparallelGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtershybridGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_filtershybridGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtershypertreeGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersmodelingGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_filterssourcesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersstatisticsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterstemporalGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_imagingcoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_imagingcoreGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_imagingfourierGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_imaginggeneralGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_imaginghybridGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_imagingsourcesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersparalleldiy2GetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersparallelverdictGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterstensorsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filterstextureGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_filtersverdictGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iocellgridGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioxmlGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_ioxmlGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ionetcdfGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_xdmf2GetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_citygmlGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iohdfGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_iohdfGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioerfGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_segyGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_omfGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_iolegacyGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iogeometryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_iogeometryGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioplyGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioparallelGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_ensightGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_lsdynaGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioinfovisGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iotecplottableGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iovpicGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iotruchasGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioveraoutGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioh5partGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioh5rageGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iopioGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioconvergecfdGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iocgnsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iofluentcffGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_iocgnsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_renderingfreetypeGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerproxies_interactionwidgetsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerfilters_selectionfftovertimeGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_ioiossGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerwriters_ioiossGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerreaders_iofdsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managergeneral_readersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managergeneral_writersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managersources_remotingmiscGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerlive_utilitiesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerexportersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = paraview_server_managerimporters_pv_ioimportGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
