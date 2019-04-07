################################################
# Automatically created by Blue Pearl Visual Verification Suite Version 2018.4.51162 02/12/2019 15:40. Windows (64-bit). on Tue Mar 19 11:14:39 2019
################################################

################################################
## Project Options
################################################
if {![info exists BPS::project_rel_to_dir] } {
    set BPS::project_rel_to_dir {C:/Users/aptay/Documents/GitHub/Hackster/s7_tdm114}
}
if {![info exists BPS::project_results_dir] } {
    set BPS::project_results_dir [file join $BPS::project_rel_to_dir ./Results]
}

set_hierarchy_separator .
set add_reset_to_converted_implicit_fsms false
set allow_asynch_rams true
set allow_entity_single_arch_file false
set allow_implicit_names_when_initialized false
set allow_ram_resets true
set allow_rams_from_sv_structures true
set allow_rams_in_loops true
set analyze_cyclic_signals false
set assume_one_muxed_clock_active true
set assume_reset_only_init false
set assume_state_retention_clock_gating false
set auto_create_black_boxes true
set auto_derived_clock_domains true
set auto_detect_clock_domains false
set auto_discovery_dirs {}
set automate_module_library_search_path false
set autosortsv true
set autosortvhdl true
set cdc_limit 1000
set check_cdc_from_async_set_reset false
set check_cdc_from_primary_inputs true
set check_cdc_from_unclocked_primary_inputs true
set check_cdc_to_primary_outputs true
set check_cdc_to_unclocked_primary_outputs true
set check_xilinx_objects false
set clock_buses {}
set clock_detection_enabled_via_dffs true
set clock_detection_enabled_via_latches false
set constant_driven_muxes_driving_dff_are_synch_reset true
set constant_phase_cdc all
set control_logic false
set convert_implicit_fsms false
set cyclic_controlled_gates false
set dang_report_design true
set dang_report_module true
set def_systemverilog SYS_VERILOG
set def_verilog VERILOG_2001
set def_vhdl VHDL_2000
set default_message_limit 25
set dff_mapping_file {}
set disable_translate_off false
set distributed_control false
set enable_fsm_based_mcp_analysis false
set enable_mcp_sequential_analysis false
set enable_ram_inferencing true
set enable_setreset_detection true
set enable_setreset_detection_latches false
set enable_stagedreset_detection true
set expand_fsm_on_out_of_bounds false
set expand_fsm_to_state_var_size false
set extended_cdc_analysis false
set fanout_limit 8
set force_disable_ace false
set force_entity_single_arch_file false
set gatelevel_verilog_ext .gv
set gates2muxes false
set generate_cdc_messages_beyond_limit true
set hccc_report_references false
set ideal_connectivity_for_lib_cells true
set ignore_clock_domain_specs false
set ignore_constant_controlled_false_paths false
set ignore_files {}
set ignore_suffixes {}
set include_ansi_file_search true
set include_asynch_synch_reset_analysis true
set indent_check_comments false
set indent_code_always true
set indent_code_begin true
set indent_code_braces true
set indent_code_cases true
set indent_code_conditionals true
set indent_code_design_units true
set indent_code_functions true
set indent_code_parameters true
set indent_code_ports false
set indent_signal_lists false
set initials_for_names {}
set internally_gated_signal_is_primary_reset false
set isolate_configuration_fileloc false
set ite_depth 3
set liberty_files {}
set libmap {}
set librescan false
set limit_cdc_recording_to_improper_synch_cdcs false
set limit_end_points false
set max_bus_width 32
set max_columns 72
set max_iterations_between_updates 100
set max_lines_per_module 80
set max_loop_limit 10000
set max_module_name_length 200
set max_seconds_between_updates 5
set maxfanout_clock 8
set maxfanout_dff 8
set maxfanout_port 8
set maxfanout_setreset 8
set maximum_number_expanded_fsm_states 1024
set mba_constant_size_strict false
set mba_exclude_all_arith false
set mba_exclude_arith false
set mba_exclude_const false
set mba_exclude_count true
set mba_exclude_inc true
set mba_exclude_optimized false
set mba_ignore_variable_vs_integer false
set mcp_data_stability false
set mea_report_missing_else_only false
set minimum_ram_size 0
set module_library_search_path {}
set multiple_cycle_learning false
set multiply_controlled_end_points false
set mux_select_input_is_primary_for_synch_reset false
set no_state_retention_requirement_on_end_points false
set noauto_bb_port_direction true
set non_const_max_loop_limit 1000
set output_of_muxed_clock_as_internal_clock false
set path_analysis false
set path_analysis_all_paths false
set propagate_constant_constraints false
set pulse_control false
set report_all_unnamed_gen_stmts false
set report_aln_sub false
set report_aln_top true
set report_equiv_clock_cdcs true
set report_fpa_cdc off
set report_fsm_default_state_transitions true
set report_library_cells false
set report_muxed_clocks_as_gated_clocks false
set report_on_previously_assigned false
set report_regi_sub true
set report_regi_top true
set report_rego_sub true
set report_rego_top true
set report_rstname_sub false
set report_rstname_top true
set report_staged_reset asynch
set report_synch_reset match
set report_unnamed_blocks_sub false
set report_unnamed_blocks_top true
set report_unnamed_loop true
set report_unnamed_loop_end true
set report_unnamed_loop_exit true
set report_unnamed_loop_next true
set report_unnamed_nongen_blocks true
set report_unnamed_nongen_blocks_end false
set report_unnamed_nongen_blocks_sub true
set report_unnamed_nongen_blocks_top true
set report_unnamed_process_end false
set reset_false_paths off
set root_module design_1_wrapper
set sdc_write_add_reg_suffix true
set sdc_write_check_dff_paths true
set sdc_write_check_memory_paths true
set sdc_write_check_po_paths true
set sdc_write_combine_constraints false
set sdc_write_comment_out_hierarchy_separator true
set sdc_write_create_clocks false
set sdc_write_default_clock_period 10
set sdc_write_default_input_delay 0
set sdc_write_default_output_delay 0
set sdc_write_expand_vector_q true
set sdc_write_gen_get_nets false
set sdc_write_generate_functional_exceptions true
set sdc_write_generate_io_delays false
set sdc_write_generate_separate_files false
set sdc_write_generate_set_clock_groups true
set sdc_write_generate_through_exceptions true
set sdc_write_insert_newline false
set sdc_write_mcp_synchronous_clocks true
set sdc_write_split_buses true
set sdc_write_supply_max_to_io_delays true
set sdc_write_supply_min_to_io_delays false
set sdc_write_use_bus_aliases false
set sdc_write_use_source_clock_in_generated_clocks true
set shorten_long_module_names false
set single_domain true
set spaces_per_indent_level 4
set stop_after_error 2147483647
set stop_loading_on_sdc_errors true
set storage_message_limit 10000
set suppress_cdc_from_scr true
set system_verilog_ext {.sv .psl}
set treat_empty_module_as_black_boxes false
set unitname_max_length 200
set user_clockcell_files {}
set user_greycell_files {}
set user_max_comb_levels 20
set veri_cu_mode default
set veri_include_dirs [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog] [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog] [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl] [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/b65a] [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/ec67/hdl]]
set veri_lib_dirs {}
set veri_lib_files {}
set veri_synthesize_real_as_integer false
set veri_y_suffixes .v
set verilog_ext {.v .veri .ver .vg .tf}
set verilog_header_ext {.vh .svh .h}
set vhdl_ext {.vhdl .vhd .vho .hdl}
set vhdl_std_package_ids_as_keywords true
BPS::set_resultprefix {}
BPS::set_xilinx_library 2018.2
BPS::set_altera_library none
BPS::set_microsemi_library none -work {}
BPS::set_assertion_format SVA -enabled false
BPS::set_assertion_format PSL -enabled true
BPS::set_mcp_setup_and_hold_time -disabled

