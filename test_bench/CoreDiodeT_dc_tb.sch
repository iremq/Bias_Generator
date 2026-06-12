v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -960 -710 -160 -310 {flags=graph
y1=0.36779929
y2=0.38613561
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-10.192468
x2=-9.9534338
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/ISINK_dc_tb.raw
autoload=1
color=4
node=bias_vn}
P 4 5 -1260 -270 120 -270 120 -70 -1260 -70 -1260 -270 {}
N -1210 -140 -1210 -110 {lab=vssa}
N -1210 -230 -1210 -200 {lab=BIASGEN_en_VS}
N -10 -140 -10 -110 {lab=vssa}
N -10 -230 -10 -200 {lab=vdda}
N 70 -150 70 -120 {lab=GND}
N 70 -230 70 -210 {lab=vssa}
N -910 -140 -910 -110 {lab=ref_VUN[0]}
N -910 -230 -910 -200 {lab=vdda}
N -820 -140 -820 -110 {lab=ref_VUN[1]}
N -820 -230 -820 -200 {lab=vdda}
N -730 -140 -730 -110 {lab=ref_VUN[2]}
N -730 -230 -730 -200 {lab=vdda}
N -640 -140 -640 -110 {lab=ref_VUN[3]}
N -640 -230 -640 -200 {lab=vdda}
N -540 -140 -540 -110 {lab=ref_VUN[4]}
N -540 -230 -540 -200 {lab=vdda}
N -340 -140 -340 -110 {lab=ref_VUN[6]}
N -340 -230 -340 -200 {lab=vdda}
N -440 -140 -440 -110 {lab=ref_VUN[5]}
N -440 -230 -440 -200 {lab=vdda}
N -240 -140 -240 -110 {lab=ref_VUN[7]}
N -240 -230 -240 -200 {lab=vdda}
N -820 50 -820 100 {lab=ref_VUN[7:0]}
N -920 180 -910 180 {lab=BIASGEN_en_VS}
N -820 260 -820 290 {lab=vssa}
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

.options abstol=1e-15
.options gmin=1e-15
.control
save all
    op
    
    write CoreDiodeT_dc_tb.raw

.endc
"}
C {launcher.sym} -1100 -690 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/SelMUX_dc_tb.raw op
xschem setprop rect 2 0 fullxzoom"
}
C {isource.sym} -910 -170 0 0 {name=I0 value=100f}
C {lab_wire.sym} -910 -110 0 0 {name=p4 sig_type=std_logic lab=ref_VUN[0]
}
C {lab_wire.sym} -910 -230 0 0 {name=p17 sig_type=std_logic lab=vdda
}
C {isource.sym} -820 -170 0 0 {name=I1 value=1p}
C {lab_wire.sym} -820 -110 0 0 {name=p18 sig_type=std_logic lab=ref_VUN[1]
}
C {lab_wire.sym} -820 -230 0 0 {name=p21 sig_type=std_logic lab=vdda
}
C {isource.sym} -730 -170 0 0 {name=I2 value=10p}
C {lab_wire.sym} -730 -110 0 0 {name=p22 sig_type=std_logic lab=ref_VUN[2]
}
C {lab_wire.sym} -730 -230 0 0 {name=p23 sig_type=std_logic lab=vdda
}
C {isource.sym} -640 -170 0 0 {name=I3 value=100p}
C {lab_wire.sym} -640 -110 0 0 {name=p24 sig_type=std_logic lab=ref_VUN[3]
}
C {lab_wire.sym} -640 -230 0 0 {name=p25 sig_type=std_logic lab=vdda
}
C {isource.sym} -540 -170 0 0 {name=I4 value=1n}
C {lab_wire.sym} -540 -110 0 0 {name=p26 sig_type=std_logic lab=ref_VUN[4]
}
C {lab_wire.sym} -540 -230 0 0 {name=p27 sig_type=std_logic lab=vdda
}
C {isource.sym} -340 -170 0 0 {name=I6 value=100n}
C {lab_wire.sym} -340 -110 0 0 {name=p28 sig_type=std_logic lab=ref_VUN[6]
}
C {lab_wire.sym} -340 -230 0 0 {name=p29 sig_type=std_logic lab=vdda
}
C {isource.sym} -440 -170 0 0 {name=I5 value=10n}
C {lab_wire.sym} -440 -110 0 0 {name=p30 sig_type=std_logic lab=ref_VUN[5]
}
C {lab_wire.sym} -440 -230 0 0 {name=p31 sig_type=std_logic lab=vdda
}
C {isource.sym} -240 -170 0 0 {name=I7 value=1u}
C {lab_wire.sym} -240 -110 0 0 {name=p32 sig_type=std_logic lab=ref_VUN[7]
}
C {lab_wire.sym} -240 -230 0 0 {name=p33 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -820 50 0 0 {name=p19 sig_type=std_logic lab=ref_VUN[7:0]
}
C {CoreDiodeT.sym} -820 220 0 0 {name=x3}
C {lab_wire.sym} -920 180 0 0 {name=p3 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -820 290 0 0 {name=p6 sig_type=std_logic lab=vssa
}
