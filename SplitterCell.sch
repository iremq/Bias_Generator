v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -660 -270 {}
P 4 5 -750 -450 -580 -450 -580 -280 -750 -280 -750 -450 {}
P 4 1 -420 -270 {}
P 4 5 -510 -450 -340 -450 -340 -280 -510 -280 -510 -450 {}
P 4 1 -180 -270 {}
P 4 5 -270 -450 -100 -450 -100 -280 -270 -280 -270 -450 {}
T {POWER SUPPLY} -750 -480 0 0 0.4 0.4 {}
T {ANALOG SIGNAL} -510 -480 0 0 0.4 0.4 {}
T {DIGITAL SIGNAL} -270 -480 0 0 0.4 0.4 {}
N 20 -80 20 -30 {lab=out_UP}
N 20 30 20 80 {lab=#net1}
N 220 30 220 80 {lab=#net1}
N 120 80 220 80 {lab=#net1}
N 120 80 120 120 {lab=#net1}
N 20 80 120 80 {lab=#net1}
N 220 -80 220 -30 {lab=out_UPB}
N 150 0 220 0 {lab=vssa}
N 50 150 120 150 {lab=vssa}
N 160 210 160 330 {lab=bias_VN}
N 240 210 280 210 {lab=bias_VN}
N 160 150 160 210 {lab=bias_VN}
N 160 210 240 210 {lab=bias_VN}
N 410 850 450 850 {lab=B_UN}
N 240 600 240 810 {lab=bias_VN}
N 50 210 120 210 {lab=vssa}
N 50 270 120 270 {lab=vssa}
N 50 330 120 330 {lab=vssa}
N 50 520 120 520 {lab=vssa}
N 160 600 160 700 {lab=bias_VN}
N 50 580 120 580 {lab=vssa}
N 50 640 120 640 {lab=vssa}
N 50 700 120 700 {lab=vssa}
N 160 600 240 600 {lab=bias_VN}
N 160 520 160 600 {lab=bias_VN}
N 240 210 240 600 {lab=bias_VN}
N 10 850 120 850 {lab=A_UN}
N 120 850 170 850 {lab=A_UN}
N 120 730 120 850 {lab=A_UN}
N 200 850 200 920 {lab=vssa}
N 260 850 260 920 {lab=vssa}
N 320 850 320 920 {lab=vssa}
N 380 850 380 920 {lab=vssa}
N 240 810 380 810 {lab=bias_VN}
N 200 810 240 810 {lab=bias_VN}
N 20 -0 80 -0 {lab=vssa}
N 120 360 120 490 {lab=#net2}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 0 0 0 {name=M_en
l=1u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 240 0 0 1 {name=M_enb
l=1u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 150 0 1 {name=M_s1
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -20 0 0 0 {name=p_en_g sig_type=std_logic lab=en_VS}
C {lab_wire.sym} 260 0 0 1 {name=p_enb_g sig_type=std_logic lab=en_VSB}
C {lab_wire.sym} 280 210 0 1 {name=p_vbias1 sig_type=std_logic lab=bias_VN}
C {lab_wire.sym} 450 850 2 0 {name=p_b0_g sig_type=std_logic lab=B_UN}
C {ipin.sym} -220 -400 3 0 {name=p_en lab=en_VS}
C {ipin.sym} -150 -400 3 0 {name=p_enb lab=en_VSB}
C {ipin.sym} -370 -400 3 0 {name=p_vbias lab=bias_VN}
C {iopin.sym} -420 -400 1 0 {name=p_b lab=B_UN}
C {iopin.sym} 20 -80 3 0 {name=p_out_UP lab=out_UP}
C {iopin.sym} 220 -80 3 0 {name=p_out_UPB lab=out_UPB}
C {lab_wire.sym} 80 0 0 1 {name=p_en_g1 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 150 0 0 0 {name=p_en_g2 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 50 150 0 0 {name=p_en_g3 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 10 850 2 1 {name=p_b1 sig_type=std_logic lab=A_UN}
C {iopin.sym} -720 -400 1 0 {name=p_vssa1 lab=vssa}
C {iopin.sym} -480 -400 1 0 {name=p_a1 lab=A_UN}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 210 0 1 {name=M_s2
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 210 0 0 {name=p_en_g4 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 270 0 1 {name=M_s3
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 270 0 0 {name=p_en_g7 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 330 0 1 {name=M_s4
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 330 0 0 {name=p_en_g8 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 520 0 1 {name=M_s5
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 520 0 0 {name=p_en_g5 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 580 0 1 {name=M_s6
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 580 0 0 {name=p_en_g6 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 640 0 1 {name=M_s7
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 640 0 0 {name=p_en_g9 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 700 0 1 {name=M_s8
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 50 700 0 0 {name=p_en_g10 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 830 3 1 {name=M_s9
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 200 920 3 0 {name=p_en_g11 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 260 830 3 1 {name=M_s10
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 260 920 3 0 {name=p_en_g12 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 320 830 3 1 {name=M_s11
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 320 920 3 0 {name=p_en_g13 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 380 830 3 1 {name=M_s12
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 380 920 3 0 {name=p_en_g14 sig_type=std_logic lab=vssa}