################################################
## Report Options
################################################
BPS::set_report -all false
BPS::set_report -ace true
BPS::set_report -bpsvdbinfo false
BPS::set_report -clock true
BPS::set_report -constraint_verification false
BPS::set_report -counter false
BPS::set_report -cyclic_signals false
BPS::set_report -cyclic_registers false
BPS::set_report -disabled_code false
BPS::set_report -dff true
BPS::set_report -gated_clock true
BPS::set_report -equivalent_clock true
BPS::set_report -fsm false
BPS::set_report -hierarchical_object_count false
BPS::set_report -ite false
BPS::set_report -latch true
BPS::set_report -license false
BPS::set_report -module false
BPS::set_report -muxes_driving_dff false
BPS::set_report -net false
BPS::set_report -object_count false
BPS::set_report -keywords false
BPS::set_report -parameter false
BPS::set_report -port false
BPS::set_report -pulse_generator false
BPS::set_report -ram false
BPS::set_report -register_clock false
BPS::set_report -reset true
BPS::set_report -clock_domain_crossings false
BPS::set_report -runtime false
BPS::set_report -sloc false
BPS::set_log_options -paths false
BPS::set_log_options -systeminfo false
BPS::set_log_options -timestamp_messages false
BPS::set_log_options -mustfixsummary false
BPS::set_log_options -wontfixsummary false

