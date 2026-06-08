v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1620 -240 1790 -240 {lab=VDDA}
N -180 -240 -180 -200 {lab=VDDA}
N -310 -240 -180 -240 {lab=VDDA}
N 30 -240 30 -200 {lab=VDDA}
N -180 -240 30 -240 {lab=VDDA}
N 230 -240 230 -200 {lab=VDDA}
N 30 -240 230 -240 {lab=VDDA}
N 430 -240 430 -200 {lab=VDDA}
N 230 -240 430 -240 {lab=VDDA}
N 640 -240 640 -200 {lab=VDDA}
N 430 -240 640 -240 {lab=VDDA}
N 850 -240 850 -200 {lab=VDDA}
N 640 -240 850 -240 {lab=VDDA}
N 1040 -240 1040 -200 {lab=VDDA}
N 850 -240 1040 -240 {lab=VDDA}
N 1230 -240 1230 -200 {lab=VDDA}
N 1040 -240 1230 -240 {lab=VDDA}
N 1410 -240 1410 -200 {lab=VDDA}
N 1230 -240 1410 -240 {lab=VDDA}
N -310 -120 1340 -120 {lab=VBIAS}
N -310 -80 1330 -80 {lab=VBIAS}
N -310 -120 -310 -80 {lab=VBIAS}
N -390 -120 -310 -120 {lab=VBIAS}
N -130 20 -130 60 {lab=VSSA}
N 80 20 80 50 {lab=VSSA}
N 280 20 280 50 {lab=VSSA}
N 480 20 480 50 {lab=VSSA}
N 690 20 690 50 {lab=VSSA}
N 900 20 900 60 {lab=VSSA}
N 1090 20 1090 50 {lab=VSSA}
N 1280 20 1280 50 {lab=VSSA}
N 1460 20 1460 50 {lab=VSSA}
N -180 20 -180 150 {lab=IREF_CORE<0>}
N 30 20 30 150 {lab=IREF_CORE<1>}
N 230 20 230 150 {lab=IREF_CORE<2>}
N 430 20 430 150 {lab=IREF_CORE<3>}
N 640 20 640 150 {lab=IREF_CORE<4>}
N 850 10 850 150 {lab=IREF_CORE<5>}
N 1040 10 1040 150 {lab=IREF_CORE<6>}
N 1230 10 1230 150 {lab=IREF_CORE<7>}
N 1410 20 1410 150 {lab=IREF_CORE<8>}
N -330 280 130 280 {lab=VSSA}
N -310 -150 -310 -120 {lab=VBIAS}
N -310 -240 -310 -210 {lab=VDDA}
N -400 -240 -310 -240 {lab=VDDA}
N 1580 -240 1620 -240 {lab=VDDA}
N 1580 -240 1580 -0 {lab=VDDA}
N 1410 -240 1580 -240 {lab=VDDA}
N 1580 -0 1620 -0 {lab=VDDA}
N 1620 -30 1620 -0 {lab=VDDA}
N 1620 -240 1620 -60 {lab=VDDA}
N 1050 310 1470 310 {lab=IREF_CORE<0:8>}
C {ISOURCE.sym} -110 -150 0 0 {name=x1}
C {ISOURCE.sym} 100 -150 0 0 {name=x2}
C {ISOURCE.sym} 300 -150 0 0 {name=x3}
C {ISOURCE.sym} 500 -150 0 0 {name=x4}
C {ISOURCE.sym} 710 -150 0 0 {name=x5}
C {ISOURCE.sym} 920 -150 0 0 {name=x6}
C {ISOURCE.sym} 1110 -150 0 0 {name=x7}
C {ISOURCE.sym} 1300 -150 0 0 {name=x8}
C {ISOURCE.sym} 1480 -150 0 0 {name=x9}
C {iopin.sym} -330 280 0 1 {name=p5 lab=VSSA}
C {iopin.sym} -400 -240 0 1 {name=p1 lab=VDDA}
C {iopin.sym} -390 -120 0 1 {name=p2 lab=VBIAS}
C {lab_wire.sym} 80 40 1 0 {name=p3 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -130 50 1 0 {name=p4 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 280 40 1 0 {name=p6 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 480 40 1 0 {name=p7 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 690 40 1 0 {name=p8 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 900 50 1 0 {name=p9 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1090 40 1 0 {name=p10 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1280 40 1 0 {name=p11 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} 1460 40 1 0 {name=p12 sig_type=std_logic lab=VSSA}
C {lab_wire.sym} -180 140 1 0 {name=p13 sig_type=std_logic lab=IREF_CORE<0>}
C {lab_wire.sym} 30 140 1 0 {name=p14 sig_type=std_logic lab=IREF_CORE<1>}
C {lab_wire.sym} 230 130 1 0 {name=p15 sig_type=std_logic lab=IREF_CORE<2>}
C {lab_wire.sym} 430 140 1 0 {name=p16 sig_type=std_logic lab=IREF_CORE<3>}
C {lab_wire.sym} 640 140 1 0 {name=p17 sig_type=std_logic lab=IREF_CORE<4>}
C {lab_wire.sym} 850 130 1 0 {name=p18 sig_type=std_logic lab=IREF_CORE<5>}
C {lab_wire.sym} 1040 140 1 0 {name=p19 sig_type=std_logic lab=IREF_CORE<6>}
C {lab_wire.sym} 1230 140 1 0 {name=p20 sig_type=std_logic lab=IREF_CORE<7>}
C {lab_wire.sym} 1410 150 1 0 {name=p21 sig_type=std_logic lab=IREF_CORE<8>}
C {iopin.sym} 1460 310 0 0 {name=p22 lab=IREF_CORE<0:8>}
C {sg13g2_pr/sg13_hv_pmos.sym} 1600 -60 0 0 {name=M6
l=5u
w=1u
ng=1
m=36
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/cap_mfringe.sym} -310 -180 0 0 {name=C1
model=cap_mfringe
w=60.0u
l=30.0u
mmin=1
mmax=4
spiceprefix=X
}
