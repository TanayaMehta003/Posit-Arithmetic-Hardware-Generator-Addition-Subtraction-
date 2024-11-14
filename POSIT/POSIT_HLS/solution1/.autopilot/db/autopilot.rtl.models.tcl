set SynModuleInfo {
  {SRCNAME decoder_Pipeline_decoder_label0 MODELNAME decoder_Pipeline_decoder_label0 RTLNAME decoder_decoder_Pipeline_decoder_label0
    SUBMODULES {
      {MODELNAME decoder_flow_control_loop_pipe_sequential_init RTLNAME decoder_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME decoder_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME decoder_Pipeline_decoder_label1 MODELNAME decoder_Pipeline_decoder_label1 RTLNAME decoder_decoder_Pipeline_decoder_label1}
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME decoder_pow_generic_double_s
    SUBMODULES {
      {MODELNAME decoder_mul_54s_67ns_120_5_1 RTLNAME decoder_mul_54s_67ns_120_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME decoder_mul_13s_71s_71_5_1 RTLNAME decoder_mul_13s_71s_71_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME decoder_mul_43ns_36ns_79_3_1 RTLNAME decoder_mul_43ns_36ns_79_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_mul_49ns_44ns_93_5_1 RTLNAME decoder_mul_49ns_44ns_93_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME decoder_mul_50ns_50ns_100_5_1 RTLNAME decoder_mul_50ns_50ns_100_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME decoder_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME decoder_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arbkb RTLNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arracud RTLNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arradEe RTLNAME decoder_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decoder_Pipeline_decoder_label2 MODELNAME decoder_Pipeline_decoder_label2 RTLNAME decoder_decoder_Pipeline_decoder_label2}
  {SRCNAME decoder_Pipeline_decoder_label3 MODELNAME decoder_Pipeline_decoder_label3 RTLNAME decoder_decoder_Pipeline_decoder_label3}
  {SRCNAME decoder_Pipeline_decoder_label4 MODELNAME decoder_Pipeline_decoder_label4 RTLNAME decoder_decoder_Pipeline_decoder_label4}
  {SRCNAME decoder_Pipeline_decoder_label9 MODELNAME decoder_Pipeline_decoder_label9 RTLNAME decoder_decoder_Pipeline_decoder_label9}
  {SRCNAME decoder_Pipeline_decoder_label7 MODELNAME decoder_Pipeline_decoder_label7 RTLNAME decoder_decoder_Pipeline_decoder_label7}
  {SRCNAME decoder_Pipeline_decoder_label8 MODELNAME decoder_Pipeline_decoder_label8 RTLNAME decoder_decoder_Pipeline_decoder_label8}
  {SRCNAME decoder_Pipeline_decoder_label5 MODELNAME decoder_Pipeline_decoder_label5 RTLNAME decoder_decoder_Pipeline_decoder_label5}
  {SRCNAME decoder_Pipeline_decoder_label6 MODELNAME decoder_Pipeline_decoder_label6 RTLNAME decoder_decoder_Pipeline_decoder_label6}
  {SRCNAME decoder_Pipeline_decoder_label10 MODELNAME decoder_Pipeline_decoder_label10 RTLNAME decoder_decoder_Pipeline_decoder_label10}
  {SRCNAME decoder_Pipeline_decoder_label12 MODELNAME decoder_Pipeline_decoder_label12 RTLNAME decoder_decoder_Pipeline_decoder_label12}
  {SRCNAME decoder_Pipeline_decoder_label11 MODELNAME decoder_Pipeline_decoder_label11 RTLNAME decoder_decoder_Pipeline_decoder_label11}
  {SRCNAME decoder_Pipeline_decoder_label14 MODELNAME decoder_Pipeline_decoder_label14 RTLNAME decoder_decoder_Pipeline_decoder_label14}
  {SRCNAME decoder_Pipeline_decoder_label13 MODELNAME decoder_Pipeline_decoder_label13 RTLNAME decoder_decoder_Pipeline_decoder_label13}
  {SRCNAME decoder MODELNAME decoder RTLNAME decoder IS_TOP 1
    SUBMODULES {
      {MODELNAME decoder_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME decoder_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME decoder_dmul_64ns_64ns_64_7_max_dsp_1 RTLNAME decoder_dmul_64ns_64ns_64_7_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME decoder_sitodp_32s_64_6_no_dsp_1 RTLNAME decoder_sitodp_32s_64_6_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME decoder_sitodp_32ns_64_6_no_dsp_1 RTLNAME decoder_sitodp_32ns_64_6_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
    }
  }
}
