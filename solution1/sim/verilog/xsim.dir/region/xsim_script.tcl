set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {region} -view {{region_dataflow_ana.wcfg}} -tclbatch {region.tcl} -protoinst {region.protoinst}
