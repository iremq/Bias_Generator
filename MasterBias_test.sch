v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -250 -160 {}
T {MasterBias Testbench} -910 -340 0 0 0.5 0.5 {}
N 340 -200 340 -170 {lab=0}
N 210 -240 210 200 {lab=0}
N -620 -220 -620 -190 {lab=0}
N -500 -220 -500 -190 {lab=0}
N -400 -160 -400 -130 {lab=0}
N -530 -270 -500 -270 {lab=#net1}
N -530 -270 -530 -100 {lab=#net1}
N -440 -210 -400 -210 {lab=#net2}
N -440 -210 -440 -120 {lab=#net2}
N -440 -120 -150 -120 {lab=#net2}
N -650 -270 -620 -270 {lab=EXT_REF_EN}
N -650 -270 -650 -60 {lab=EXT_REF_EN}
N -650 -60 -150 -60 {lab=EXT_REF_EN}
N -530 -100 -150 -100 {lab=#net1}
N 150 -260 340 -260 {lab=#net3}
N -310 -30 -310 -10 {lab=V_REF}
N -230 -80 -150 -80 {lab=V_REF}
N 150 200 150 290 {lab=0}
C {vsource.sym} 340 -230 0 0 {name=VDDA value=1.2 savecurrent=false}
C {gnd.sym} 340 -170 0 0 {name=l_vdda lab=0}
C {vsource.sym} 180 -240 3 0 {name=Vmeas_1uA value=0 savecurrent=true}
C {vsource.sym} 180 -180 3 0 {name=Vmeas_100nA value=0 savecurrent=true}
C {vsource.sym} 180 -120 3 0 {name=Vmeas_10nA value=0 savecurrent=true}
C {vsource.sym} 180 -60 3 0 {name=Vmeas_1nA value=0 savecurrent=true}
C {vsource.sym} 180 0 3 0 {name=Vmeas_100pA value=0 savecurrent=true}
C {vsource.sym} 180 60 3 0 {name=Vmeas_10pA value=0 savecurrent=true}
C {vsource.sym} 180 120 3 0 {name=Vmeas_1pA value=0 savecurrent=true}
C {vsource.sym} 180 180 3 0 {name=Vmeas_100fA value=0 savecurrent=true}
C {gnd.sym} 210 200 0 0 {name=l_meas_gnd lab=0}
C {gnd.sym} 150 290 0 0 {name=l_vssa_pin lab=0}
C {vsource.sym} -500 -240 0 0 {name=Vbyp value=0 savecurrent=false}
C {gnd.sym} -500 -190 0 0 {name=l_bypen lab=0}
C {vsource.sym} -620 -240 0 0 {name=Vextrefen value=0 savecurrent=false}
C {gnd.sym} -620 -190 0 0 {name=l_extrefen lab=0}
C {lab_wire.sym} -650 -140 2 0 {name=lbl_extrefen sig_type=std_logic lab=EXT_REF_EN}
C {vsource.sym} -400 -180 0 0 {name=Vvbptia value=0.5 savecurrent=false}
C {gnd.sym} -400 -130 0 0 {name=l_vbp lab=0}
C {vsource.sym} -310 20 0 0 {name=Vvref value=0.1 savecurrent=false}
C {gnd.sym} -310 50 0 0 {name=l_vref lab=0}
C {code_shown.sym} -480 -1420 0 0 {name=COMMANDS only_toplevel=false value="
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.include /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cap_mfringe.lib
.option savecurrents temp=27
.option abstol=1e-16
.option gmin=1e-16
* .nodeset hints for DC op (source-stepping often overrides these)
.nodeset v(x1.VBIAS)=0.5 v(x1.Vsense)=0.1 v(x1.x_ota.vout1stage)=0.7 v(x1.x_ota.vpmirr)=0.35
* .ic forces the UIC transient starting state
* vout1stage=0.7 puts M8 (HV NMOS) well above threshold so it can pull VBIAS down
.ic v(x1.VBIAS)=0.5 v(x1.Vsense)=0.05 v(x1.x_ota.vout1stage)=0.7 v(x1.x_ota.vpmirr)=0.35 v(x1.x1.Vbn)=0.4 v(x1.x2.Vbn)=0.4 v(x1.x3.Vbn)=0.4 v(x1.x4.Vbn)=0.4 v(x1.x5.Vbn)=0.4 v(x1.x6.Vbn)=0.4 v(x1.x7.Vbn)=0.4

.control
op 

let cc = unitvec(8)
let cc[0] = abs(i(Vmeas_100fA))
let cc[1] = abs(i(Vmeas_1pA))
let cc[2] = abs(i(Vmeas_10pA))
let cc[3] = abs(i(Vmeas_100pA))
let cc[4] = abs(i(Vmeas_1nA)) 
let cc[5] = abs(i(Vmeas_10nA))
let cc[6] = abs(i(Vmeas_100nA))
let cc[7] = abs(i(Vmeas_1uA)) 

let Decade_Stage = unitvec(8)
let Decade_Stage[0] = 0
let Decade_Stage[1] = 1
let Decade_Stage[2] = 2
let Decade_Stage[3] = 3
let Decade_Stage[4] = 4
let Decade_Stage[5] = 5
let Decade_Stage[6] = 6
let Decade_Stage[7] = 7
  
let log10_I_A = log10(cc)

set title = Decade Division Linearity  [0=100fA  1=1pA  2=10pA  3=100pA  4=1nA  5=10nA  6=100nA  7=1uA]
plot log10_I_A vs Decade_Stage

print i(Vmeas_1uA) i(Vmeas_100nA) i(Vmeas_10nA) i(Vmeas_1nA)
print i(Vmeas_100pA) i(Vmeas_10pA) i(Vmeas_1pA) i(Vmeas_100fA)
write masterbias_op.raw
  
tran 1u 5m uic
write masterbias_tran.raw
.endc


"}
C {lab_wire.sym} -310 -20 2 0 {name=lbl_extrefen1 sig_type=std_logic lab=V_REF}
C {lab_wire.sym} -190 -80 2 0 {name=lbl_extrefen2 sig_type=std_logic lab=V_REF}
C {MasterBias.sym} 0 0 0 0 {name=x1}
