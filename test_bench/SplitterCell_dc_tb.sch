v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 -510 -270 70 -270 70 -70 -510 -70 -510 -270 {}
N -430 -130 -430 -100 {lab=Vssa}
N -430 -220 -430 -190 {lab=bias_VPN}
N -60 -130 -60 -100 {lab=vssa}
N -60 -220 -60 -190 {lab=vdda}
N -310 -130 -310 -100 {lab=Vssa}
N -310 -220 -310 -190 {lab=en_VS}
N 30 -140 30 -110 {lab=GND}
N 30 -220 30 -200 {lab=vssa}
N -360 190 -360 210 {lab=#net1}
N -320 450 -320 570 {lab=vssa}
N -550 310 -430 310 {lab=bias_VPN}
N -60 200 10 200 {lab=vssa}
N -230 380 -230 450 {lab=vssa}
N -170 380 -170 450 {lab=vssa}
N -110 380 -110 450 {lab=vssa}
N -50 380 -50 450 {lab=vssa}
N -290 380 -260 380 {lab=#net2}
N -20 380 10 380 {lab=#net3}
N 10 230 10 380 {lab=#net3}
N 10 90 10 170 {lab=vdda}
N 50 200 80 200 {lab=vdda}
N -550 380 -430 380 {lab=vssa}
N -360 450 -360 490 {lab=en_VS}
N -400 450 -400 540 {lab=en_VSB}
N -360 90 -360 130 {lab=vdda}
N -400 190 -400 210 {lab=#net4}
N -400 90 -400 130 {lab=vdda}
N -230 340 -50 340 {lab=bias_VPN}
N -290 310 -230 310 {lab=bias_VPN}
N -230 310 -230 340 {lab=bias_VPN}
C {SplitterCell.sym} -300 380 0 0 {name=x1}
C {devices/vsource.sym} -430 -160 0 0 {name=v_bias_VPN value=1.2}
C {devices/vsource.sym} -60 -160 0 0 {name=Vdd value=1.2
}
C {lab_wire.sym} -430 -220 0 0 {name=p1 sig_type=std_logic lab=bias_VPN
}
C {lab_wire.sym} -60 -220 0 0 {name=p2 sig_type=std_logic lab=vdda
}
C {devices/code_shown.sym} 130 70 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} -310 -160 0 0 {name=v_en_VS value=1.2}
C {lab_wire.sym} -310 -220 0 0 {name=p3 sig_type=std_logic lab=en_VS
}
C {lab_wire.sym} -60 -100 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -310 -100 0 0 {name=p6 sig_type=std_logic lab=Vssa
}
C {lab_wire.sym} -430 -100 0 0 {name=p7 sig_type=std_logic lab=Vssa
}
C {devices/gnd.sym} 30 -110 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 30 -220 0 0 {name=p9 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} 30 -170 0 0 {name=Vss value=0
}
C {devices/code_shown.sym} 130 -320 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27


.control

save all V(en_VS) V(en_VSB) I(v_out_UP) I(v_out_UPB) I(v_isplit) V(bias_VPN)
dc V_bias_VPN 0 1.2 0.001 V_en_VS 0 1.2 1.2
write SplitterCell_dc_tb.raw

.endc
"}
C {lab_wire.sym} -550 310 0 0 {name=p12 sig_type=std_logic lab=bias_VPN
}
C {sg13g2_pr/sg13_hv_nmos.sym} 30 200 0 1 {name=M_enb
l=0.45u
w=7.2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -60 200 0 0 {name=p_en_g2 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} -230 360 3 1 {name=M_s9
l=0.45u
w=14.4u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -230 450 3 0 {name=p_en_g11 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} -170 360 3 1 {name=M_s10
l=0.45u
w=14.4u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -170 450 3 0 {name=p_en_g12 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} -110 360 3 1 {name=M_s11
l=0.45u
w=14.4u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -110 450 3 0 {name=p_en_g13 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} -50 360 3 1 {name=M_s12
l=0.45u
w=14.4u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -50 450 3 0 {name=p_en_g14 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 10 90 0 0 {name=p13 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -400 90 0 0 {name=p4 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -360 90 0 0 {name=p10 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -320 570 2 0 {name=p11 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} 80 200 2 0 {name=p14 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -550 380 0 0 {name=p_en_g1 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -360 490 0 1 {name=p8 sig_type=std_logic lab=en_VS
}
C {lab_wire.sym} -400 540 0 0 {name=p17 sig_type=std_logic lab=en_VSB
}
C {lab_wire.sym} -530 540 0 0 {name=p18 sig_type=std_logic lab=en_VS
}
C {lab_wire.sym} -470 490 0 1 {name=p19 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -470 590 0 1 {name=p20 sig_type=std_logic lab=vssa
}
C {inv.sym} -380 540 0 0 {name=x2}
C {devices/ammeter.sym} -360 160 0 0 {name=V_out_UPB}
C {devices/ammeter.sym} -400 160 0 0 {name=V_out_UP}
