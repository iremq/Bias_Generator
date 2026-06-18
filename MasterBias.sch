v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 -460 440 -340 {lab=VDDA}
N 920 -460 920 -340 {lab=VDDA}
N 1400 -460 1400 -340 {lab=VDDA}
N 200 -460 440 -460 {lab=VDDA}
N 440 -460 680 -460 {lab=VDDA}
N 680 -460 920 -460 {lab=VDDA}
N 920 -460 1160 -460 {lab=VDDA}
N 60 -140 60 -60 {lab=VSSA}
N 300 -140 300 -60 {lab=VSSA}
N 540 -140 540 -70 {lab=VSSA}
N 780 -140 780 -70 {lab=VSSA}
N 1020 -140 1020 -80 {lab=VSSA}
N 1260 -140 1260 -70 {lab=VSSA}
N 1500 -140 1500 -80 {lab=VSSA}
N 160 -130 160 20 {lab=IREF_100nA[8:0]}
N 400 -130 400 20 {lab=IREF_10nA[8:0]}
N 640 -130 640 20 {lab=IREF_1nA[8:0]}
N 880 -130 880 20 {lab=IREF_100pA[8:0]}
N 1120 -130 1120 20 {lab=IREF_10pA[8:0]}
N 1360 -130 1360 20 {lab=IREF_1pA[8:0]}
N 1600 -130 1600 20 {lab=IREF_100fA[8:0]}
N 1690 -270 1820 -270 {lab=#net1}
N 240 -270 250 -270 {lab=#net2}
N 480 -270 490 -270 {lab=#net3}
N 720 -270 730 -270 {lab=#net4}
N 960 -270 970 -270 {lab=#net5}
N 1200 -270 1210 -270 {lab=#net6}
N 1440 -270 1450 -270 {lab=#net7}
N -2250 -30 -2250 80 {lab=VSSA}
N -2320 -460 -2320 -320 {lab=VDDA}
N -2520 -30 -2320 -30 {lab=IREF_1uA[0]}
N -1860 -460 200 -460 {lab=VDDA}
N -1270 100 -1270 170 {lab=EXT_REF_EN}
N -1860 -90 -1860 -50 {lab=VSSA}
N -1630 -130 -1630 60 {lab=#net8}
N -1550 -400 -1550 -370 {lab=VSSA}
N -1450 -400 -1450 -370 {lab=VSSA}
N -1630 -160 -1570 -160 {lab=VSSA}
N -2320 -460 -1860 -460 {lab=VDDA}
N -2590 -460 -2320 -460 {lab=VDDA}
N -1360 -270 0 -270 {lab=#net9}
N 1160 -460 1400 -460 {lab=VDDA}
N 1640 -460 1640 -340 {lab=VDDA}
N 1400 -460 1640 -460 {lab=VDDA}
N 1160 -460 1160 -340 {lab=VDDA}
N 680 -460 680 -340 {lab=VDDA}
N 200 -460 200 -340 {lab=VDDA}
N -1860 -460 -1860 -230 {lab=VDDA}
N -1730 -160 -1670 -160 {lab=VBIAS}
N -1630 -270 -1630 -190 {lab=#net9}
N -2210 -270 -1630 -270 {lab=#net9}
N -2150 -160 -1930 -160 {lab=#net8}
N -2150 -160 -2150 60 {lab=#net8}
N -2150 60 -1630 60 {lab=#net8}
N -1360 -270 -1360 -190 {lab=#net9}
N -1630 -270 -1360 -270 {lab=#net9}
N -1630 60 -1360 60 {lab=#net8}
N -1360 -130 -1360 60 {lab=#net8}
N -1440 -160 -1400 -160 {lab=BYP_EN}
N -1360 -160 -1260 -160 {lab=VSSA}
N -1630 60 -1630 170 {lab=#net8}
N -1780 200 -1670 200 {lab=EXT_REF_ENB}
N -1360 60 -1300 60 {lab=#net8}
N -1240 60 -1140 60 {lab=VREG_pad}
N -1630 380 -1630 420 {lab=VSSA}
N -1630 220 -1630 320 {lab=#net10}
N -2590 -460 -2590 -360 {lab=VDDA}
N -2670 -460 -2590 -460 {lab=VDDA}
N -2590 -300 -2590 -280 {lab=VSSA}
N -2780 -330 -2620 -330 {lab=EXT_REF_EN}
N -2550 -330 -2470 -330 {lab=EXT_REF_ENB}
N -1630 200 -1550 200 {lab=VSSA}
N -1270 -10 -1270 60 {lab=VSSA}
C {lab_wire.sym} 60 -80 1 0 {name=p4 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 300 -80 1 0 {name=p1 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 540 -80 1 0 {name=p2 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 780 -80 1 0 {name=p3 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1020 -80 1 0 {name=p5 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1260 -80 1 0 {name=p6 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1500 -90 1 0 {name=p7 sig_type=std_logic lab=VSSA}
C {iopin.sym} 160 20 1 0 {name=p24 lab=IREF_100nA[8:0]}
C {iopin.sym} 400 20 1 0 {name=p8 lab=IREF_10nA[8:0]}
C {iopin.sym} 640 20 1 0 {name=p9 lab=IREF_1nA[8:0]}
C {iopin.sym} 880 20 1 0 {name=p10 lab=IREF_100pA[8:0]}
C {iopin.sym} 1120 20 1 0 {name=p11 lab=IREF_10pA[8:0]}
C {iopin.sym} 1360 20 1 0 {name=p12 lab=IREF_1pA[8:0]}
C {iopin.sym} 1600 20 1 0 {name=p13 lab=IREF_100fA[8:0]}
C {lab_wire.sym} -2250 20 1 0 {name=p15 sig_type=std_logic lab=VSSA}
C {iopin.sym} -1630 420 1 0 {name=p_vssa lab=VSSA}
C {iopin.sym} -2520 -30 2 0 {name=p16 lab=IREF_1uA[0]}
C {sg13g2_pr/sg13_hv_nmos.sym} -1270 80 1 1 {name=Mnbias
l=500n
w=25u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {OTA_b.sym} -1780 -160 0 0 {name=x_ota}
C {lab_wire.sym} -1860 -60 1 0 {name=p_vssa_ota sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -1550 -380 1 0 {name=p_cbyp1_vssa sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -1450 -370 1 0 {name=p_cbyp2_vssa sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -1280 -160 1 0 {name=p_byp_vssa sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -1700 -160 0 0 {name=p_vbias_lbl sig_type=std_logic lab=VBIAS}
C {ipin.sym} -1930 -110 0 0 {name=p_vref lab=VREF_100mV}
C {ipin.sym} -1930 -210 0 0 {name=p_vbptia lab=VBP_TIA}
C {iopin.sym} -2670 -460 0 1 {name=p_vdda_ext lab=VDDA}
C {lab_wire.sym} -1590 -160 1 0 {name=p_vssa_ota1 sig_type=std_logic lab=VSSA}
C {ipin.sym} -1440 -160 0 0 {name=p_vbptia1 lab=BYP_EN}
C {lab_wire.sym} -1270 160 1 0 {name=p14 sig_type=std_logic lab=EXT_REF_EN}
C {sg13cmos5l_pr/cap_mfringe.sym} -1550 -430 0 0 {name=C1
model=cap_mfringe
w=45.0u
l=25.0u
toplev=5
botlev=1
spiceprefix=X
}
C {lab_wire.sym} -1770 200 2 0 {name=p17 sig_type=std_logic lab=EXT_REF_ENB}
C {res.sym} -1630 350 2 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {EXT_REF_ENB.sym} -2590 -330 0 0 {name=I1 spiceprefix=X}
C {lab_wire.sym} -2590 -280 1 0 {name=p_vssa3_wire sig_type=std_logic lab=VSSA}
C {ipin.sym} -2780 -330 0 0 {name=p18 lab=EXT_REF_EN}
C {lab_wire.sym} -2490 -330 2 0 {name=p19 sig_type=std_logic lab=EXT_REF_ENB}
C {sg13cmos5l_pr/cap_mfringe.sym} -1450 -430 0 0 {name=C2
model=cap_mfringe
w=45.0u
l=32.0u
toplev=5
botlev=1
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -1650 200 2 1 {name=Mnbias1
l=500n
w=25u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -1650 -160 2 1 {name=Mnbias2
l=500n
w=25u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -1380 -160 2 1 {name=Mnbias3
l=500n
w=25u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -1590 200 1 0 {name=p_vssa_ota2 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -1270 20 1 0 {name=p_vssa_ota3 sig_type=std_logic lab=VSSA}
C {iopin.sym} -1140 60 0 0 {name=p_vssa2 lab=VREG_pad}
C {DecadeDivider_2.sym} 120 -240 0 0 {name=x1}
C {DecadeDivider_2.sym} 600 -240 0 0 {name=x2}
C {DecadeDivider_2.sym} 360 -240 0 0 {name=x3}
C {DecadeDivider_2.sym} 840 -240 0 0 {name=x4}
C {DecadeDivider_2.sym} 1080 -240 0 0 {name=x5}
C {DecadeDivider_2.sym} 1320 -240 0 0 {name=x6}
C {DecadeDivider_2.sym} 1560 -240 0 0 {name=x7}
C {DecadeDividerAux.sym} -2360 -260 0 0 {name=x8}
