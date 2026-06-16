v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -260 -220 {}
N 40 -70 40 -20 {lab=n2}
N 350 -50 350 -30 {lab=n1}
N -0 -0 10 0 {lab=n2}
N 0 -70 -0 -0 {lab=n2}
N -40 -0 -0 -0 {lab=n2}
N -0 -70 40 -70 {lab=n2}
N 40 -150 40 -70 {lab=n2}
N -80 -310 -80 -20 {lab=vpmirr}
N 670 -180 670 -120 {lab=VOP}
N -30 -340 420 -340 {lab=vpmirr}
N 190 -210 350 -210 {lab=vtail}
N 190 -390 190 -210 {lab=vtail}
N 40 -210 190 -210 {lab=vtail}
N -80 -540 -80 -340 {lab=VDDA}
N 190 -540 460 -540 {lab=VDDA}
N 130 -420 150 -420 {lab=VBP}
N 460 -100 460 -20 {lab=vout1stage}
N 460 -100 630 -100 {lab=vout1stage}
N 460 -230 460 -100 {lab=vout1stage}
N 460 -540 670 -540 {lab=VDDA}
N 670 -540 670 -300 {lab=VDDA}
N 460 60 670 60 {lab=VSSA}
N 350 60 460 60 {lab=VSSA}
N -80 -310 -30 -310 {lab=vpmirr}
N -30 -340 -30 -310 {lab=vpmirr}
N -40 -340 -30 -340 {lab=vpmirr}
N 550 -230 570 -230 {lab=#net1}
N 630 -230 670 -230 {lab=VOP}
N 670 -270 670 -230 {lab=VOP}
N 460 -230 490 -230 {lab=vout1stage}
N 460 -310 460 -230 {lab=vout1stage}
N 390 -0 420 -0 {lab=n1}
N 350 -0 350 60 {lab=VSSA}
N 460 -0 460 60 {lab=VSSA}
N 390 -50 390 -0 {lab=n1}
N 350 -50 390 -50 {lab=n1}
N 350 -150 350 -50 {lab=n1}
N 670 -100 670 60 {lab=VSSA}
N -80 0 -80 60 {lab=VSSA}
N 40 -0 40 60 {lab=VSSA}
N 570 -300 630 -300 {lab=VBP}
N 40 -180 360 -180 {lab=VDDA}
N 40 60 350 60 {lab=VSSA}
N -80 60 40 60 {lab=VSSA}
N -330 60 -80 60 {lab=VSSA}
N -80 -540 190 -540 {lab=VDDA}
N -330 -540 -80 -540 {lab=VDDA}
N 670 -180 730 -180 {lab=VOP}
N 670 -230 670 -180 {lab=VOP}
N 460 -540 460 -340 {lab=VDDA}
N 190 -540 190 -420 {lab=VDDA}
C {sg13g2_pr/sg13_hv_nmos.sym} 370 0 0 1 {name=M13
l=0.5u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 0 0 0 {name=M1
l=0.5u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 370 -180 0 1 {name=M12
l=0.5u
w=16u
ng=2
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -180 0 0 {name=M3
l=0.5u
w=16u
ng=2
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 170 -420 0 0 {name=M4
l=500n
w=12u
ng=2
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -60 -340 0 1 {name=M5
l=500n
w=2u
ng=2
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 440 -340 0 0 {name=M6
l=500n
w=2u
ng=2
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 440 0 0 0 {name=M7
l=0.5u
w=1.75u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 650 -100 0 0 {name=M8
l=0.5u
w=4u
ng=4
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 650 -300 0 0 {name=M9
l=0.5u
w=4u
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -60 0 0 1 {name=M10
l=0.5u
w=2u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 130 -420 0 0 {name=p1 lab=VBP}
C {ipin.sym} 0 -180 0 0 {name=p2 lab=INP}
C {ipin.sym} 390 -180 0 1 {name=p3 lab=INN}
C {iopin.sym} -330 60 0 1 {name=p4 lab=VSSA}
C {lab_wire.sym} 590 -300 0 0 {name=p5 sig_type=std_logic lab=VBP}
C {lab_wire.sym} 180 -180 0 0 {name=p6 sig_type=std_logic lab=VDDA}
C {res.sym} 520 -230 1 0 {name=R1
value=49.84k
footprint=1206
device=resistor
m=1}
C {iopin.sym} -330 -540 0 1 {name=p7 lab=VDDA}
C {lab_wire.sym} -20 0 0 0 {name=p8 sig_type=std_logic lab=n2}
C {lab_wire.sym} 410 0 0 0 {name=p9 sig_type=std_logic lab=n1}
C {lab_wire.sym} 190 -210 0 0 {name=p10 sig_type=std_logic lab=vtail}
C {lab_wire.sym} 150 -340 0 0 {name=p11 sig_type=std_logic lab=vpmirr}
C {opin.sym} 730 -180 0 0 {name=p12 lab=VOP}
C {lab_wire.sym} 460 -240 1 0 {name=p13 sig_type=std_logic lab=vout1stage}
C {sg13cmos5l_pr/cap_mfringe.sym} 600 -230 1 0 {name=C1
model=cap_mfringe
w=28.0u
l=10.0u
toplev=8
botlev=4
spiceprefix=X
}
