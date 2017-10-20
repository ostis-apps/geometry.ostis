#!/bin/bash
export LD_LIBRARY_PATH=../sc-machine/bin
if [ ! -d "../ims.ostis.kb_copy" ]; then
    mkdir ../ims.ostis.kb_copy
else
    rm -rf ../ims.ostis.kb_copy/*
fi

cd ../

cp -a ims.ostis.kb/ims/ostis_tech/semantic_network_represent/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/unificated_models/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/semantic_networks_processing/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_of_reusable_comp_ui/ui_menu/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_c_agents/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/admin/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/classification_agents/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/common/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/developer/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/expert/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/manager/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/activity_automatisation/specification/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/search/ ims.ostis.kb_copy/
#cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/ontology_forming/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/ontology_forming/agent_of_forming_terminological_ontology/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/ontology_forming/common/scp_program_component/lib_component_proc_of_forming_terminological_ontology/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/ontology_forming/common/scp_program_component/lib_component_proc_of_finding_identifiers_extended/ ims.ostis.kb_copy/

cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/ontology_forming/agent_of_forming_logical_ontology/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/programs_for_sc_text_processing/scp_program/ ims.ostis.kb_copy/
#cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/programs_for_sc_text_processing/scp_program/find_identifiers/ ims.ostis.kb_copy/

cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/editing/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/Methods_evaluation/common/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/Methods_evaluation/Ingwe_Miller_metrics/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/Methods_evaluation/Depth_metrics/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/Methods_evaluation/Kb_volume_metrics/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/validation/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/reusable_sc_agents/lib_scp_agents/verification/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/OSTIS_hist_curr_stt_perspect_of_evol_and_use/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/doc_IMS/structure_IMS_knowledge_base/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/project_IMS_history_and_development_programme/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ims/ostis_tech/tools/dev_kb/ ims.ostis.kb_copy/

#cp -a ims.ostis.kb/ims/ostis_tech/lib_ostis/sectn_lib_reusable_comp_kpm/programs_for_sc_text_processing/scp_program/ ims.ostis.kb_copy/



cp -a ims.ostis.kb/to_check/ ims.ostis.kb_copy/
cp -a ims.ostis.kb/ui/ ims.ostis.kb_copy/
rm -rf ims.ostis.kb_copy/ui/menu

cd -



