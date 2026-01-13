verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home1/BRN46/CGuruS/VLSI_RN/UVM_LABS/ROUTER1X3/sim/simv" -args \
           "-a vcs.log -cm_dir ./mem_cov1 +ntb_random_seed_automatic +UVM_TESTNAME=small_sequence_test"
debImport "-dbdir" \
          "/home1/BRN46/CGuruS/VLSI_RN/UVM_LABS/ROUTER1X3/sim/simv.daidir"
debLoadSimResult /home1/BRN46/CGuruS/VLSI_RN/UVM_LABS/ROUTER1X3/sim/wave1.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top.in.SRC_DRV" -win $_nTrace1
srcHBSelect "top.in.SRC_DRV" -win $_nTrace1
srcHBSelect "top.in.src_drv_cb" -win $_nTrace1
srcHBSelect "top.in.SRC_DRV" -win $_nTrace1
srcHBSelect "top.in" -win $_nTrace1
srcSetScope "top.in" -delim "." -win $_nTrace1
srcHBSelect "top.in" -win $_nTrace1
srcHBSelect "top.in" -win $_nTrace1
srcHBSelect "top.in" -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelectAll -curPage
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home1/BRN46/CGuruS/VLSI_RN/UVM_LABS/ROUTER1X3/sim/wave1.fsdb}
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave3
srcHBSelect "top.in0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalView -off
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.in.resetn"
srcSignalViewSelect "top.in.resetn" "top.in.pkt_valid"
srcSignalViewSelect "top.in.resetn"
srcSignalViewSelect "top.in.resetn" "top.in.pkt_valid"
srcSignalViewSelect "top.in.resetn" "top.in.pkt_valid" "top.in.data_in\[7:0\]"
srcSignalViewSelect "top.in.resetn" "top.in.pkt_valid" "top.in.data_in\[7:0\]" \
           "top.in.error"
srcSignalViewSelect "top.in.resetn" "top.in.pkt_valid" "top.in.data_in\[7:0\]" \
           "top.in.error" "top.in.busy"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
verdiSetActWin -win $_nWave3
srcHBSelect "top.in0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top.in0" -win $_nTrace1
srcHBSelect "top.in0" -win $_nTrace1
srcHBSelect "top.in0" -win $_nTrace1
srcHBSelect "top.in0" -win $_nTrace1
srcSetScope "top.in0" -delim "." -win $_nTrace1
srcHBSelect "top.in0" -win $_nTrace1
srcSignalViewSelect "top.in0.valid_out"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.in0.valid_out" "top.in0.read_enb"
srcSignalViewSelect "top.in0.valid_out" "top.in0.read_enb" \
           "top.in0.data_out\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave3
srcHBSelect "top.in1" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top.in1" -win $_nTrace1
srcSetScope "top.in1" -delim "." -win $_nTrace1
srcHBSelect "top.in1" -win $_nTrace1
srcSignalViewSelect "top.in1.valid_out"
srcSignalViewSelect "top.in1.valid_out" "top.in1.read_enb"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.in1.valid_out" "top.in1.read_enb" \
           "top.in1.data_out\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave3
srcHBSelect "top.in2" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top.in2" -win $_nTrace1
srcSetScope "top.in2" -delim "." -win $_nTrace1
srcHBSelect "top.in2" -win $_nTrace1
srcSignalViewSelect "top.in2.valid_out"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.in2.valid_out" "top.in2.read_enb"
srcSignalViewSelect "top.in2.valid_out" "top.in2.read_enb" \
           "top.in2.data_out\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave3
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
verdiSetActWin -win $_nWave3
wvSetCursor -win $_nWave3 6170.112782 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 10012.455644 -snap {("G1" 15)}
wvSetCursor -win $_nWave3 25871.600714 -snap {("G2" 0)}
wvSelectSignal -win $_nWave3 {( "G1" 18 )} 
wvSetCursor -win $_nWave3 11985.713325 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 16589.981249 -snap {("G1" 4)}
wvSetCursor -win $_nWave3 33764.631441 -snap {("G1" 2)}
wvSetCursor -win $_nWave3 46188.846473 -snap {("G1" 2)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvTpfCloseForm -win $_nWave3
wvGetSignalClose -win $_nWave3
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCloseWindow -win $_nWave3
verdiSetActWin -win $_nWave2
debExit
