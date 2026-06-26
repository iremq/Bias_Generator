v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -640 -380 {}
P 4 5 -730 -560 -560 -560 -560 -390 -730 -390 -730 -560 {}
P 4 1 -400 -380 {}
P 4 5 -490 -560 -320 -560 -320 -390 -490 -390 -490 -560 {}
P 4 1 -160 -380 {}
P 4 5 -250 -560 -80 -560 -80 -390 -250 -390 -250 -560 {}
T {POWER SUPPLY} -730 -590 0 0 0.4 0.4 {}
T {ANALOG SIGNAL} -490 -590 0 0 0.4 0.4 {}
T {DIGITAL SIGNAL} -250 -590 0 0 0.4 0.4 {}
N 0 -260 0 -190 {lab=io_UN}
N -40 -60 -30 -60 {lab=bias_VN}
N -40 -60 -40 50 {lab=bias_VN}
N -100 -60 -40 -60 {lab=bias_VN}
N 0 -30 -0 30 {lab=#net1}
N -0 80 -0 150 {lab=vssa}
N 0 -260 90 -260 {lab=io_UN}
N 0 -140 0 -90 {lab=#net2}
N 0 50 30 50 {lab=vssa}
N 0 -60 30 -60 {lab=vssa}
N 0 -170 30 -170 {lab=vssa}
N -100 -170 -40 -170 {lab=en_VS}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -170 0 0 {name=M1
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -60 0 0 {name=M2
l=4u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 50 0 0 {name=M3
l=4u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -100 -60 0 0 {name=p1 lab=bias_VN}
C {lab_pin.sym} 90 -260 0 1 {name=p3 lab=io_UN}
C {lab_pin.sym} 30 -170 2 0 {name=p6 sig_type=std_logic lab=vssa}
C {ipin.sym} -170 -510 3 0 {name=p_en lab=en_VS}
C {iopin.sym} -700 -510 1 0 {name=p_vssa1 lab=vssa}
C {lab_pin.sym} 30 -60 2 0 {name=p5 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 30 50 2 0 {name=p7 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 0 150 2 0 {name=p8 sig_type=std_logic lab=vssa}
C {lab_pin.sym} -100 -170 0 0 {name=p_en1 lab=en_VS}
C {ipin.sym} -450 -530 3 0 {name=p2 lab=bias_VN}
C {iopin.sym} -370 -530 1 0 {name=p4 lab=io_UN}
