v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {MasterBias Testbench} -910 -340 0 0 0.5 0.5 {}
N -280 -90 -100 -90 {lab=VDDA}
N -280 -40 -280 -10 {lab=0}
N -120 90 -120 120 {lab=0}
N 200 -190 260 -190 {lab=0}
N 200 -130 260 -130 {lab=0}
N 200 -70 260 -70 {lab=0}
N 200 -10 260 -10 {lab=0}
N 200 50 260 50 {lab=0}
N 200 110 260 110 {lab=0}
N 200 170 260 170 {lab=0}
N 200 240 260 240 {lab=0}
N 260 170 260 240 {lab=0}
N 260 240 260 270 {lab=0}
N 260 -190 260 -130 {lab=0}
N 260 -130 260 -70 {lab=0}
N 260 -70 260 -10 {lab=0}
N 260 -10 260 50 {lab=0}
N 260 50 260 110 {lab=0}
N 260 110 260 170 {lab=0}
N -500 -270 -100 -270 {lab=#net1}
N -620 -220 -620 -190 {lab=0}
N -500 -220 -500 -190 {lab=0}
N -400 -210 -100 -210 {lab=#net2}
N -400 -160 -400 -130 {lab=0}
N -320 -150 -100 -150 {lab=#net3}
N -320 -100 -320 -70 {lab=0}
N 100 -240 200 -240 {lab=#net4}
N 100 -180 200 -180 {lab=#net5}
N 100 -120 200 -120 {lab=#net6}
N 100 -60 200 -60 {lab=#net7}
N 100 0 200 0 {lab=#net8}
N 100 60 200 60 {lab=#net9}
N 100 120 200 120 {lab=#net10}
N 100 180 200 180 {lab=#net11}
C {MasterBias.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -280 -60 0 0 {name=VDDA value=1.2 savecurrent=false}
C {gnd.sym} -280 -10 0 0 {name=l_vdda lab=0}
C {gnd.sym} -120 120 0 0 {name=l_vssa lab=0}
C {vsource.sym} 200 -210 0 0 {name=Vmeas_1uA value=0 savecurrent=true}
C {vsource.sym} 200 -150 0 0 {name=Vmeas_100nA value=0 savecurrent=true}
C {vsource.sym} 200 -90 0 0 {name=Vmeas_10nA value=0 savecurrent=true}
C {vsource.sym} 200 -30 0 0 {name=Vmeas_1nA value=0 savecurrent=true}
C {vsource.sym} 200 30 0 0 {name=Vmeas_100pA value=0 savecurrent=true}
C {vsource.sym} 200 90 0 0 {name=Vmeas_10pA value=0 savecurrent=true}
C {vsource.sym} 200 150 0 0 {name=Vmeas_1pA value=0 savecurrent=true}
C {vsource.sym} 200 210 0 0 {name=Vmeas_100fA value=0 savecurrent=true}
C {gnd.sym} 260 270 0 0 {name=l_gnd lab=0}
C {lab_wire.sym} -200 -90 0 0 {name=lb_vdda sig_type=std_logic lab=VDDA}
C {vsource.sym} -500 -240 0 0 {name=Vbyp value=0 savecurrent=false}
C {gnd.sym} -500 -190 0 0 {name=l_bypen lab=0}
C {vsource.sym} -620 -240 0 0 {name=Vextrefen value=0 savecurrent=false}
C {gnd.sym} -620 -190 0 0 {name=l_extrefen lab=0}
C {lab_wire.sym} -620 -270 2 0 {name=lbl_extrefen sig_type=std_logic lab=EXT_REF_EN}
C {vsource.sym} -400 -180 0 0 {name=Vvbptia value=0.5 savecurrent=false}
C {gnd.sym} -400 -130 0 0 {name=l_vbp lab=0}
C {vsource.sym} -320 -120 0 0 {name=Vvref value=0.1 savecurrent=false}
C {gnd.sym} -320 -70 0 0 {name=l_vref lab=0}
C {code_shown.sym} -2650 -660 0 0 {name=COMMANDS only_toplevel=false value="
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.option savecurrents temp=27
* .nodeset hints for DC op (source-stepping often overrides these)
.nodeset v(x1.VBIAS)=0.5 v(x1.Vsense)=0.1 v(x1.x_ota.vout1stage)=0.7 v(x1.x_ota.vpmirr)=0.35
* .ic forces the UIC transient starting state
* vout1stage=0.7 puts M8 (HV NMOS) well above threshold so it can pull VBIAS down
.ic v(x1.VBIAS)=0.5 v(x1.Vsense)=0.05 v(x1.x_ota.vout1stage)=0.7 v(x1.x_ota.vpmirr)=0.35 v(x1.x1.Vbn)=0.4 v(x1.x2.Vbn)=0.4 v(x1.x3.Vbn)=0.4 v(x1.x4.Vbn)=0.4 v(x1.x5.Vbn)=0.4 v(x1.x6.Vbn)=0.4 v(x1.x7.Vbn)=0.4

.control
* DC op (use result as reference only - may still find wrong state via source stepping)
op

print v(x1.vsense)
echo '--- DC op bias currents (A) ---'
print i(Vmeas_1uA) i(Vmeas_100nA) i(Vmeas_10nA) i(Vmeas_1nA)
print i(Vmeas_100pA) i(Vmeas_10pA) i(Vmeas_1pA) i(Vmeas_100fA)
write masterbias_op.raw

* Transient with UIC uses .ic above - VBIAS=0.5V, vout1stage=0.7V at t=0
* This forces M8 on so OTA feedback loop can close and settle
tran 1u 5m 
write masterbias_tran.raw
* use linear scale - ylog fails when any current = 0

.endc
"}
