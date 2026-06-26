v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 30 -900 {}
P 4 5 -60 -1080 110 -1080 110 -910 -60 -910 -60 -1080 {}
P 4 1 210 -900 {}
P 4 5 180 -1080 350 -1080 350 -910 180 -910 180 -1080 {}
P 4 1 510 -900 {}
P 4 5 420 -1080 590 -1080 590 -910 420 -910 420 -1080 {}
T {POWER SUPPLY} -60 -1110 0 0 0.4 0.4 {}
T {ANALOG SIGNAL} 180 -1110 0 0 0.4 0.4 {}
T {DIGITAL SIGNAL} 420 -1110 0 0 0.4 0.4 {}
N 470 180 470 360 {lab=vssa}
N 390 180 390 210 {lab=en_VSB[2:0]}
N 300 180 300 210 {lab=en_VS[2:0]}
N 0 0 220 0 {lab=MASTER_CoreDiodeT_bias_VN[7:0]  bus=true}
N 870 190 870 360 {lab=vssa}
N 520 0 690 0 {lab=MASTER_biasout_VN}
N 690 130 790 130 {lab=MASTER_biasout_VN}
N 690 0 690 130 {lab=MASTER_biasout_VN}
N 930 -580 1260 -580 {lab=#net1}
N 870 -100 870 40 {lab=#net2}
N 810 -580 870 -580 {lab=vdda}
N 1300 -580 1360 -580 {lab=vdda}
N 870 -660 1300 -660 {lab=vdda}
N 1300 -660 1300 -610 {lab=vdda}
N 870 -660 870 -610 {lab=vdda}
N 470 360 870 360 {lab=vssa}
N 1100 360 1300 360 {lab=vssa}
N 0 360 470 360 {lab=vssa}
N 0 -660 870 -660 {lab=vdda}
N 3000 -270 3070 -270 {lab=vssa}
N 2830 -150 2830 -80 {lab=vssa}
N 2890 -150 2890 -80 {lab=vssa}
N 2950 -150 2950 -80 {lab=vssa}
N 3010 -150 3010 -80 {lab=vssa}
N 2770 -150 2800 -150 {lab=#net3}
N 3040 -150 3070 -150 {lab=#net4}
N 3110 -270 3140 -270 {lab=vdda}
N 2700 -80 2700 -40 {lab=en_VS[3]}
N 2660 -80 2660 10 {lab=en_VSB[3]}
N 2770 -220 2830 -220 {lab=bias_test}
N 2830 -220 2830 -190 {lab=bias_test}
N 2660 -360 2770 -360 {lab=#net5}
N 1680 -360 1680 -320 {lab=#net5}
N 1820 -360 1820 -320 {lab=#net5}
N 1680 -360 1820 -360 {lab=#net5}
N 1960 -360 1960 -320 {lab=#net5}
N 1820 -360 1960 -360 {lab=#net5}
N 2100 -360 2100 -320 {lab=#net5}
N 1960 -360 2100 -360 {lab=#net5}
N 2240 -360 2240 -320 {lab=#net5}
N 2100 -360 2240 -360 {lab=#net5}
N 2380 -360 2380 -320 {lab=#net5}
N 2240 -360 2380 -360 {lab=#net5}
N 2520 -360 2520 -320 {lab=#net5}
N 2380 -360 2520 -360 {lab=#net5}
N 2660 -360 2660 -320 {lab=#net5}
N 2520 -360 2660 -360 {lab=#net5}
N 3320 -360 3580 -360 {lab=bias_VP}
N 2700 -400 3070 -400 {lab=vdda}
N 1720 -400 1720 -320 {lab=vdda}
N 2000 -400 2000 -320 {lab=vdda}
N 2140 -400 2140 -320 {lab=vdda}
N 2280 -400 2280 -320 {lab=vdda}
N 2420 -400 2420 -320 {lab=vdda}
N 2280 -400 2420 -400 {lab=vdda}
N 2560 -400 2560 -320 {lab=vdda}
N 2420 -400 2560 -400 {lab=vdda}
N 2700 -400 2700 -320 {lab=vdda}
N 2560 -400 2700 -400 {lab=vdda}
N 2560 -80 2560 -40 {lab=en_VS[4]}
N 2520 -80 2520 10 {lab=en_VSB[4]}
N 2420 -80 2420 -40 {lab=en_VS[5]}
N 2380 -80 2380 10 {lab=en_VSB[5]}
N 2280 -80 2280 -40 {lab=en_VS[6]}
N 2240 -80 2240 10 {lab=en_VSB[6]}
N 2140 -80 2140 -40 {lab=en_VS[7]}
N 2100 -80 2100 10 {lab=en_VSB[7]}
N 2000 -80 2000 -40 {lab=en_VS[8]}
N 1960 -80 1960 10 {lab=en_VSB[8]}
N 1860 -80 1860 -40 {lab=en_VS[9]}
N 1820 -80 1820 10 {lab=en_VSB[9]}
N 1720 -80 1720 -40 {lab=en_VS[10]}
N 1680 -80 1680 10 {lab=en_VSB[10]}
N 2140 -400 2280 -400 {lab=vdda}
N 1860 -400 2000 -400 {lab=vdda}
N 2000 -400 2140 -400 {lab=vdda}
N 1300 360 1760 360 {lab=vssa}
N 1760 -80 1760 360 {lab=vssa}
N 2600 360 2740 360 {lab=vssa}
N 2740 -80 2740 360 {lab=vssa}
N 2600 -80 2600 360 {lab=vssa}
N 2460 360 2600 360 {lab=vssa}
N 2460 -80 2460 360 {lab=vssa}
N 2320 360 2460 360 {lab=vssa}
N 2320 -80 2320 360 {lab=vssa}
N 2180 360 2320 360 {lab=vssa}
N 2180 -80 2180 360 {lab=vssa}
N 2040 360 2180 360 {lab=vssa}
N 2040 -80 2040 360 {lab=vssa}
N 1900 360 2040 360 {lab=vssa}
N 1900 -80 1900 360 {lab=vssa}
N 1760 360 1900 360 {lab=vssa}
N 1530 -150 1650 -150 {lab=#net6}
N 1300 -660 1720 -660 {lab=vdda}
N 1720 -660 1720 -400 {lab=vdda}
N 3070 -240 3070 -150 {lab=#net4}
N 3070 -400 3070 -300 {lab=vdda}
N 3010 -220 3010 -190 {lab=bias_test}
N 2950 -220 3010 -220 {lab=bias_test}
N 2890 -220 2890 -190 {lab=bias_test}
N 2830 -220 2890 -220 {lab=bias_test}
N 2950 -220 2950 -190 {lab=bias_test}
N 2890 -220 2950 -220 {lab=bias_test}
N 3320 -660 3440 -660 {lab=vdda}
N 3440 -660 3440 -600 {lab=vdda}
N 3180 -660 3180 -600 {lab=vdda}
N 1720 -660 3180 -660 {lab=vdda}
N 3180 -540 3180 -470 {lab=#net7}
N 3440 -540 3440 -470 {lab=#net8}
N 3320 -570 3400 -570 {lab=bias_VP}
N 3220 -570 3320 -570 {lab=bias_VP}
N 3180 -410 3180 -360 {lab=bias_VP}
N 2830 -360 3180 -360 {lab=bias_VP}
N 3440 -60 3440 20 {lab=bias_VN}
N 3320 -590 3320 -570 {lab=bias_VP}
N 3320 -660 3320 -650 {lab=vdda}
N 3180 -660 3320 -660 {lab=vdda}
N 3440 170 3440 360 {lab=vssa}
N 3440 -410 3440 -60 {lab=bias_VN}
N 3300 310 3300 360 {lab=vssa}
N 3300 360 3440 360 {lab=vssa}
N 3440 -60 3580 -60 {lab=bias_VN}
N 1860 -400 1860 -320 {lab=vdda}
N 1720 -400 1860 -400 {lab=vdda}
N 930 -580 930 -510 {lab=#net1}
N 870 -510 930 -510 {lab=#net1}
N 910 -580 930 -580 {lab=#net1}
N 870 -550 870 -510 {lab=#net1}
N 3440 -570 3500 -570 {lab=vdda}
N 3440 -440 3500 -440 {lab=vdda}
N 3120 -570 3180 -570 {lab=vdda}
N 3120 -440 3180 -440 {lab=vdda}
N 870 -510 870 -160 {lab=#net1}
N 1300 -550 1300 -220 {lab=bias_test}
N 3180 -360 3320 -360 {lab=bias_VP}
N 3220 -500 3220 -440 {lab=MASTER_CoreDiodeT_bias_VN[2]}
N 3400 -500 3580 -500 {lab=MASTER_CoreDiodeT_bias_VN[2]}
N 3400 -500 3400 -440 {lab=MASTER_CoreDiodeT_bias_VN[2]}
N 2740 360 3300 360 {lab=vssa}
N 3300 110 3300 250 {lab=bias_VN}
N 3300 110 3360 110 {lab=bias_VN}
N 3300 -60 3300 110 {lab=bias_VN}
N 3300 -60 3440 -60 {lab=bias_VN}
N 3240 70 3360 70 {lab=BIASGEN_en_VS}
N 1230 -30 1300 -30 {lab=vssa}
N 1230 150 1300 150 {lab=vssa}
N 1340 -30 1370 -30 {lab=bias_test}
N 1340 150 1370 150 {lab=#net9}
N 1370 -220 1650 -220 {lab=bias_test}
N 1300 180 1300 360 {lab=vssa}
N 1300 -80 1300 -60 {lab=#net10}
N 1370 -220 1370 -30 {lab=bias_test}
N 1300 -220 1370 -220 {lab=bias_test}
N 1100 -150 1470 -150 {lab=V_drain_ISINK}
N 1100 -150 1100 -90 {lab=V_drain_ISINK}
N 1100 60 1100 360 {lab=vssa}
N 870 360 1100 360 {lab=vssa}
N 690 -0 1020 -0 {lab=MASTER_biasout_VN}
N 3320 -570 3320 -360 {lab=bias_VP}
N 3220 -500 3400 -500 {lab=MASTER_CoreDiodeT_bias_VN[2]}
N 1300 -220 1300 -140 {lab=bias_test}
N 1300 60 1300 120 {lab=#net9}
N 1370 60 1370 150 {lab=#net9}
N 1300 60 1370 60 {lab=#net9}
N 1300 0 1300 60 {lab=#net9}
C {lab_wire.sym} 720 -990 0 0 {name=p18 sig_type=std_logic lab=en_VS[10:0]
}
C {lab_wire.sym} 780 -1040 0 1 {name=p19 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 780 -940 0 1 {name=p20 sig_type=std_logic lab=vssa
}
C {inv.sym} 870 -990 0 0 {name=xinv[10:0]}
C {lab_wire.sym} 850 -990 0 1 {name=p75 sig_type=std_logic lab=en_VSB[10:0]
}
C {SelMUX.sym} 370 0 0 0 {name=x1}
C {lab_wire.sym} 0 360 2 1 {name=p8 sig_type=std_logic lab=vssa
}
C {ISINK.sym} 850 100 0 1 {name=xisink0[2:1]}
C {lab_wire.sym} 790 90 0 0 {name=p3 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} 300 210 3 0 {name=p6 sig_type=std_logic lab=en_VS[2:0]
}
C {lab_wire.sym} 390 210 1 1 {name=p10 sig_type=std_logic lab=en_VSB[2:0]
}
C {lab_wire.sym} 0 0 0 0 {name=p14 sig_type=std_logic lab=MASTER_CoreDiodeT_bias_VN[7:0]
}
C {sg13g2_pr/sg13_hv_pmos.sym} 890 -580 0 1 {name=M1
l=1u
w=2u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1280 -580 0 0 {name=M2
l=1u
w=2u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} 200 -1030 3 0 {name=p_mbias_bus lab=MASTER_CoreDiodeT_bias_VN[7:0]}
C {ipin.sym} 450 -1030 3 0 {name=p_en_cb1 lab=en_VS[10:0]}
C {iopin.sym} -20 -1030 1 0 {name=p_en_cbb2 lab=vssa}
C {iopin.sym} 70 -1030 1 0 {name=p_en_cbb3 lab=vdda}
C {lab_wire.sym} 810 -580 0 0 {name=p4 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 1360 -580 0 1 {name=p5 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 0 -660 0 0 {name=p7 sig_type=std_logic lab=vdda
}
C {SplitterCell.sym} 2760 -150 0 0 {name=x4}
C {lab_wire.sym} 1300 -220 0 0 {name=p13 sig_type=std_logic lab=bias_test
}
C {sg13g2_pr/sg13_hv_nmos.sym} 3090 -270 0 1 {name=M_enb
l=1u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 3000 -270 0 0 {name=p_en_g2 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 2830 -170 3 1 {name=M_s9
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 2830 -80 3 0 {name=p_en_g11 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 2890 -170 3 1 {name=M_s10
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 2890 -80 3 0 {name=p_en_g12 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 2950 -170 3 1 {name=M_s11
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 2950 -80 3 0 {name=p_en_g13 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 3010 -170 3 1 {name=M_s12
l=10u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 3010 -80 3 0 {name=p_en_g14 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 3140 -270 2 0 {name=p21 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 2700 -40 0 1 {name=p22 sig_type=std_logic lab=en_VS[3]
}
C {lab_wire.sym} 2660 10 0 0 {name=p23 sig_type=std_logic lab=en_VSB[3]
}
C {devices/ammeter.sym} 2800 -360 1 0 {name=V_out_UP}
C {SplitterCell.sym} 2620 -150 0 0 {name=x5}
C {SplitterCell.sym} 2480 -150 0 0 {name=x6}
C {SplitterCell.sym} 2340 -150 0 0 {name=x7}
C {SplitterCell.sym} 2200 -150 0 0 {name=x8}
C {SplitterCell.sym} 2060 -150 0 0 {name=x9}
C {SplitterCell.sym} 1920 -150 0 0 {name=x10}
C {SplitterCell.sym} 1780 -150 0 0 {name=x11}
C {lab_wire.sym} 2560 -40 0 1 {name=p40 sig_type=std_logic lab=en_VS[4]
}
C {lab_wire.sym} 2520 10 0 0 {name=p41 sig_type=std_logic lab=en_VSB[4]
}
C {lab_wire.sym} 2420 -40 0 1 {name=p45 sig_type=std_logic lab=en_VS[5]
}
C {lab_wire.sym} 2280 -40 0 1 {name=p50 sig_type=std_logic lab=en_VS[6]
}
C {lab_wire.sym} 2240 10 0 0 {name=p51 sig_type=std_logic lab=en_VSB[6]
}
C {lab_wire.sym} 2140 -40 0 1 {name=p55 sig_type=std_logic lab=en_VS[7]
}
C {lab_wire.sym} 2100 10 0 0 {name=p56 sig_type=std_logic lab=en_VSB[7]
}
C {lab_wire.sym} 2000 -40 0 1 {name=p60 sig_type=std_logic lab=en_VS[8]
}
C {lab_wire.sym} 1960 10 0 0 {name=p61 sig_type=std_logic lab=en_VSB[8]
}
C {lab_wire.sym} 1860 -40 0 1 {name=p65 sig_type=std_logic lab=en_VS[9]
}
C {lab_wire.sym} 1820 10 0 0 {name=p66 sig_type=std_logic lab=en_VSB[9]
}
C {lab_wire.sym} 1720 -40 0 1 {name=p70 sig_type=std_logic lab=en_VS[10]
}
C {lab_wire.sym} 1680 10 0 0 {name=p71 sig_type=std_logic lab=en_VSB[10]
}
C {lab_wire.sym} 2380 10 0 0 {name=p42 sig_type=std_logic lab=en_VSB[5]
}
C {devices/ammeter.sym} 1500 -150 1 0 {name=V_Isplit}
C {sg13g2_pr/sg13_hv_pmos.sym} 3200 -570 0 1 {name=M8
l=1u
w=4u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 3420 -570 0 0 {name=M7
l=1u
w=4u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 3200 -440 0 1 {name=M9
l=0.5u
w=4u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 3420 -440 0 0 {name=M10
l=0.5u
w=4u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {capa.sym} 3320 -620 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {ISINK.sym} 3420 80 0 1 {name=xisink2[2:1]}
C {capa.sym} 3300 280 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 270 -1030 1 0 {name=p_en_cbb1 lab=bias_VP}
C {iopin.sym} 330 -1030 1 0 {name=p_en_cbb4 lab=bias_VN}
C {lab_pin.sym} 3580 -360 0 1 {name=p_en_cbb5 lab=bias_VP}
C {lab_pin.sym} 3580 -60 0 1 {name=p_en_cbb6 lab=bias_VN}
C {lab_wire.sym} 3500 -570 0 1 {name=p15 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 3500 -440 0 1 {name=p16 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 3120 -570 2 1 {name=p17 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} 3120 -440 2 1 {name=p24 sig_type=std_logic lab=vdda
}
C {ipin.sym} 540 -1030 3 0 {name=p25 sig_type=std_logic lab=BIASGEN_en_VS
}
C {devices/ammeter.sym} 1300 -110 0 0 {name=V_Ibias}
C {devices/ammeter.sym} 870 -130 0 0 {name=V_Ibias1}
C {lab_wire.sym} 690 0 3 1 {name=p26 sig_type=std_logic lab=MASTER_biasout_VN
}
C {lab_wire.sym} 3240 70 0 0 {name=p27 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} 1230 -30 0 0 {name=p_en_g1 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} 1320 -30 0 1 {name=M_b4
l=6u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1230 150 0 0 {name=p_en_g5 sig_type=std_logic lab=vssa}
C {ISINK.sym} 1080 -30 0 1 {name=xisink1[8:1]}
C {lab_wire.sym} 1020 -40 0 0 {name=p1 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} 1100 -150 0 0 {name=p2 sig_type=std_logic lab=V_drain_ISINK
}
C {lab_wire.sym} 3580 -500 0 1 {name=p9 sig_type=std_logic lab=MASTER_CoreDiodeT_bias_VN[2]
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1320 150 0 1 {name=M_b3
l=6u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
