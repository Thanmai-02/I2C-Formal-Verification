#!/bin/csh -f
setenv VCS_HOME /pkgs/synopsys/current/vc_static/vcs-mx
setenv VC_STATIC_HOME /pkgs/synopsys/current/vc_static
setenv SYNOPSYS_SIM_SETUP /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/synopsys_sim.setup

$VCS_HOME/bin/vlogan  -kdb=common_elab /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/undef_vcs.v -Xvd_opts=-silent,+disable_message+C00373,-ssy,-ssv,-ssz -file /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/analyzeCmd1 -kdb=incopt  -Xufe=parallel:incrdump  -full64  -libfile_opt 

$VCS_HOME/bin/vlogan  -kdb=common_elab /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/undef_vcs.v -Xvd_opts=-silent,+disable_message+C00373,-ssy,-ssv,-ssz -file /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/analyzeCmd2 -kdb=incopt  -Xufe=parallel:incrdump  -full64  -libfile_opt 

$VCS_HOME/bin/vlogan  -kdb=common_elab /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/undef_vcs.v -Xvd_opts=-silent,+disable_message+C00373,-ssy,-ssv,-ssz -file /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/analyzeCmd3 -kdb=incopt  -Xufe=parallel:incrdump  -full64  -libfile_opt 

$VCS_HOME/bin/vcs -file /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/.internal/design/elaborateCmd -Xvcstatic_extns=0x4  -Xvcstatic_extns=0x1000  -Xvcstatic_extns=0x100  +warn=noSM_CCE  -units  -error=IRRIPS  -kdb=common_elab  -Xufe=parallel:incrdump  -kdb=incopt  +warn=noKDB-ELAB-E  -Xverdi_elab_opts=-saveLevel  -verdi_opts "-logdir /home/bhanusai/common/Desktop/ECE506-Project_Fall2026/MUX/Run/vcst_rtdb/verdi/elabcomLog " -Xvd_opts=,-ssy,-ssv,-ssz,-silent,+disable_message+C00373, -full64 
