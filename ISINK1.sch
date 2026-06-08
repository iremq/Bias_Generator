v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -110 -100 -110 {lab=EN}
N -60 -200 230 -200 {lab=IO}
N -60 -200 -60 -130 {lab=IO}
N -180 310 -60 310 {lab=VSSA}
N -60 210 -60 310 {lab=VSSA}
N -100 0 -90 0 {lab=MBIAS}
N -100 0 -100 110 {lab=MBIAS}
N -160 0 -100 0 {lab=MBIAS}
N -60 30 -60 90 {lab=#net1}
N -60 0 0 0 {lab=VSSA}
N -60 -90 -60 -30 {lab=#net2}
N -60 -110 0 -110 {lab=VSSA}
N -60 110 0 110 {lab=VSSA}
N 0 0 0 110 {lab=VSSA}
N -60 210 0 210 {lab=VSSA}
N -60 140 -60 210 {lab=VSSA}
N 0 110 0 210 {lab=VSSA}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 -110 0 0 {name=M1
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 0 0 0 {name=M2
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 110 0 0 {name=M3
l=2u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -160 0 0 0 {name=p1 lab=MBIAS}
C {ipin.sym} -200 -110 0 0 {name=p2 lab=EN}
C {iopin.sym} 230 -200 0 0 {name=p3 lab=IO}
C {iopin.sym} -170 310 0 1 {name=p5 lab=VSSA}
C {lab_pin.sym} -10 -110 0 1 {name=p6 sig_type=std_logic lab=VSSA}
