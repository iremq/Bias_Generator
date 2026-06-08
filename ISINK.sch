v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -170 -40 -170 {lab=EN}
N 0 -260 290 -260 {lab=IO}
N 0 -260 0 -190 {lab=IO}
N -120 250 -0 250 {lab=VSSA}
N -0 150 -0 250 {lab=VSSA}
N -40 -60 -30 -60 {lab=MBIAS}
N -40 -60 -40 50 {lab=MBIAS}
N -100 -60 -40 -60 {lab=MBIAS}
N 0 -30 -0 30 {lab=#net1}
N -0 -60 60 -60 {lab=VSSA}
N 0 -150 0 -90 {lab=#net2}
N -0 -170 60 -170 {lab=VSSA}
N -0 50 60 50 {lab=VSSA}
N 60 -60 60 50 {lab=VSSA}
N -0 150 60 150 {lab=VSSA}
N -0 80 -0 150 {lab=VSSA}
N 60 50 60 150 {lab=VSSA}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -170 0 0 {name=M1
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -60 0 0 {name=M2
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 50 0 0 {name=M3
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -100 -60 0 0 {name=p1 lab=MBIAS}
C {ipin.sym} -140 -170 0 0 {name=p2 lab=EN}
C {iopin.sym} 290 -260 0 0 {name=p3 lab=IO}
C {iopin.sym} -120 250 0 1 {name=p5 lab=VSSA}
C {lab_pin.sym} 50 -170 0 1 {name=p6 sig_type=std_logic lab=VSSA}
