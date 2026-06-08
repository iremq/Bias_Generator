v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -720 10 -470 10 {lab=VDDA}
N -470 180 -470 230 {lab=#net1}
N -400 150 -400 260 {lab=VDDA}
N -470 150 -400 150 {lab=VDDA}
N -470 260 -400 260 {lab=VDDA}
N -560 150 -510 150 {lab=MBIAS}
N -560 260 -500 260 {lab=ENB}
N -470 10 -470 120 {lab=VDDA}
N -470 340 -310 340 {lab=IO}
N -470 290 -470 340 {lab=IO}
N -710 330 -610 330 {lab=VSSA}
C {sg13g2_pr/sg13_hv_pmos.sym} -490 150 0 0 {name=M2
l=5u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} -720 10 0 1 {name=p7 lab=VDDA}
C {sg13g2_pr/sg13_hv_pmos.sym} -490 260 0 0 {name=M1
l=0.5u
w=3.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -560 150 0 0 {name=p1 lab=MBIAS}
C {ipin.sym} -560 260 0 0 {name=p2 lab=ENB}
C {iopin.sym} -310 340 0 0 {name=p3 lab=IO}
C {lab_pin.sym} -400 210 0 0 {name=p4 sig_type=std_logic lab=VDDA}
C {iopin.sym} -700 330 0 1 {name=p5 lab=VSSA}
