v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -80 20 -30 {lab=IOUT}
N 20 30 20 80 {lab=#net1}
N 220 30 220 80 {lab=#net1}
N 120 80 220 80 {lab=#net1}
N 120 80 120 120 {lab=#net1}
N 120 120 140 120 {lab=#net1}
N 140 180 140 240 {lab=#net2}
N 140 300 140 350 {lab=#net3}
N -540 250 -540 300 {lab=VSSA}
N 20 80 120 80 {lab=#net1}
N -540 250 -240 250 {lab=VSSA}
N 220 -80 220 -30 {lab=IOUTB}
N 20 -0 100 -0 {lab=VSSA}
N 220 -0 290 -0 {lab=VSSA}
N 140 150 210 150 {lab=VSSA}
N 140 270 190 270 {lab=VSSA}
N 100 150 100 270 {lab=VBIAS}
N -630 200 -390 200 {lab=A}
N -630 200 -630 280 {lab=A}
N 100 430 100 460 {lab=VBIAS}
N 140 380 220 380 {lab=VSSA}
N 140 460 220 460 {lab=VSSA}
N -80 500 -40 500 {lab=VBIAS}
N -80 430 100 430 {lab=VBIAS}
N 100 380 100 430 {lab=VBIAS}
N -80 430 -80 500 {lab=VBIAS}
N -120 500 -80 500 {lab=VBIAS}
N -90 540 -70 540 {lab=#net4}
N -10 540 140 540 {lab=A}
N 140 490 140 540 {lab=A}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 0 0 0 {name=M_en
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 0 0 0 {name=M_enb
l=400n
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 150 0 0 {name=M_s1
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 270 0 0 {name=M_s2
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 380 0 0 {name=M_a0
l=400n
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 460 0 0 {name=M_a1
l=400n
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -40 520 1 0 {name=M_b0
l=400n
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -120 520 1 0 {name=M_b1
l=400n
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 0 0 0 0 {name=p_en_g sig_type=std_logic lab=EN}
C {lab_wire.sym} 180 0 0 0 {name=p_enb_g sig_type=std_logic lab=ENB}
C {lab_wire.sym} 100 210 0 0 {name=p_vbias1 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} 100 430 0 0 {name=p_vbias2 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} -150 540 2 1 {name=p_b0_g sig_type=std_logic lab=B}
C {ipin.sym} -100 0 0 0 {name=p_en lab=EN}
C {ipin.sym} -100 30 0 0 {name=p_enb lab=ENB}
C {ipin.sym} -60 210 0 0 {name=p_vbias lab=VBIAS}
C {ipin.sym} -630 280 0 0 {name=p_a lab=A}
C {ipin.sym} -270 510 1 0 {name=p_b lab=B}
C {opin.sym} 20 -80 3 0 {name=p_iout lab=IOUT}
C {opin.sym} 220 -80 3 0 {name=p_ioutb lab=IOUTB}
C {iopin.sym} -540 300 1 0 {name=p_vssa lab=VSSA}
C {lab_wire.sym} 80 0 0 0 {name=p_en_g1 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 280 0 0 0 {name=p_en_g2 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 200 150 0 0 {name=p_en_g3 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 180 270 0 0 {name=p_en_g4 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 190 380 0 0 {name=p_en_g5 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 190 460 0 0 {name=p_en_g6 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -10 540 2 0 {name=p_b1 sig_type=std_logic lab=A}
