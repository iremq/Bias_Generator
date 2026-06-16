v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {OTA_b Follower Testbench} -280 -330 0 0 0.5 0.5 {}
N -80 -150 -80 -70 {lab=VDDA}
N -220 0 -150 0 {lab=VSENSE}
N -250 -50 -150 -50 {lab=#net1}
N -250 50 -150 50 {lab=#net2}
N 50 0 160 0 {lab=VBIAS}
N 200 -90 200 -30 {lab=VDDA}
N 200 45 200 60 {lab=VSENSE}
N 200 45 270 45 {lab=VSENSE}
N 200 0 240 0 {lab=0}
N 200 30 200 45 {lab=VSENSE}
C {OTA_b.sym} 0 0 0 0 {name=x_ota}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 0 2 1 {name=Mntest
l=500n
w=25u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {res.sym} 200 90 2 0 {name=R_sense
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -280 -50 1 0 {name=Vvbp value=0.5 savecurrent=false}
C {vsource.sym} -280 50 1 0 {name=Vvref value=0.1 savecurrent=false}
C {vsource.sym} 0 -250 0 0 {name=VDDA_src value=1.2 savecurrent=false}
C {gnd.sym} -80 70 0 0 {name=l_vssa lab=0}
C {gnd.sym} -310 -50 1 0 {name=l_vbp_gnd lab=0}
C {gnd.sym} -310 50 1 0 {name=l_vref_gnd lab=0}
C {gnd.sym} 0 -220 0 0 {name=l_vdda_gnd lab=0}
C {gnd.sym} 200 120 0 0 {name=l_r_gnd lab=0}
C {gnd.sym} 240 0 0 0 {name=l_bulk lab=0}
C {lab_wire.sym} -80 -150 1 0 {name=p_vdda_ota sig_type=std_logic lab=VDDA}
C {lab_wire.sym} 200 -90 1 0 {name=p_vdda_drain sig_type=std_logic lab=VDDA}
C {lab_wire.sym} 0 -280 1 0 {name=p_vdda_src sig_type=std_logic lab=VDDA}
C {lab_wire.sym} -210 0 2 0 {name=p_vsense_inn sig_type=std_logic lab=VSENSE}
C {lab_wire.sym} 270 45 0 0 {name=p_vsense_src sig_type=std_logic lab=VSENSE}
C {lab_wire.sym} 100 0 0 0 {name=p_vbias sig_type=std_logic lab=VBIAS}
C {code_shown.sym} -600 250 0 0 {name=COMMANDS only_toplevel=false value="
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.include /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cap_mfringe.lib
.option savecurrents temp=27
.option abstol=1e-16
.option gmin=1e-16
* nodeset: help the solver find the regulated operating point
.nodeset v(VSENSE)=0.1 v(VBIAS)=0.5 v(x_ota.vout1stage)=0.7 v(x_ota.vpmirr)=0.35 v(x_ota.vtail)=0.8

.control
op

echo === OTA FOLLOWER OPERATING POINTS ===
echo --- Target: v(VSENSE) = 100mV, v(VBIAS) ~ 0.3..0.9V ---
print v(VSENSE)
print v(VBIAS)
print v(x_ota.vout1stage)
print v(x_ota.vtail)
print v(x_ota.vpmirr)
* sense current through R_sense=100k
let I_sense = v(VSENSE) / 100e3
echo I_sense through R_sense [A]:
print I_sense

write ota_b_test_op.raw
.endc
"}
