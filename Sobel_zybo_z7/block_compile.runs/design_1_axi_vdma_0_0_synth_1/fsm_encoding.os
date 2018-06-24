
 add_fsm_encoding \
       {axi_datamover_pcc.sig_pcc_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {axi_datamover_ibttcc.sig_csm_state} \
       { }  \
       {{000 000} {001 001} {010 100} {011 101} {100 110} {101 010} {110 011} }

 add_fsm_encoding \
       {axi_datamover_ibttcc.sig_psm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 101} {111 100} }

 add_fsm_encoding \
       {axi_datamover_s2mm_realign.sig_cmdcntl_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 101} {101 100} }

 add_fsm_encoding \
       {axi_vdma_v6_3_3_axis_dwidth_converter_v1_0_axisc_upsizer.state} \
       { }  \
       {{000 00010} {001 00001} {010 00100} {011 01000} {101 10000} }

 add_fsm_encoding \
       {axi_vdma_sm.dmacntrl_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 101} {100 011} {101 100} }

 add_fsm_encoding \
       {axi_vdma_v6_3_3_axis_dwidth_converter_v1_0_axisc_upsizer__parameterized0.state} \
       { }  \
       {{000 00010} {001 00001} {010 00100} {011 01000} {101 10000} }

 add_fsm_encoding \
       {axi_vdma_sm__parameterized0.dmacntrl_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 101} {100 011} {101 100} }
