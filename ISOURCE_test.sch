v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -370 60 -370 150 {lab=0}
N -120 60 -120 90 {lab=0}
N -370 -70 -370 10 {lab=#net1}
N -370 -70 -250 -70 {lab=#net1}
N -440 -30 -440 60 {lab=0}
N -440 -160 -440 -80 {lab=#net2}
N -440 -160 -170 -160 {lab=#net2}
N -170 -160 -170 -140 {lab=#net2}
N -290 20 -290 110 {lab=0}
N -170 150 -170 240 {lab=0}
N -290 -30 -250 -30 {lab=#net3}
N -170 60 -170 100 {lab=#net4}
C {code_shown.sym} -30 -220 0 0 {name=COMMANDS only_toplevel=false value="
.lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.option savecurrents

.control
* Test 1: DC operating point check
op
print all

* Test 2: Sweep VMBIAS to see the I-V transfer characteristic
* For a PMOS source: lower MBIAS = more current
dc VMBIAS 0.3 0.9 0.005
write isource_vmbias.raw
plot vio#branch ylog

* Test 3: Sweep VIO (compliance test) at fixed MBIAS
reset
alter VMBIAS=0.6
dc VIO 0 1.2 0.005
write isource_vio.raw
plot vio#branch
.endc
"
"}
C {vsource.sym} -370 40 0 0 {name=VMBIAS value=0.6 savecurrent=false}
C {gnd.sym} -370 150 0 0 {name=l3 lab=0}
C {gnd.sym} -120 90 0 0 {name=l1 lab=0}
C {vsource.sym} -440 -50 0 0 {name=VDDA value=1.2 savecurrent=false}
C {gnd.sym} -440 60 0 0 {name=l2 lab=0}
C {vsource.sym} -290 0 0 0 {name=VENB value=0 savecurrent=false}
C {gnd.sym} -290 110 0 0 {name=l4 lab=0}
C {vsource.sym} -170 130 0 0 {name=VIO value=0.6 savecurrent=false}
C {gnd.sym} -170 240 0 0 {name=l5 lab=0}
C {ISOURCE.sym} -100 -100 0 0 {name=x1}
