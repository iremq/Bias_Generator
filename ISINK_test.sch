v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 80 -40 120 {lab=0}
N 160 70 160 160 {lab=0}
N -140 -10 -140 80 {lab=0}
N 90 110 90 200 {lab=0}
N 40 -10 160 -10 {lab=#net1}
N 160 -10 160 20 {lab=#net1}
N 40 30 90 30 {lab=#net2}
N 90 30 90 60 {lab=#net2}
N -140 -90 -140 -60 {lab=#net3}
N -140 -90 -40 -90 {lab=#net3}
N -40 -90 -40 -60 {lab=#net3}
C {ISINK.sym} -20 0 0 0 {name=x1}
C {gnd.sym} -40 120 0 0 {name=l1 lab=0}
C {vsource.sym} 160 50 0 0 {name=VEN value=3.3 savecurrent=false}
C {vsource.sym} -140 -30 0 0 {name=VIO value=0.6 savecurrent=false}
C {vsource.sym} 90 90 0 0 {name=VMBIAS value=0.5 savecurrent=false}
C {code_shown.sym} 290 -310 0 0 {name=COMMANDS only_toplevel=false value="
.lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.option savecurrents

.control
* Sweep VIO (output compliance test)
dc VIO 0 1.2 0.005
write isink_dc_vio.raw

* Sweep VMBIAS to see exponential I-V (the neuromorphic plot)
reset
alter VIO=0.6
dc VMBIAS 0.3 0.9 0.005
write isink_dc_vmbias.raw
plot -vio#branch ylog

* Test compliance voltage at a few VMBIAS values
reset
alter VMBIAS=0.5
dc VIO 0 1.2 0.005
write isink_vio_at_05.raw
plot -vio#branch
.endc
"}
C {gnd.sym} -140 80 0 0 {name=l2 lab=0}
C {gnd.sym} 90 200 0 0 {name=l3 lab=0}
C {gnd.sym} 160 160 0 0 {name=l4 lab=0}
