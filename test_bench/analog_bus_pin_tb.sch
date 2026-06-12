v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 0 100 0 {lab=MBAS[1:0]}
N 170 210 220 210 {lab=MBAS[0]}
N 170 140 220 140 {lab=MBAS[1]}
N 100 210 140 210 {lab=mbas1}
N 100 140 140 140 {lab=mbas0}
C {test_bench/analog_bus_pin_source.sym} -80 0 0 0 {name=x1}
C {lab_pin.sym} 100 0 0 1 {name=p_mbias_bus lab=MBAS[1:0]}
C {lab_pin.sym} 220 140 0 1 {name=p_mbias_bus1 lab=MBAS[1]}
C {lab_pin.sym} 220 210 0 1 {name=p_mbias_bus2 lab=MBAS[0]}
C {res.sym} 70 140 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 70 210 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 40 140 0 0 {name=l1 lab=0}
C {gnd.sym} 40 210 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 320 -210 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27

.options abstol=1e-16 
.options gmin=1e-16
.control




    tran 1m 10m

 
    plot v(mbas0) v(mbas1)

.endc
"}
C {res.sym} 170 140 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 210 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 120 210 3 1 {name=p_mbias_bus3 lab=mbas1}
C {lab_pin.sym} 120 140 3 1 {name=p_mbias_bus4 lab=mbas0}
