v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -350 -340 {}
P 4 5 -440 -520 -270 -520 -270 -350 -440 -350 -440 -520 {}
P 4 1 -110 -340 {}
P 4 5 -200 -520 -30 -520 -30 -350 -200 -350 -200 -520 {}
P 4 1 130 -340 {}
P 4 5 40 -520 210 -520 210 -350 40 -350 40 -520 {}
T {POWER SUPPLY} -440 -550 0 0 0.4 0.4 {}
T {ANALOG SIGNAL} -200 -550 0 0 0.4 0.4 {}
T {DIGITAL SIGNAL} 40 -550 0 0 0.4 0.4 {}
N -140 870 -30 870 {lab=#net1}
N -140 550 -30 550 {lab=#net2}
N -140 230 -30 230 {lab=#net3}
N -140 -90 -30 -90 {lab=#net4}
N 100 690 170 690 {lab=#net5}
N 100 50 170 50 {lab=#net6}
N 280 50 280 370 {lab=MASTER_biasout_VN}
N 280 370 320 370 {lab=MASTER_biasout_VN}
N 280 370 280 690 {lab=MASTER_biasout_VN}
N -200 850 -200 900 {lab=en_VSB[0]}
N -200 1010 -200 1050 {lab=en_VS[0]}
N -200 690 -200 730 {lab=en_VS[0]}
N -200 530 -200 580 {lab=en_VSB[0]}
N -200 370 -200 410 {lab=en_VS[0]}
N -200 50 -200 70 {lab=en_VS[0]}
N -200 -110 -200 -80 {lab=en_VSB[0]}
N -200 210 -200 260 {lab=en_VSB[0]}
N 0 910 0 950 {lab=en_VS[1]}
N 0 590 0 640 {lab=en_VSB[1]}
N 0 270 0 310 {lab=en_VS[1]}
N 0 -50 0 0 {lab=en_VSB[1]}
N 200 90 200 140 {lab=en_VSB[2]}
N 200 730 200 750 {lab=en_VS[2]}
N -140 170 -140 230 {lab=#net3}
N -140 230 -140 330 {lab=#net3}
N -140 490 -140 550 {lab=#net2}
N -140 550 -140 650 {lab=#net2}
N -140 810 -140 870 {lab=#net1}
N -140 870 -140 970 {lab=#net1}
N 100 550 100 690 {lab=#net5}
N 100 690 100 870 {lab=#net5}
N -140 -150 -140 -90 {lab=#net4}
N -140 -90 -140 10 {lab=#net4}
N 100 -90 100 50 {lab=#net6}
N 100 50 100 230 {lab=#net6}
N -340 -150 -230 -150 {lab=#net7}
N -340 10 -230 10 {lab=#net8}
N -340 170 -230 170 {lab=#net9}
N -340 330 -230 330 {lab=#net10}
N -340 490 -230 490 {lab=#net11}
N -340 650 -230 650 {lab=#net12}
N -340 810 -230 810 {lab=#net13}
N -340 970 -230 970 {lab=#net14}
N -490 -150 -400 -150 {lab=MASTER_bias_VN[0]}
N -490 10 -400 10 {lab=MASTER_bias_VN[1]}
N -490 170 -400 170 {lab=MASTER_bias_VN[2]}
N -490 330 -400 330 {lab=MASTER_bias_VN[3]}
N -490 490 -400 490 {lab=MASTER_bias_VN[4]}
N -490 650 -400 650 {lab=MASTER_bias_VN[5]}
N -490 810 -400 810 {lab=MASTER_bias_VN[6]}
N -490 970 -400 970 {lab=MASTER_bias_VN[7]}
N -170 170 -140 170 {lab=#net3}
N -170 10 -140 10 {lab=#net4}
N -170 -150 -140 -150 {lab=#net4}
N 30 870 100 870 {lab=#net5}
N -170 970 -140 970 {lab=#net1}
N -170 810 -140 810 {lab=#net1}
N -170 650 -140 650 {lab=#net2}
N -170 490 -140 490 {lab=#net2}
N -170 330 -140 330 {lab=#net3}
N 30 -90 100 -90 {lab=#net6}
N 30 230 100 230 {lab=#net6}
N 30 550 100 550 {lab=#net5}
N 230 50 280 50 {lab=MASTER_biasout_VN}
N 230 690 280 690 {lab=MASTER_biasout_VN}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 990 3 0 {name=MUX_L0_0
l=0.45u
w=5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 830 3 0 {name=MUX_L0_1
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 670 3 0 {name=MUX_L0_2
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 510 3 0 {name=MUX_L0_3
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 350 3 0 {name=MUX_L0_4
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 190 3 0 {name=MUX_L0_5
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 30 3 0 {name=MUX_L0_6
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -200 -130 3 0 {name=MUX_L0_7
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 890 3 0 {name=MUX_L1_A
l=0.45u
w=5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 570 3 0 {name=MUX_L1_B
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 250 3 0 {name=MUX_L1_C
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 -70 3 0 {name=MUX_L1_D
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 710 3 0 {name=MUX_L2_A
l=0.45u
w=5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 70 3 0 {name=MUX_L2_B
l=10u
w=0.45u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -200 1010 3 0 {name=p_en0_a sig_type=std_logic lab=en_VS[0]}
C {lab_wire.sym} -200 850 3 0 {name=p_en0_b sig_type=std_logic lab=en_VSB[0]}
C {lab_wire.sym} -200 690 3 0 {name=p_en0_c sig_type=std_logic lab=en_VS[0]}
C {lab_wire.sym} -200 530 3 0 {name=p_en0_d sig_type=std_logic lab=en_VSB[0]}
C {lab_wire.sym} -200 370 3 0 {name=p_en0_e sig_type=std_logic lab=en_VS[0]}
C {lab_wire.sym} -200 210 3 0 {name=p_en0_f sig_type=std_logic lab=en_VSB[0]}
C {lab_wire.sym} -200 50 3 0 {name=p_en0_g sig_type=std_logic lab=en_VS[0]}
C {lab_wire.sym} -200 -110 3 0 {name=p_en0_h sig_type=std_logic lab=en_VSB[0]}
C {lab_wire.sym} 0 910 3 0 {name=p_en1_a sig_type=std_logic lab=en_VS[1]}
C {lab_wire.sym} 0 590 3 0 {name=p_en1_b sig_type=std_logic lab=en_VSB[1]}
C {lab_wire.sym} 0 270 3 0 {name=p_en1_c sig_type=std_logic lab=en_VS[1]}
C {lab_wire.sym} 0 -50 3 0 {name=p_en1_d sig_type=std_logic lab=en_VSB[1]}
C {lab_wire.sym} 200 730 3 0 {name=p_en2_a sig_type=std_logic lab=en_VS[2]}
C {lab_wire.sym} 200 90 3 0 {name=p_en2_b sig_type=std_logic lab=en_VSB[2]}
C {lab_wire.sym} -490 -150 0 0 {name=p_mb0 sig_type=std_logic lab=MASTER_bias_VN[0]}
C {lab_wire.sym} -490 10 0 0 {name=p_mb1 sig_type=std_logic lab=MASTER_bias_VN[1]}
C {lab_wire.sym} -490 170 0 0 {name=p_mb2 sig_type=std_logic lab=MASTER_bias_VN[2]}
C {lab_wire.sym} -490 330 0 0 {name=p_mb3 sig_type=std_logic lab=MASTER_bias_VN[3]}
C {lab_wire.sym} -490 490 0 0 {name=p_mb4 sig_type=std_logic lab=MASTER_bias_VN[4]}
C {lab_wire.sym} -490 650 0 0 {name=p_mb5 sig_type=std_logic lab=MASTER_bias_VN[5]}
C {lab_wire.sym} -490 810 0 0 {name=p_mb6 sig_type=std_logic lab=MASTER_bias_VN[6]}
C {lab_wire.sym} -490 970 0 0 {name=p_mb7 sig_type=std_logic lab=MASTER_bias_VN[7]}
C {ipin.sym} -120 -470 3 0 {name=p_mbias_bus lab=MASTER_bias_VN[7:0]}
C {opin.sym} 320 370 0 0 {name=p_bias_out lab=MASTER_biasout_VN}
C {ipin.sym} 80 -470 3 0 {name=p_en_cb1 lab=en_VS[2:0]}
C {ipin.sym} 160 -470 3 0 {name=p_en_cbb1 lab=en_VSB[2:0]}
C {devices/vsource.sym} -370 -150 3 0 {name=V_ref_u_0 value=0
}
C {devices/vsource.sym} -370 10 3 0 {name=V_ref_u_1 value=0
}
C {devices/vsource.sym} -370 170 3 0 {name=V_ref_u_2 value=0
}
C {devices/vsource.sym} -370 330 3 0 {name=V_ref_u_3 value=0
}
C {devices/vsource.sym} -370 490 3 0 {name=V_ref_u_4 value=0
}
C {devices/vsource.sym} -370 650 3 0 {name=V_ref_u_5 value=0
}
C {devices/vsource.sym} -370 810 3 0 {name=V_ref_u_6 value=0
}
C {devices/vsource.sym} -370 970 3 0 {name=V_ref_u_7 value=0
}
C {iopin.sym} -360 -470 1 0 {name=p_en_cbb2 lab=vssa}
C {lab_wire.sym} -200 170 3 1 {name=p_en1 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 0 230 3 1 {name=p_en2 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 330 3 1 {name=p_en3 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 490 3 1 {name=p_en4 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 650 3 1 {name=p_en5 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 0 550 3 1 {name=p_en6 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 200 690 3 1 {name=p_en7 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 0 870 3 1 {name=p_en8 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 810 3 1 {name=p_en9 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 970 3 1 {name=p_en10 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 200 50 3 1 {name=p_en11 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 0 -90 3 1 {name=p_en12 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 10 3 1 {name=p_en13 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 -150 3 1 {name=p_en14 sig_type=std_logic lab=vssa}