################################################
## Enabled Checks
################################################
BPS::set_check_enabled * -enabled false

################################################
## Logging Options
################################################
BPS::clear_log_package_summary
BPS::set_memorystateinterval 0

################################################
## Naming Analysis Settings
################################################
BPS::reset_naming_options
# Check 'NAME_ANALYSIS_REGISTERS' is disabled
#     BPS::set_naming_option -type DFFs -regex .*_reg -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKS' is disabled
#     BPS::set_naming_option -type {Internal Clocks} -regex {${PARENT_CLOCK}.*} -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKS' is disabled
#     BPS::set_naming_option -type {Clocks - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_RESETS' is disabled
#     BPS::set_naming_option -type {Resets - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_SETS' is disabled
#     BPS::set_naming_option -type {Sets - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKENABLE' is disabled
#     BPS::set_naming_option -type {Clock Gating/Enabling Signals - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'STATE_VAR_NAME' is disabled
#     BPS::set_naming_option -type {FSM State Name - Next State} -regex (.*_next)|(.*_ns) -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'IDENTIFY_STATIC_CONTROL_REGISTERS' is disabled
#     BPS::set_naming_option -type {Identify - Static Control Registers} -regex (.*_cfg)|(config.*) -disallowed_regex {} -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Top Level Clocks} -regex (.*ck.*)|(.*clk.*)|(.*clock.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Internal Clocks} -regex (.*ck.*)|(.*clk.*)|(.*clock.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Clock Gating Signals} -regex {} -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_SET_SIGNALS' is disabled
#     BPS::set_naming_option -type {Identify - Set Signals} -regex (_sn)|(preset)|(set)|(sn)|(.*set)|(set.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
# Check 'IDENTIFY_RESET_SIGNALS' is disabled
#     BPS::set_naming_option -type {Identify - Reset Signals} -regex (_rn)|(clear)|(clr)|(reset)|(rn)|(rst)|(.*clear.*)|(.*clr.*)|(.*reset.*)|(.*rst.*)|(.*clr)|(.*reset)|(.*rst)|(clear.*)|(clr.*)|(reset.*)|(rst.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
# Check 'IDENTIFY_DANGLING_SIGNALS' is disabled
#     BPS::set_naming_option -type {Exclude Dangling Signals} -regex .*_nc -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_DANGLING_PINS' is disabled
#     BPS::set_naming_option -type {Exclude Dangling Pins} -regex .*_nc -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_TIE_NETS' is disabled
#     BPS::set_naming_option -type {Identify - Tie Nets} -regex (TIE_HI_.*)|(TIE_LO_.*) -disallowed_regex {} -case_insensitive true -use_full_path false

