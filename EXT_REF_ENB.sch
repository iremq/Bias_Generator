v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 0 -20 100 {lab=EXT_REF_EN}
N 20 -310 20 -100 {lab=VDDA}
N 20 0 20 70 {lab=EXT_REF_ENB}
N 20 100 20 310 {lab=VSSA}
N -240 0 -20 0 {lab=EXT_REF_EN}
N 20 0 240 0 {lab=EXT_REF_ENB}
N -20 -100 -20 0 {lab=EXT_REF_EN}
N 20 -70 20 0 {lab=EXT_REF_ENB}
C {sg13g2_pr/sg13_hv_pmos.sym} 0 -100 0 0 {name=MP
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 100 0 0 {name=MN
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -240 0 0 0 {name=p1 lab=EXT_REF_EN}
C {opin.sym} 240 0 0 0 {name=p2 lab=EXT_REF_ENB}
C {iopin.sym} 20 -310 3 0 {name=p3 lab=VDDA}
C {iopin.sym} 20 300 1 0 {name=p4 lab=VSSA}
