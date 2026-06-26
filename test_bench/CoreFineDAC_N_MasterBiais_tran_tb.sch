v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -740 -730 60 -330 {flags=graph
y1=-16.65724
y2=-6.633615
ypos1=0
ypos2=2
subdivy=8
unity=1
x1=0.0017114894
x2=0.010524558
subdivx=1
dataset=-1
unitx=1
logx=0
logy=1
sim_type=tran
autoload=1
color="4 5 6 7 8 9 10 11"
node="i(v.x3.v_ref_u_0)
i(v.x3.v_ref_u_1)
i(v.x3.v_ref_u_2)
i(v.x3.v_ref_u_3)
i(v.x3.v_ref_u_4)
i(v.x3.v_ref_u_5)
i(v.x3.v_ref_u_6)
i(v.x3.v_ref_u_7)"
divx=10
divy=8
rainbow=0
legend=0}
P 4 5 -1080 -270 100 -270 100 -70 -1080 -70 -1080 -270 {}
P 4 1 -2990 320 {}
N -40 -130 -40 -100 {lab=vssa}
N -40 -220 -40 -190 {lab=vdda}
N -640 -130 -640 -100 {lab=Vssa}
N -640 -220 -640 -190 {lab=en_VS[3]}
N 50 -140 50 -110 {lab=GND}
N 50 -220 50 -200 {lab=vssa}
N -570 -130 -570 -100 {lab=Vssa}
N -570 -220 -570 -190 {lab=en_VS[4]}
N -500 -130 -500 -100 {lab=Vssa}
N -500 -220 -500 -190 {lab=en_VS[5]}
N -430 -130 -430 -100 {lab=Vssa}
N -430 -220 -430 -190 {lab=en_VS[6]}
N -360 -130 -360 -100 {lab=Vssa}
N -360 -220 -360 -190 {lab=en_VS[7]}
N -290 -130 -290 -100 {lab=Vssa}
N -290 -220 -290 -190 {lab=en_VS[8]}
N -220 -130 -220 -100 {lab=Vssa}
N -220 -220 -220 -190 {lab=en_VS[9]}
N -150 -130 -150 -100 {lab=Vssa}
N -150 -220 -150 -190 {lab=en_VS[10]}
N -850 -130 -850 -100 {lab=vssa}
N -850 -220 -850 -190 {lab=en_VS[0]}
N -780 -130 -780 -100 {lab=vssa}
N -780 -220 -780 -190 {lab=en_VS[1]}
N -710 -130 -710 -100 {lab=vssa}
N -710 -220 -710 -190 {lab=en_VS[2]}
N -970 -120 -970 -90 {lab=vssa}
N -970 -210 -970 -180 {lab=BIASGEN_en_VS}
N -1200 390 -1020 390 {lab=en_VS[10:0] bus=true}
N -870 200 -870 270 {lab=vdda}
N -870 490 -870 560 {lab=vssa}
N -720 410 -640 410 {lab=bias_VN}
N -720 340 -640 340 {lab=bias_VP}
N -1200 430 -1020 430 {lab=BIASGEN_en_VS}
N -1400 350 -1020 350 {lab=ref_VUN[7:0] bus=true}
N -1400 350 -1400 380 {lab=ref_VUN[7:0] bus=true}
N -2070 220 -2070 340 {lab=ref_VUN[0]}
N -1980 220 -1980 340 {lab=ref_VUN[1]}
N -1890 220 -1890 340 {lab=ref_VUN[2]}
N -1800 220 -1800 340 {lab=ref_VUN[3]}
N -1700 220 -1700 340 {lab=ref_VUN[4]}
N -1600 220 -1600 340 {lab=ref_VUN[5]}
N -1500 220 -1500 340 {lab=ref_VUN[6]}
N -1400 220 -1400 340 {lab=ref_VUN[7]}
N -2080 350 -1400 350 {lab=ref_VUN[7:0]  bus=true}
N -2590 660 -2540 660 {lab=ref_VUN[0]}
N -2590 600 -2540 600 {lab=ref_VUN[1]}
N -2590 540 -2540 540 {lab=ref_VUN[2]}
N -2590 480 -2540 480 {lab=ref_VUN[3]}
N -2590 420 -2540 420 {lab=ref_VUN[4]}
N -2590 360 -2540 360 {lab=ref_VUN[5]}
N -2590 300 -2540 300 {lab=ref_VUN[6]}
N -2590 240 -2540 240 {lab=ref_VUN[7]}
N -3480 260 -3480 290 {lab=vssa}
N -3240 260 -3240 290 {lab=vssa}
N -3140 260 -3140 290 {lab=vssa}
N -3270 210 -3240 210 {lab=#net1}
N -3270 210 -3270 380 {lab=#net1}
N -3180 210 -3140 210 {lab=#net2}
N -3180 210 -3180 360 {lab=#net2}
N -3180 360 -2890 360 {lab=#net2}
N -3510 210 -3480 210 {lab=EXT_REF_EN}
N -3510 210 -3510 420 {lab=EXT_REF_EN}
N -3270 380 -2890 380 {lab=#net1}
N -3340 210 -3340 230 {lab=V_REF}
N -3510 420 -2890 420 {lab=EXT_REF_EN}
N -3370 210 -3340 210 {lab=V_REF}
N -3370 210 -3370 400 {lab=V_REF}
N -3370 400 -2890 400 {lab=V_REF}
N -2590 680 -2590 700 {lab=vssa}
C {devices/vsource.sym} -40 -160 0 0 {name=Vdd value="PWL(0 0 0.99m 0 1m 1.2 )"
}
C {lab_wire.sym} -40 -220 0 0 {name=p2 sig_type=std_logic lab=vdda
}
C {devices/code_shown.sym} -1920 -450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.include models/cap_mfringe.lib
"}
C {devices/vsource.sym} -640 -160 0 0 {name=V0 value=1.2}
C {lab_wire.sym} -640 -220 0 0 {name=p3 sig_type=std_logic lab=en_VS[3]
}
C {lab_wire.sym} -40 -100 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -640 -100 0 0 {name=p6 sig_type=std_logic lab=Vssa
}
C {devices/gnd.sym} 50 -110 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 50 -220 0 0 {name=p9 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} 50 -170 0 0 {name=Vss value=0
}
C {devices/code_shown.sym} 140 -360 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.options abstol=5e-16
.options gmin=5e-16
.options gmindc=5e-16

.control
let initial_range = 3
let code_range = initial_range
let max_range = 4
while code_range < max_range
    save I(V.x1.V_out_UP) I(V.x1.V_Ibias1) V(x1.V_drain_ISINK) I(V.x1.V_Ibias1)
    + I(V.x3.v_ref_u_0) I(V.x3.v_ref_u_1) I(V.x3.v_ref_u_2) I(V.x3.v_ref_u_3) 
    + I(V.x3.v_ref_u_4) I(V.x3.v_ref_u_5) I(V.x3.v_ref_u_6) I(V.x3.v_ref_u_7)
* Set the 3 bits
    alter V8 = 1.2*(code_range % 2)
    alter V9 = 1.2*(floor(code_range/2) % 2)
    alter V10 = 1.2*(floor(code_range/4) % 2)
    let min = 0
    let max = 128
    let code = max-1
    while code < max 
      * save all
      * Set the 8 bits
      alter V0 = 1.2*(code % 2)
      alter V1 = 1.2*(floor(code/2) % 2)
      alter V2 = 1.2*(floor(code/4) % 2)
      alter V3 = 1.2*(floor(code/8) % 2)
      alter V4 = 1.2*(floor(code/16) % 2)
      alter V5 = 1.2*(floor(code/32) % 2)
      alter V6 = 1.2*(floor(code/64) % 2)
      alter V7 = 1.2*(floor(code/128) % 2)

      tran 500u 20m

      let digitalCommand[0] = code
      plot I(V.x1.V_out_UP)
      plot I(V.x1.V_Ibias1)
      plot V(x1.V_drain_ISINK)
      plot I(V.x1.V_Ibias1)
      let code = code + 1
      * print code
      write CoreFineDAC_N_MasterBiais_tran_tb/start_up__\{$&initial_range\}_\{$&max\}.raw
      write simulations/CoreFineDAC_N_MasterBiais_tran_tb/start_up__\{$&initial_range\}_\{$&max\}.raw
 

   end
   let code_range = code_range + 1
   reset
   * write  simulations/CoreFineDAC_N_MasterBiais_dc_tb/commandRange_\{$&initial_range\}_\{$&max\}.raw out_UP V_out_UP V_drain_ISINK_vect
   * write CoreFineDAC_N_MasterBiais_dc_tb/commandRange_\{$&initial_range\}_\{$&max\}.raw out_UP
end

    
.endc



"}
C {devices/vsource.sym} -570 -160 0 0 {name=V1 value=1.2}
C {lab_wire.sym} -570 -220 0 0 {name=p10 sig_type=std_logic lab=en_VS[4]
}
C {lab_wire.sym} -570 -100 0 0 {name=p27 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -500 -160 0 0 {name=V2 value=1.2}
C {lab_wire.sym} -500 -220 0 0 {name=p28 sig_type=std_logic lab=en_VS[5]
}
C {lab_wire.sym} -500 -100 0 0 {name=p29 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -430 -160 0 0 {name=V3 value=1.2}
C {lab_wire.sym} -430 -220 0 0 {name=p30 sig_type=std_logic lab=en_VS[6]}
C {lab_wire.sym} -430 -100 0 0 {name=p31 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -360 -160 0 0 {name=V4 value=1.2}
C {lab_wire.sym} -360 -220 0 0 {name=p32 sig_type=std_logic lab=en_VS[7]
}
C {lab_wire.sym} -360 -100 0 0 {name=p33 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -290 -160 0 0 {name=V5 value=1.2}
C {lab_wire.sym} -290 -220 0 0 {name=p34 sig_type=std_logic lab=en_VS[8]
}
C {lab_wire.sym} -290 -100 0 0 {name=p35 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -220 -160 0 0 {name=V6 value=1.2}
C {lab_wire.sym} -220 -220 0 0 {name=p36 sig_type=std_logic lab=en_VS[9]
}
C {lab_wire.sym} -220 -100 0 0 {name=p37 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -150 -160 0 0 {name=V7 value=1.2}
C {lab_wire.sym} -150 -220 0 0 {name=p38 sig_type=std_logic lab=en_VS[10]
}
C {lab_wire.sym} -150 -100 0 0 {name=p39 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -850 -160 0 0 {name=V8 value=1.2}
C {lab_wire.sym} -850 -220 0 0 {name=p4 sig_type=std_logic lab=en_VS[0]
}
C {lab_wire.sym} -850 -100 0 0 {name=p8 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -780 -160 0 0 {name=V9 value=1.2}
C {lab_wire.sym} -780 -220 0 0 {name=p11 sig_type=std_logic lab=en_VS[1]
}
C {lab_wire.sym} -780 -100 0 0 {name=p12 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -710 -160 0 0 {name=V10 value=1.2}
C {lab_wire.sym} -710 -220 0 0 {name=p13 sig_type=std_logic lab=en_VS[2]
}
C {lab_wire.sym} -710 -100 0 0 {name=p14 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -970 -150 0 0 {name=v_en value=1.2}
C {lab_wire.sym} -970 -210 0 0 {name=p44 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -970 -90 0 0 {name=p45 sig_type=std_logic lab=vssa
}
C {CoreFineDAC_N.sym} -870 330 0 0 {name=x1}
C {lab_wire.sym} -1200 390 0 0 {name=p7 sig_type=std_logic lab=en_VS[10:0]
}
C {lab_wire.sym} -870 200 0 0 {name=p46 sig_type=std_logic lab=vdda
}
C {lab_wire.sym} -870 560 0 0 {name=p47 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -640 410 0 1 {name=p48 sig_type=std_logic lab=bias_VN
}
C {lab_wire.sym} -640 340 0 1 {name=p49 sig_type=std_logic lab=bias_VP
}
C {lab_wire.sym} -1200 430 0 0 {name=p50 sig_type=std_logic lab=BIASGEN_en_VS
}
C {CoreDiodeT.sym} -1400 500 0 0 {name=x3}
C {lab_wire.sym} -1490 460 0 0 {name=p51 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -1400 540 2 0 {name=p52 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -2070 220 0 0 {name=p1 sig_type=std_logic lab=ref_VUN[0]
}
C {lab_wire.sym} -1980 220 0 0 {name=p53 sig_type=std_logic lab=ref_VUN[1]
}
C {lab_wire.sym} -1890 220 0 0 {name=p54 sig_type=std_logic lab=ref_VUN[2]
}
C {lab_wire.sym} -1800 220 0 0 {name=p55 sig_type=std_logic lab=ref_VUN[3]
}
C {lab_wire.sym} -1700 220 0 0 {name=p56 sig_type=std_logic lab=ref_VUN[4]
}
C {lab_wire.sym} -1500 220 0 0 {name=p57 sig_type=std_logic lab=ref_VUN[6]
}
C {lab_wire.sym} -1600 220 0 0 {name=p58 sig_type=std_logic lab=ref_VUN[5]
}
C {lab_wire.sym} -1400 220 0 0 {name=p59 sig_type=std_logic lab=ref_VUN[7]
}
C {bus_connect_nolab.sym} -1710 350 0 0 {name=r1}
C {bus_connect_nolab.sym} -1610 350 0 0 {name=r2}
C {bus_connect_nolab.sym} -1510 350 0 0 {name=r3}
C {bus_connect_nolab.sym} -1410 350 0 0 {name=r4}
C {bus_connect_nolab.sym} -1810 350 0 0 {name=r5}
C {bus_connect_nolab.sym} -1900 350 0 0 {name=r6}
C {bus_connect_nolab.sym} -1990 350 0 0 {name=r7}
C {bus_connect_nolab.sym} -2080 350 0 0 {name=r8}
C {lab_wire.sym} -2080 350 0 0 {name=p60 sig_type=std_logic lab=ref_VUN[7:0]
}
C {MasterBias.sym} -2740 480 0 0 {name=x2}
C {lab_wire.sym} -2540 660 2 0 {name=p61 sig_type=std_logic lab=ref_VUN[0]
}
C {lab_wire.sym} -2540 600 2 0 {name=p62 sig_type=std_logic lab=ref_VUN[1]
}
C {lab_wire.sym} -2540 540 2 0 {name=p63 sig_type=std_logic lab=ref_VUN[2]
}
C {lab_wire.sym} -2540 480 2 0 {name=p64 sig_type=std_logic lab=ref_VUN[3]
}
C {lab_wire.sym} -2540 420 2 0 {name=p65 sig_type=std_logic lab=ref_VUN[4]
}
C {lab_wire.sym} -2540 300 2 0 {name=p66 sig_type=std_logic lab=ref_VUN[6]
}
C {lab_wire.sym} -2540 360 2 0 {name=p67 sig_type=std_logic lab=ref_VUN[5]
}
C {lab_wire.sym} -2540 240 2 0 {name=p68 sig_type=std_logic lab=ref_VUN[7]
}
C {lab_wire.sym} -2590 700 2 0 {name=p69 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -2590 220 0 1 {name=p70 sig_type=std_logic lab=vdda
}
C {vsource.sym} -3240 240 0 0 {name=Vbyp value=0 savecurrent=false}
C {vsource.sym} -3480 240 0 0 {name=Vextrefen value=0 savecurrent=false}
C {lab_wire.sym} -3510 340 2 0 {name=lbl_extrefen sig_type=std_logic lab=EXT_REF_EN}
C {vsource.sym} -3140 240 0 0 {name=Vvbptia value=0.5 savecurrent=false}
C {vsource.sym} -3340 260 0 0 {name=Vvref value=0.1 savecurrent=false}
C {lab_wire.sym} -3340 210 2 0 {name=lbl_extrefen1 sig_type=std_logic lab=V_REF}
C {lab_wire.sym} -3140 290 2 0 {name=p15 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -3240 290 2 0 {name=p16 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -3340 290 2 0 {name=p17 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -3480 290 2 0 {name=p18 sig_type=std_logic lab=vssa
}
