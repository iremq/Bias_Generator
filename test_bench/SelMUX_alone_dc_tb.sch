v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -960 -710 -160 -310 {flags=graph
y1=-11.00821
y2=-4.352215
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0.14765682
x2=7.1487193
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=1
rawfile=$netlist_dir/SelMUC_alone_dc_tb.raw
autoload=1
color=5
node=i(bias_un)}
P 4 5 -1260 -270 120 -270 120 -70 -1260 -70 -1260 -270 {}
N -1210 -140 -1210 -110 {lab=vssa}
N -1210 -230 -1210 -200 {lab=BIASGEN_en_VS}
N -10 -140 -10 -110 {lab=vssa}
N -10 -230 -10 -200 {lab=vdda}
N 70 -150 70 -120 {lab=GND}
N 70 -230 70 -210 {lab=vssa}
N -1120 -140 -1120 -110 {lab=vssa}
N -1120 -230 -1120 -200 {lab=en_VS[0]}
N -1050 -140 -1050 -110 {lab=vssa}
N -1050 -230 -1050 -200 {lab=en_VS[1]}
N -980 -140 -980 -110 {lab=vssa}
N -980 -230 -980 -200 {lab=en_VS[2]}
N -750 410 -750 440 {lab=vssa}
N -830 410 -830 440 {lab=en_VSB[2:0]}
N -920 410 -920 440 {lab=en_VS[2:0]}
N -810 -140 -810 -110 {lab=ref_VUN[0]}
N -810 -230 -810 -200 {lab=vssa}
N -720 -140 -720 -110 {lab=ref_VUN[1]}
N -720 -230 -720 -200 {lab=vssa}
N -630 -140 -630 -110 {lab=ref_VUN[2]}
N -630 -230 -630 -200 {lab=vssa}
N -540 -140 -540 -110 {lab=ref_VUN[3]}
N -540 -230 -540 -200 {lab=vssa}
N -440 -140 -440 -110 {lab=ref_VUN[4]}
N -440 -230 -440 -200 {lab=vssa}
N -240 -140 -240 -110 {lab=ref_VUN[6]}
N -240 -230 -240 -200 {lab=vssa}
N -340 -140 -340 -110 {lab=ref_VUN[5]}
N -340 -230 -340 -200 {lab=vssa}
N -140 -140 -140 -110 {lab=ref_VUN[7]}
N -140 -230 -140 -200 {lab=vssa}
N -1220 230 -1000 230 {lab=ref_VUN[7:0] bus=true}
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

.options abstol=1e-13
.options gmin=1e-13
.control
save all
let digitalCommand = vector(8)
let BIAS_UN = vector(8)

let code = 0

while code < 8
    * Set the 8 bits
    alter V0 = 1.2*(code % 2)
    alter V1 = 1.2*(floor(code/2) % 2)
    alter V2 = 1.2*(floor(code/4) % 2)
    op   
    let digitalCommand[code] = code
    let BIAS_UN[code]   = i(v.x1.V_ref_u_5)
    let code = code + 1
    write SelMux_alone_cases/SelMux_alone_case_\{$&code\}.raw
end


    setplot const
    settype current BIAS_UN
    setscale digitalCommand
    plot BIAS_UN
    
    write SelMUC_alone_dc_tb.raw BIAS_UN 

.endc
"}
C {lab_wire.sym} -1580 -150 0 0 {name=p18 sig_type=std_logic lab=en_VS[2:0]
}
C {lab_wire.sym} -1520 -200 0 1 {name=p19 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -1520 -100 0 1 {name=p20 sig_type=std_logic lab=vssa
}
C {inv.sym} -1430 -150 0 0 {name=xinv[2:0]}
C {devices/vsource.sym} -1120 -170 0 0 {name=V0 value=1.2}
C {lab_wire.sym} -1120 -230 0 0 {name=p34 sig_type=std_logic lab=en_VS[0]
}
C {lab_wire.sym} -1120 -110 0 0 {name=p35 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -1050 -170 0 0 {name=V1 value=1.2}
C {lab_wire.sym} -1050 -230 0 0 {name=p36 sig_type=std_logic lab=en_VS[1]
}
C {lab_wire.sym} -1050 -110 0 0 {name=p37 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -980 -170 0 0 {name=V2 value=1.2}
C {lab_wire.sym} -980 -230 0 0 {name=p38 sig_type=std_logic lab=en_VS[2]
}
C {lab_wire.sym} -980 -110 0 0 {name=p39 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -1450 -150 0 1 {name=p75 sig_type=std_logic lab=en_VSB[2:0]
}
C {SelMUX.sym} -850 230 0 0 {name=x1}
C {lab_wire.sym} -750 440 2 0 {name=p8 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -920 440 3 0 {name=p6 sig_type=std_logic lab=en_VS[2:0]
}
C {lab_wire.sym} -830 440 1 1 {name=p10 sig_type=std_logic lab=en_VSB[2:0]
}
C {lab_wire.sym} -1220 230 0 0 {name=p14 sig_type=std_logic lab=ref_VUN[7:0]
}
C {lab_wire.sym} -810 -110 0 0 {name=p15 sig_type=std_logic lab=ref_VUN[0]
}
C {lab_wire.sym} -810 -230 0 0 {name=p16 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -720 -110 0 0 {name=p17 sig_type=std_logic lab=ref_VUN[1]
}
C {lab_wire.sym} -720 -230 0 0 {name=p21 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -630 -110 0 0 {name=p22 sig_type=std_logic lab=ref_VUN[2]
}
C {lab_wire.sym} -630 -230 0 0 {name=p23 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -540 -110 0 0 {name=p24 sig_type=std_logic lab=ref_VUN[3]
}
C {lab_wire.sym} -540 -230 0 0 {name=p25 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -440 -110 0 0 {name=p26 sig_type=std_logic lab=ref_VUN[4]
}
C {lab_wire.sym} -440 -230 0 0 {name=p27 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -240 -110 0 0 {name=p28 sig_type=std_logic lab=ref_VUN[6]
}
C {lab_wire.sym} -240 -230 0 0 {name=p29 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -340 -110 0 0 {name=p30 sig_type=std_logic lab=ref_VUN[5]
}
C {lab_wire.sym} -340 -230 0 0 {name=p31 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -140 -110 0 0 {name=p32 sig_type=std_logic lab=ref_VUN[7]
}
C {lab_wire.sym} -140 -230 0 0 {name=p33 sig_type=std_logic lab=vssa
}
C {launcher.sym} -1100 -690 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/SelMUX_alone_dc_tb.raw op
xschem setprop rect 2 0 fullxzoom"
}
C {lab_wire.sym} -700 230 0 1 {name=p40 sig_type=std_logic lab=out_Mux
}
C {devices/vsource.sym} -810 -170 2 0 {name=Vdd1 value=0.125
}
C {devices/vsource.sym} -720 -170 2 0 {name=Vdd2 value=0.20
}
C {devices/vsource.sym} -630 -170 2 0 {name=Vdd3 value=0.29
}
C {devices/vsource.sym} -540 -170 2 0 {name=Vdd4 value=0.37
}
C {devices/vsource.sym} -440 -170 2 0 {name=Vdd5 value=0.45
}
C {devices/vsource.sym} -340 -170 2 0 {name=Vdd6 value=0.53648
}
C {devices/vsource.sym} -240 -170 2 0 {name=Vdd7 value=0.64832
}
C {devices/vsource.sym} -140 -170 2 0 {name=Vdd8 value=0.876
}
