v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -960 -710 -160 -310 {flags=graph
y1=-0.18486483
y2=1.1478146
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-16.814576
x2=-6.4280682
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/ISINK_dc_tb.raw
autoload=1
color=4
node=bias_vn
dataset=1
sim_type=dc}
P 4 5 -1260 -270 120 -270 120 -70 -1260 -70 -1260 -270 {}
N -1210 -140 -1210 -110 {lab=vssa}
N -1210 -230 -1210 -200 {lab=BIASGEN_en_VS}
N -10 -140 -10 -110 {lab=vssa}
N -10 -230 -10 -200 {lab=vdda}
N 70 -150 70 -120 {lab=GND}
N 70 -230 70 -210 {lab=vssa}
N -450 -40 -450 10 {lab=vdda}
N -450 110 -450 140 {lab=bias_VN_blockedNmos}
N -450 290 -450 400 {lab=vssa}
N -600 190 -530 190 {lab=BIASGEN_en_VS}
N -570 230 -530 230 {lab=bias_VN_blockedNmos}
N -570 110 -570 230 {lab=bias_VN_blockedNmos}
N -600 230 -570 230 {lab=bias_VN_blockedNmos}
N -570 110 -450 110 {lab=bias_VN_blockedNmos}
N -450 70 -450 110 {lab=bias_VN_blockedNmos}
N -1080 -140 -1080 -110 {lab=vssa}
N -1080 -230 -1080 -200 {lab=gate}
N -630 110 -600 110 {lab=vssa}
N -860 -30 -860 20 {lab=vdda}
N -860 120 -860 150 {lab=bias_VN_noLeak}
N -860 300 -860 410 {lab=vssa}
N -1010 200 -940 200 {lab=BIASGEN_en_VS}
N -980 240 -940 240 {lab=bias_VN_noLeak}
N -980 120 -980 240 {lab=bias_VN_noLeak}
N -1010 240 -980 240 {lab=bias_VN_noLeak}
N -980 120 -860 120 {lab=bias_VN_noLeak}
N -860 80 -860 120 {lab=bias_VN_noLeak}
N -80 -40 -80 10 {lab=vdda}
N -80 110 -80 140 {lab=bias_VN_floatingbulkS}
N -80 290 -80 400 {lab=vssa}
N -230 190 -160 190 {lab=BIASGEN_en_VS}
N -200 230 -160 230 {lab=bias_VN_floatingbulkS}
N -200 110 -200 230 {lab=bias_VN_floatingbulkS}
N -230 230 -200 230 {lab=bias_VN_floatingbulkS}
N -200 110 -80 110 {lab=bias_VN_floatingbulkS}
N -80 70 -80 110 {lab=bias_VN_floatingbulkS}
N -820 -250 -820 -200 {lab=vdda}
N -820 -140 -820 -110 {lab=vssa}
N -260 110 -230 110 {lab=floating_Mux_net}
C {devices/vsource.sym} -1210 -170 0 0 {name=v_en value=1.2}
C {devices/vsource.sym} -10 -170 0 0 {name=Vdd value=1.2
}
C {lab_wire.sym} -1210 -230 0 0 {name=p1 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -10 -230 0 0 {name=p2 sig_type=std_logic lab=vdda
}
C {devices/code_shown.sym} -1530 -430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {lab_wire.sym} -10 -110 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -1210 -110 0 0 {name=p7 sig_type=std_logic lab=vssa
}
C {devices/gnd.sym} 70 -120 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 70 -230 0 0 {name=p9 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} 70 -180 0 0 {name=Vss value=0
}
C {devices/code_shown.sym} 140 -360 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param IBIAS=1m

.options abstol=1e-14
.options gmin=1e-14
.control
save all
    dc I2 10p 1u 10p 
    
    write ISINK_floatingbulkS_dc_tb.raw
    plot V(bias_VN_floatingbulkS)

.endc
"}
C {lab_wire.sym} -450 -40 0 0 {name=p4 sig_type=std_logic lab=vdda
}
C {ISINK.sym} -470 200 0 1 {name=x2}
C {lab_wire.sym} -450 400 2 0 {name=p11 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -600 190 0 0 {name=p3 sig_type=std_logic lab=BIASGEN_en_VS
}
C {launcher.sym} -1100 -690 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/SelMUX_dc_tb.raw op
xschem setprop rect 2 0 fullxzoom"
}
C {lab_wire.sym} -600 230 0 0 {name=p6 sig_type=std_logic lab=bias_VN_blockedNmos
}
C {isource.sym} -450 40 0 0 {name=I0 value=\{IBIAS\}}
C {sg13g2_pr/sg13_hv_nmos.sym} -600 90 1 0 {name=MUX_L1_D
l=10.0u
w=0.45
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -600 70 0 0 {name=p8 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -1080 -170 0 0 {name=v_gate value=1.2}
C {lab_wire.sym} -1080 -230 0 0 {name=p12 sig_type=std_logic lab=gate
}
C {lab_wire.sym} -1080 -110 0 0 {name=p13 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -630 110 0 0 {name=p14 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -860 -30 0 0 {name=p10 sig_type=std_logic lab=vdda
}
C {ISINK.sym} -880 210 0 1 {name=x1}
C {lab_wire.sym} -860 410 2 0 {name=p15 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -1010 200 0 0 {name=p16 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -1010 240 0 0 {name=p17 sig_type=std_logic lab=bias_VN_noLeak
}
C {isource.sym} -860 50 0 0 {name=I1 value=\{IBIAS\}}
C {lab_wire.sym} -80 -40 0 0 {name=p18 sig_type=std_logic lab=vdda
}
C {ISINK.sym} -100 200 0 1 {name=x3}
C {lab_wire.sym} -80 400 2 0 {name=p19 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -230 190 0 0 {name=p20 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -230 230 0 0 {name=p21 sig_type=std_logic lab=bias_VN_floatingbulkS
}
C {isource.sym} -80 40 0 0 {name=I2 value=\{IBIAS\}}
C {sg13g2_pr/sg13_hv_nmos.sym} -230 90 1 0 {name=MUX_L1
l=10.0u
w=0.45
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -230 70 0 0 {name=p22 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -260 110 0 0 {name=p24 sig_type=std_logic lab=floating_Mux_net
}
C {lab_wire.sym} -820 -250 0 0 {name=p25 sig_type=std_logic lab=vdda
}
C {isource.sym} -820 -170 0 0 {name=Iref value=\{IBIAS\}}
C {lab_wire.sym} -820 -110 0 0 {name=p26 sig_type=std_logic lab=vssa
}
