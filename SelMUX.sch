v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -80 20 -30 {lab=MBIAS<0>}
N 180 -80 180 -30 {lab=MBIAS<1>}
N 340 -80 340 -30 {lab=MBIAS<2>}
N 500 -80 500 -30 {lab=MBIAS<3>}
N 660 -80 660 -30 {lab=MBIAS<4>}
N 820 -80 820 -30 {lab=MBIAS<5>}
N 980 -80 980 -30 {lab=MBIAS<6>}
N 1140 -80 1140 -30 {lab=MBIAS<7>}
N 20 30 20 60 {lab=N01}
N 180 30 180 60 {lab=N01}
N 100 60 180 60 {lab=N01}
N 340 30 340 60 {lab=N23}
N 500 30 500 60 {lab=N23}
N 420 60 500 60 {lab=N23}
N 660 30 660 60 {lab=N45}
N 820 30 820 60 {lab=N45}
N 740 60 820 60 {lab=N45}
N 980 30 980 60 {lab=N67}
N 1140 30 1140 60 {lab=N67}
N 1060 60 1140 60 {lab=N67}
N 100 60 100 170 {lab=N01}
N 420 60 420 170 {lab=N23}
N 740 60 740 170 {lab=N45}
N 1060 60 1060 170 {lab=N67}
N 100 170 120 170 {lab=N01}
N 420 170 440 170 {lab=N23}
N 740 170 760 170 {lab=N45}
N 1060 170 1080 170 {lab=N67}
N 120 230 120 300 {lab=N_0123}
N 440 230 440 300 {lab=N_0123}
N 280 300 440 300 {lab=N_0123}
N 760 230 760 300 {lab=N_4567}
N 1080 230 1080 300 {lab=N_4567}
N 920 300 1080 300 {lab=N_4567}
N 280 300 280 370 {lab=N_0123}
N 920 300 920 370 {lab=N_4567}
N 280 370 300 370 {lab=N_0123}
N 920 370 940 370 {lab=N_4567}
N 300 430 300 480 {lab=BIAS_OUT}
N 940 430 940 480 {lab=BIAS_OUT}
N 620 480 940 480 {lab=BIAS_OUT}
N 620 480 620 520 {lab=BIAS_OUT}
N 20 60 100 60 {lab=N01}
N 340 60 420 60 {lab=N23}
N 660 60 740 60 {lab=N45}
N 980 60 1060 60 {lab=N67}
N 120 300 280 300 {lab=N_0123}
N 760 300 920 300 {lab=N_4567}
N 300 480 620 480 {lab=BIAS_OUT}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 0 0 0 {name=MUX_L0_0
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 0 0 0 {name=MUX_L0_1
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 320 0 0 0 {name=MUX_L0_2
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 480 0 0 0 {name=MUX_L0_3
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 640 0 0 0 {name=MUX_L0_4
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 800 0 0 0 {name=MUX_L0_5
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 960 0 0 0 {name=MUX_L0_6
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1120 0 0 0 {name=MUX_L0_7
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 200 0 0 {name=MUX_L1_A
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 420 200 0 0 {name=MUX_L1_B
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 740 200 0 0 {name=MUX_L1_C
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1060 200 0 0 {name=MUX_L1_D
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 280 400 0 0 {name=MUX_L2_A
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 920 400 0 0 {name=MUX_L2_B
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 0 0 0 0 {name=p_en0_a sig_type=std_logic lab=EN_CB<0>}
C {lab_wire.sym} 160 0 0 0 {name=p_en0_b sig_type=std_logic lab=EN_CBB<0>}
C {lab_wire.sym} 320 0 0 0 {name=p_en0_c sig_type=std_logic lab=EN_CB<0>}
C {lab_wire.sym} 480 0 0 0 {name=p_en0_d sig_type=std_logic lab=EN_CBB<0>}
C {lab_wire.sym} 640 0 0 0 {name=p_en0_e sig_type=std_logic lab=EN_CB<0>}
C {lab_wire.sym} 800 0 0 0 {name=p_en0_f sig_type=std_logic lab=EN_CBB<0>}
C {lab_wire.sym} 960 0 0 0 {name=p_en0_g sig_type=std_logic lab=EN_CB<0>}
C {lab_wire.sym} 1120 0 0 0 {name=p_en0_h sig_type=std_logic lab=EN_CBB<0>}
C {lab_wire.sym} 100 200 0 0 {name=p_en1_a sig_type=std_logic lab=EN_CB<1>}
C {lab_wire.sym} 420 200 0 0 {name=p_en1_b sig_type=std_logic lab=EN_CBB<1>}
C {lab_wire.sym} 740 200 0 0 {name=p_en1_c sig_type=std_logic lab=EN_CB<1>}
C {lab_wire.sym} 1060 200 0 0 {name=p_en1_d sig_type=std_logic lab=EN_CBB<1>}
C {lab_wire.sym} 280 400 0 0 {name=p_en2_a sig_type=std_logic lab=EN_CB<2>}
C {lab_wire.sym} 920 400 0 0 {name=p_en2_b sig_type=std_logic lab=EN_CBB<2>}
C {lab_wire.sym} 20 -80 1 0 {name=p_mb0 sig_type=std_logic lab=MBIAS<0>}
C {lab_wire.sym} 180 -80 1 0 {name=p_mb1 sig_type=std_logic lab=MBIAS<1>}
C {lab_wire.sym} 340 -80 1 0 {name=p_mb2 sig_type=std_logic lab=MBIAS<2>}
C {lab_wire.sym} 500 -80 1 0 {name=p_mb3 sig_type=std_logic lab=MBIAS<3>}
C {lab_wire.sym} 660 -80 1 0 {name=p_mb4 sig_type=std_logic lab=MBIAS<4>}
C {lab_wire.sym} 820 -80 1 0 {name=p_mb5 sig_type=std_logic lab=MBIAS<5>}
C {lab_wire.sym} 980 -80 1 0 {name=p_mb6 sig_type=std_logic lab=MBIAS<6>}
C {lab_wire.sym} 1140 -80 1 0 {name=p_mb7 sig_type=std_logic lab=MBIAS<7>}
C {ipin.sym} -150 -80 0 0 {name=p_mbias_bus lab=MBIAS<7:0>}
C {ipin.sym} -150 -30 0 0 {name=p_en_cb0 lab=EN_CB<0>}
C {ipin.sym} -150 0 0 0 {name=p_en_cbb0 lab=EN_CBB<0>}
C {ipin.sym} -150 30 0 0 {name=p_en_cb1 lab=EN_CB<1>}
C {ipin.sym} -150 60 0 0 {name=p_en_cbb1 lab=EN_CBB<1>}
C {ipin.sym} -150 90 0 0 {name=p_en_cb2 lab=EN_CB<2>}
C {ipin.sym} -150 120 0 0 {name=p_en_cbb2 lab=EN_CBB<2>}
C {iopin.sym} 620 520 1 0 {name=p_bias_out lab=BIAS_OUT}
C {iopin.sym} -200 520 0 1 {name=p_vssa lab=VSSA}
