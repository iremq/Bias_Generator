v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 10 -180 80 {lab=VSSA}
N -320 80 -180 80 {lab=VSSA}
N -10 20 -10 80 {lab=VSSA}
N -80 80 -10 80 {lab=VSSA}
N 160 20 160 80 {lab=VSSA}
N 100 80 160 80 {lab=VSSA}
N 340 10 340 80 {lab=VSSA}
N 270 80 340 80 {lab=VSSA}
N 500 10 500 80 {lab=VSSA}
N 450 80 500 80 {lab=VSSA}
N 670 10 670 80 {lab=VSSA}
N 610 80 670 80 {lab=VSSA}
N 830 -0 830 80 {lab=VSSA}
N 780 80 830 80 {lab=VSSA}
N 1000 10 1000 80 {lab=VSSA}
N 940 80 1000 80 {lab=VSSA}
N -80 70 -80 80 {lab=VSSA}
N -180 80 -80 80 {lab=VSSA}
N 100 70 100 80 {lab=VSSA}
N -10 80 100 80 {lab=VSSA}
N 270 -50 270 10 {lab=IREF<5>}
N 270 70 270 80 {lab=VSSA}
N 160 80 270 80 {lab=VSSA}
N 450 70 450 80 {lab=VSSA}
N 340 80 450 80 {lab=VSSA}
N 450 -50 450 10 {lab=IREF<4>}
N 610 70 610 80 {lab=VSSA}
N 500 80 610 80 {lab=VSSA}
N 610 -50 610 10 {lab=IREF<3>}
N 780 70 780 80 {lab=VSSA}
N 670 80 780 80 {lab=VSSA}
N 780 -50 780 10 {lab=IREF<2>}
N 760 -50 780 -50 {lab=IREF<2>}
N 940 70 940 80 {lab=VSSA}
N 830 80 940 80 {lab=VSSA}
N 940 -50 940 10 {lab=IREF<1>}
N 1000 80 1120 80 {lab=VSSA}
N 1120 70 1120 80 {lab=VSSA}
N 1120 -50 1120 10 {lab=IREF<0>}
N -80 -90 1190 -90 {lab=EN}
N 1120 -200 1120 -50 {lab=IREF<0>}
N 1000 -200 1120 -200 {lab=IREF<0>}
N 1000 -200 1000 -140 {lab=IREF<0>}
N 940 -200 940 -50 {lab=IREF<1>}
N 830 -200 940 -200 {lab=IREF<1>}
N 830 -200 830 -140 {lab=IREF<1>}
N 780 -200 780 -50 {lab=IREF<2>}
N 670 -200 780 -200 {lab=IREF<2>}
N 670 -200 670 -140 {lab=IREF<2>}
N 610 -200 610 -50 {lab=IREF<3>}
N 500 -200 610 -200 {lab=IREF<3>}
N 500 -200 500 -140 {lab=IREF<3>}
N 450 -200 450 -50 {lab=IREF<4>}
N 340 -200 450 -200 {lab=IREF<4>}
N 340 -200 340 -140 {lab=IREF<4>}
N 270 -200 270 -50 {lab=IREF<5>}
N 160 -200 270 -200 {lab=IREF<5>}
N 160 -200 160 -140 {lab=IREF<5>}
N 100 -50 100 10 {lab=IREF<6>}
N -10 -200 100 -200 {lab=IREF<6>}
N -10 -200 -10 -140 {lab=IREF<6>}
N -80 -50 -80 10 {lab=EN}
N -80 -200 -80 -90 {lab=EN}
N -180 -200 -80 -200 {lab=EN}
N -180 -200 -180 -140 {lab=EN}
N 70 -50 100 -50 {lab=IREF<6>}
N 100 -200 100 -50 {lab=IREF<6>}
N -100 -50 -80 -50 {lab=EN}
N -80 -90 -80 -50 {lab=EN}
N 240 -50 270 -50 {lab=IREF<5>}
N 420 -50 450 -50 {lab=IREF<4>}
N 580 -50 610 -50 {lab=IREF<3>}
N 910 -50 940 -50 {lab=IREF<1>}
N 1080 -50 1120 -50 {lab=IREF<0>}
N -410 -250 -320 -250 {lab=IREF<7:0>}
C {ISINK.sym} -160 -80 0 0 {name=x1}
C {ISINK.sym} 10 -80 0 0 {name=x2}
C {ISINK.sym} 180 -80 0 0 {name=x3}
C {ISINK.sym} 360 -80 0 0 {name=x4}
C {ISINK.sym} 520 -80 0 0 {name=x5}
C {ISINK.sym} 690 -80 0 0 {name=x6}
C {ISINK.sym} 850 -80 0 0 {name=x7}
C {ISINK.sym} 1020 -80 0 0 {name=x8}
C {cap_lv_mos.sym} -80 40 0 0 {name=C1
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 100 40 2 0 {name=C2
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 270 40 2 0 {name=C3
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 450 40 2 0 {name=C4
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 610 40 2 0 {name=C5
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 780 40 2 0 {name=C6
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 940 40 2 0 {name=C7
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {cap_lv_mos.sym} 1120 40 2 0 {name=C8
w=14e-6
l=13e-6
m=1
spiceprefix=X}
C {iopin.sym} -320 80 0 1 {name=p5 lab=VSSA}
C {ipin.sym} 1190 -90 0 1 {name=p2 lab=EN}
C {iopin.sym} -410 -250 0 1 {name=p1 lab=IREF<7:0>}
C {lab_wire.sym} -130 -200 0 0 {name=p3 sig_type=std_logic lab=IREF<7>}
C {lab_wire.sym} 50 -200 0 0 {name=p4 sig_type=std_logic lab=IREF<6>}
C {lab_wire.sym} 210 -200 0 0 {name=p6 sig_type=std_logic lab=IREF<5>}
C {lab_wire.sym} 400 -200 0 0 {name=p7 sig_type=std_logic lab=IREF<4>}
C {lab_wire.sym} 560 -200 0 0 {name=p8 sig_type=std_logic lab=IREF<3>}
C {lab_wire.sym} 730 -200 0 0 {name=p9 sig_type=std_logic lab=IREF<2>}
C {lab_wire.sym} 890 -200 0 0 {name=p10 sig_type=std_logic lab=IREF<1>}
C {lab_wire.sym} 1070 -200 0 0 {name=p11 sig_type=std_logic lab=IREF<0>}
C {lab_wire.sym} -330 -250 0 0 {name=p12 sig_type=std_logic lab=IREF<7:0>}
