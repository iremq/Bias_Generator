v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 -300 -320 280 -320 280 -120 -300 -120 -300 -320 {}
N -220 -180 -220 -150 {lab=Vssa}
N -220 -270 -220 -240 {lab=gateUp_VI}
N 150 -180 150 -150 {lab=Vssa}
N 150 -270 150 -240 {lab=Vdda}
N -40 -180 -40 -150 {lab=Vssa}
N -40 -270 -40 -240 {lab=gateDown_VI}
N 240 -190 240 -160 {lab=GND}
N 240 -270 240 -250 {lab=vssa}
C {devices/vsource.sym} -220 -210 0 0 {name=Vgdown1 value="PWL(0 0 \{tran_lenght\} 1.2)"}
C {devices/vsource.sym} 150 -210 0 0 {name=Vdd value=1.2
}
C {lab_wire.sym} -220 -270 0 0 {name=p1 sig_type=std_logic lab=gateUp_VI
}
C {lab_wire.sym} 150 -270 0 0 {name=p2 sig_type=std_logic lab=Vdda
}
C {devices/code_shown.sym} 340 20 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} -40 -210 0 0 {name=Vgdown value="PWL(0 \{tran_lenght\} 10m 0)"}
C {lab_wire.sym} -40 -270 0 0 {name=p3 sig_type=std_logic lab=gateDown_VI
}
C {devices/vsource.sym} 80 0 0 0 {name=vmeas value=0
}
C {lab_wire.sym} 150 -150 0 0 {name=p5 sig_type=std_logic lab=Vssa
}
C {lab_wire.sym} -40 -150 0 0 {name=p6 sig_type=std_logic lab=Vssa
}
C {lab_wire.sym} -220 -150 0 0 {name=p7 sig_type=std_logic lab=Vssa
}
C {lab_wire.sym} 230 0 0 0 {name=p8 sig_type=std_logic lab=out_VTO}
C {devices/gnd.sym} 240 -160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 240 -270 0 0 {name=p9 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} 240 -220 0 0 {name=Vss value=0
}
C {devices/code_shown.sym} 340 -370 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param tran_lenght = 10m


.control
*put same value as param tran_lenght
let t_stop = 10m
let t_step = t_stop/1000


save V(gateDown_VI) V(gateUp_VI) I(vmeas) V(out_VTO)
tran $&t_step $&t_stop
write thr_tran_cara_tb.raw
plot V(out_VTO)
plot I(vmeas)

.endc
"}