################################################
## Assignment Options
################################################
set mca_report_all false
set mia_report_all false
set mea_report_all false
set meb_report_all false
set etb_report_all false
set uba_report_clocked_blocks false
set mdr_report_bidir false
set mdr_report_wired false

################################################
## Waivers
################################################

BPS::clear_all_waivers

################################################
## Ignored TCL Command Settings
################################################
BPS::clear_ignored_commands

################################################
## HDL Settings
################################################
BPS::clear_parameters
BPS::clear_ignore_parameters
BPS::clear_comp_defines
BPS::set_language_checking_level default
BPS::clear_input_files
BPS::add_input_files -comp_unit_mode Default -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/099c/MT9M114.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_CAM_interface_0_0/synth/design_1_CAM_interface_0_0.v]]
BPS::add_input_files -work lib_pkg_v1_0_2 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd]]
BPS::add_input_files -work lib_cdc_v1_0_2 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd]]
BPS::add_input_files -work axi_lite_ipif_v3_0_4 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd]]
BPS::add_input_files -work interrupt_control_v3_1_4 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd]]
BPS::add_input_files -work axi_iic_v2_0_20 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/df5e/hdl/axi_iic_v2_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/synth/design_1_axi_iic_0_0.vhd]]
BPS::add_input_files -work axi_intc_v4_1_11 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/synth/design_1_axi_intc_0_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/synth/bd_afc3.v]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/synth/bd_afc3_s00a2s_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/synth/bd_afc3_s01a2s_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/synth/bd_afc3_m00s2a_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/synth/bd_afc3_m00e_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/synth/bd_afc3_m00arn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/synth/bd_afc3_m00rn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/synth/bd_afc3_m00awn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/synth/bd_afc3_m00wn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/synth/bd_afc3_m00bn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/synth/bd_afc3_sarn_1.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/synth/bd_afc3_srn_1.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/synth/bd_afc3_s01mmu_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/synth/bd_afc3_s01tr_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/synth/bd_afc3_s01sic_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/synth/bd_afc3_sarn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/synth/bd_afc3_srn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/synth/bd_afc3_sawn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/synth/bd_afc3_swn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/synth/bd_afc3_sbn_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/synth/bd_afc3_s00mmu_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/synth/bd_afc3_s00tr_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/synth/bd_afc3_s00sic_0.sv]]
BPS::add_input_files -work smartconnect_v1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/synth/bd_afc3_arsw_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/synth/bd_afc3_rsw_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/synth/bd_afc3_awsw_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/synth/bd_afc3_wsw_0.sv]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/synth/bd_afc3_bsw_0.sv]]
BPS::add_input_files -work xlconstant_v1_1_5 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/synth/bd_afc3_one_0.v]]
BPS::add_input_files -work proc_sys_reset_v5_0_12 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/synth/bd_afc3_psr_aclk_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/synth/design_1_axi_smc_0.v]]
BPS::add_input_files -work lib_srl_fifo_v1_0_2 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd]]
BPS::add_input_files -work axi_uartlite_v2_0_21 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/synth/design_1_axi_uartlite_0_0.vhd]]
BPS::add_input_files -work axis_infrastructure_v1_1_0 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v]]
BPS::add_input_files -work axis_data_fifo_v1_1_18 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/synth/design_1_axis_data_fifo_0_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v]]
BPS::add_input_files -work lmb_bram_if_cntlr_v4_0_15 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/synth/design_1_dlmb_bram_if_cntlr_0.vhd]]
BPS::add_input_files -work lmb_v10_v3_0_9 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/synth/design_1_dlmb_v10_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/synth/design_1_ilmb_bram_if_cntlr_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/synth/design_1_ilmb_v10_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/synth/design_1_lmb_bram_0.vhd]]
BPS::add_input_files -work mdm_v3_2_14 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/synth/design_1_mdm_1_0.vhd]]
BPS::add_input_files -work microblaze_v10_0_7 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/synth/design_1_microblaze_0_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_addr_decode.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_read.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg_bank.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_top.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_write.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_ar_channel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_aw_channel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_b_channel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_arbiter.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_fsm.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_translator.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_fifo.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_incr_cmd.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_r_channel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_simple_fifo.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wrap_cmd.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wr_cmd_fsm.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_w_channel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axic_register_slice.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_register_slice.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_upsizer.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_a_upsizer.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_and.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_and.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_or.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_or.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_command_fifo.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel_static.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_r_upsizer.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_w_upsizer.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_clk_ibuf.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_infrastructure.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_iodelay_ctrl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_tempmon.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_mux.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_row_col.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_select.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_cntrl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_common.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_compare.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_mach.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_queue.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_state.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_col_mach.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_mc.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_cntrl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_common.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_mach.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_round_robin_arb.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_buf.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_dec_fix.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_gen.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_merge_enc.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_fi_xor.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_memc_ui_top_axi.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_mem_intfc.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_group_io.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_lane.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_calib_top.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_if_post_fifo.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy_wrapper.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_of_pre_fifo.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_4lanes.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ck_addr_cmd_delay.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal_hr.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_init.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_cntlr.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_data.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_edge.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_lim.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_mux.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_po_cntlr.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_samp.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_oclkdelay_cal.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_prbs_rdlvl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_rdlvl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_tempmon.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_top.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrcal.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl_off_delay.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_prbs_gen.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_skip_calib_tap.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_cc.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_edge_store.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_meta.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_pd.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_tap_base.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_top.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_cmd.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_rd_data.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_top.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_wr_data.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/synth/design_1_rst_mig_7series_0_81M_0.vhd]]
BPS::add_input_files -work util_vector_logic_v2_0_1 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_util_vector_logic_3_0/synth/design_1_util_vector_logic_3_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_util_vector_logic_4_0/synth/design_1_util_vector_logic_4_0.v]]
BPS::add_input_files -work v_axi4s_vid_out_v4_0_9 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/9a07/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/synth/design_1_v_axi4s_vid_out_0_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_AXIvideo2MultiBayer2.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_Debayer.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_DIV1_TABLE.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_DIV2_TABLE.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerG_linebuf_bkb.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRandBatG.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRatBorBatR.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_DebayerRatBorBatRkbM.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w8_d2_A.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w8_d2_A_x.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w16_d2_A.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_fifo_w16_d2_A_x.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_MultiPixStream2AXIvi.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_reg_unsigned_short_s.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_CTRL_s_axi.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mac_muhbi.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_mug8j.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_muibs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_mujbC.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mux_32mb6.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mux_53fYi.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_ZipperRemoval.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mac_mujbC.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/verilog/design_1_v_demosaic_0_0_v_demosaic_mul_muhbi.v]]
BPS::add_input_files -work v_demosaic_v1_0_3 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/hdl/v_demosaic_v1_0_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_0/synth/design_1_v_demosaic_0_0.v]]
BPS::add_input_files -work v_tc_v6_1_12 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/6694/hdl/v_tc_v6_1_vh_rfs.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_tc_0_0/synth/design_1_v_tc_0_0.vhd]]
BPS::add_input_files -work v_vid_in_axi4s_v4_0_8 -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/d987/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/synth/design_1_v_vid_in_axi4s_0_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/synth/design_1_xlconstant_0_0.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/e40a/hdl/verilog/synchro.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/e40a/hdl/vhdl/clock_generator_pll_7_to_1_diff_sdr.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/e40a/hdl/vhdl/serdes_7_to_1_diff_sdr.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/e40a/hdl/verilog/zed_ali3_controller_core.v]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ipshared/e40a/hdl/vhdl/zed_ali3_controller.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_zed_ali3_controller_0_0/synth/design_1_zed_ali3_controller_0_0.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/synth/design_1.vhd]]
BPS::add_input_files -work work -language auto [list [file join $BPS::project_rel_to_dir ./s7_tdm114.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd]]
