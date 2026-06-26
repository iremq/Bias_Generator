v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 -1900 -270 100 -270 100 -70 -1900 -70 -1900 -270 {}
N -40 -130 -40 -100 {lab=vssa}
N -40 -220 -40 -190 {lab=vdda}
N -1500 -140 -1500 -110 {lab=Vssa}
N -1500 -230 -1500 -200 {lab=en_VS[3]}
N 50 -140 50 -110 {lab=GND}
N 50 -220 50 -200 {lab=vssa}
N -1430 -140 -1430 -110 {lab=Vssa}
N -1430 -230 -1430 -200 {lab=en_VS[4]}
N -1360 -140 -1360 -110 {lab=Vssa}
N -1360 -230 -1360 -200 {lab=en_VS[5]}
N -1290 -140 -1290 -110 {lab=Vssa}
N -1290 -230 -1290 -200 {lab=en_VS[6]}
N -1220 -140 -1220 -110 {lab=Vssa}
N -1220 -230 -1220 -200 {lab=en_VS[7]}
N -1150 -140 -1150 -110 {lab=Vssa}
N -1150 -230 -1150 -200 {lab=en_VS[8]}
N -1080 -140 -1080 -110 {lab=Vssa}
N -1080 -230 -1080 -200 {lab=en_VS[9]}
N -1010 -140 -1010 -110 {lab=Vssa}
N -1010 -230 -1010 -200 {lab=en_VS[10]}
N -1710 -140 -1710 -110 {lab=vssa}
N -1710 -230 -1710 -200 {lab=en_VS[0]}
N -1640 -140 -1640 -110 {lab=vssa}
N -1640 -230 -1640 -200 {lab=en_VS[1]}
N -1570 -140 -1570 -110 {lab=vssa}
N -1570 -230 -1570 -200 {lab=en_VS[2]}
N -860 -130 -860 -100 {lab=ref_VUN[0]}
N -860 -220 -860 -190 {lab=vdda}
N -770 -130 -770 -100 {lab=ref_VUN[1]}
N -770 -220 -770 -190 {lab=vdda}
N -680 -130 -680 -100 {lab=ref_VUN[2]}
N -680 -220 -680 -190 {lab=vdda}
N -590 -130 -590 -100 {lab=ref_VUN[3]}
N -590 -220 -590 -190 {lab=vdda}
N -490 -130 -490 -100 {lab=ref_VUN[4]}
N -490 -220 -490 -190 {lab=vdda}
N -290 -130 -290 -100 {lab=ref_VUN[6]}
N -290 -220 -290 -190 {lab=vdda}
N -390 -130 -390 -100 {lab=ref_VUN[5]}
N -390 -220 -390 -190 {lab=vdda}
N -190 -130 -190 -100 {lab=ref_VUN[7]}
N -190 -220 -190 -190 {lab=vdda}
N -1830 -130 -1830 -100 {lab=vssa}
N -1830 -220 -1830 -190 {lab=BIASGEN_en_VS}
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
C {devices/vsource.sym} -40 -160 0 0 {name=Vdd value=1.2
}
C {lab_wire.sym} -40 -220 0 0 {name=p2 sig_type=std_logic lab=vdda
}
C {devices/code_shown.sym} -1920 -450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} -1500 -170 0 0 {name=V0 value=1.2}
C {lab_wire.sym} -1500 -230 0 0 {name=p3 sig_type=std_logic lab=en_VS[3]
}
C {lab_wire.sym} -40 -100 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {lab_wire.sym} -1500 -110 0 0 {name=p6 sig_type=std_logic lab=Vssa
}
C {devices/gnd.sym} 50 -110 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 50 -220 0 0 {name=p9 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} 50 -170 0 0 {name=Vss value=0
}
C {devices/vsource.sym} -1430 -170 0 0 {name=V1 value=1.2}
C {lab_wire.sym} -1430 -230 0 0 {name=p10 sig_type=std_logic lab=en_VS[4]
}
C {lab_wire.sym} -1430 -110 0 0 {name=p27 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1360 -170 0 0 {name=V2 value=1.2}
C {lab_wire.sym} -1360 -230 0 0 {name=p28 sig_type=std_logic lab=en_VS[5]
}
C {lab_wire.sym} -1360 -110 0 0 {name=p29 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1290 -170 0 0 {name=V3 value=1.2}
C {lab_wire.sym} -1290 -230 0 0 {name=p30 sig_type=std_logic lab=en_VS[6]}
C {lab_wire.sym} -1290 -110 0 0 {name=p31 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1220 -170 0 0 {name=V4 value=1.2}
C {lab_wire.sym} -1220 -230 0 0 {name=p32 sig_type=std_logic lab=en_VS[7]
}
C {lab_wire.sym} -1220 -110 0 0 {name=p33 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1150 -170 0 0 {name=V5 value=1.2}
C {lab_wire.sym} -1150 -230 0 0 {name=p34 sig_type=std_logic lab=en_VS[8]
}
C {lab_wire.sym} -1150 -110 0 0 {name=p35 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1080 -170 0 0 {name=V6 value=1.2}
C {lab_wire.sym} -1080 -230 0 0 {name=p36 sig_type=std_logic lab=en_VS[9]
}
C {lab_wire.sym} -1080 -110 0 0 {name=p37 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1010 -170 0 0 {name=V7 value=1.2}
C {lab_wire.sym} -1010 -230 0 0 {name=p38 sig_type=std_logic lab=en_VS[10]
}
C {lab_wire.sym} -1010 -110 0 0 {name=p39 sig_type=std_logic lab=Vssa
}
C {devices/vsource.sym} -1710 -170 0 0 {name=V8 value=1.2}
C {lab_wire.sym} -1710 -230 0 0 {name=p4 sig_type=std_logic lab=en_VS[0]
}
C {lab_wire.sym} -1710 -110 0 0 {name=p8 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -1640 -170 0 0 {name=V9 value=1.2}
C {lab_wire.sym} -1640 -230 0 0 {name=p11 sig_type=std_logic lab=en_VS[1]
}
C {lab_wire.sym} -1640 -110 0 0 {name=p12 sig_type=std_logic lab=vssa
}
C {devices/vsource.sym} -1570 -170 0 0 {name=V10 value=1.2}
C {lab_wire.sym} -1570 -230 0 0 {name=p13 sig_type=std_logic lab=en_VS[2]
}
C {lab_wire.sym} -1570 -110 0 0 {name=p14 sig_type=std_logic lab=vssa
}
C {isource.sym} -860 -160 0 0 {name=I0 value=100f}
C {lab_wire.sym} -860 -100 0 0 {name=p15 sig_type=std_logic lab=ref_VUN[0]
}
C {lab_wire.sym} -860 -220 0 0 {name=p16 sig_type=std_logic lab=vdda
}
C {isource.sym} -770 -160 0 0 {name=I1 value=1p}
C {lab_wire.sym} -770 -100 0 0 {name=p17 sig_type=std_logic lab=ref_VUN[1]
}
C {lab_wire.sym} -770 -220 0 0 {name=p21 sig_type=std_logic lab=vdda
}
C {isource.sym} -680 -160 0 0 {name=I2 value=10p}
C {lab_wire.sym} -680 -100 0 0 {name=p22 sig_type=std_logic lab=ref_VUN[2]
}
C {lab_wire.sym} -680 -220 0 0 {name=p23 sig_type=std_logic lab=vdda
}
C {isource.sym} -590 -160 0 0 {name=I3 value=100p}
C {lab_wire.sym} -590 -100 0 0 {name=p24 sig_type=std_logic lab=ref_VUN[3]
}
C {lab_wire.sym} -590 -220 0 0 {name=p25 sig_type=std_logic lab=vdda
}
C {isource.sym} -490 -160 0 0 {name=I4 value=1n}
C {lab_wire.sym} -490 -100 0 0 {name=p26 sig_type=std_logic lab=ref_VUN[4]
}
C {lab_wire.sym} -490 -220 0 0 {name=p18 sig_type=std_logic lab=vdda
}
C {isource.sym} -290 -160 0 0 {name=I6 value=100n}
C {lab_wire.sym} -290 -100 0 0 {name=p19 sig_type=std_logic lab=ref_VUN[6]
}
C {lab_wire.sym} -290 -220 0 0 {name=p20 sig_type=std_logic lab=vdda
}
C {isource.sym} -390 -160 0 0 {name=I5 value=10n}
C {lab_wire.sym} -390 -100 0 0 {name=p40 sig_type=std_logic lab=ref_VUN[5]
}
C {lab_wire.sym} -390 -220 0 0 {name=p41 sig_type=std_logic lab=vdda
}
C {isource.sym} -190 -160 0 0 {name=I7 value=1u}
C {lab_wire.sym} -190 -100 0 0 {name=p42 sig_type=std_logic lab=ref_VUN[7]
}
C {lab_wire.sym} -190 -220 0 0 {name=p43 sig_type=std_logic lab=vdda
}
C {devices/vsource.sym} -1830 -160 0 0 {name=v_en value=1.2}
C {lab_wire.sym} -1830 -220 0 0 {name=p44 sig_type=std_logic lab=BIASGEN_en_VS
}
C {lab_wire.sym} -1830 -100 0 0 {name=p45 sig_type=std_logic lab=vssa
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
C {devices/code_shown.sym} 150 -420 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=40
.options abstol=1e-16
.options gmin=1e-16
.options gmindc=1e-16
.control

nodeset v(x2.VBIAS)=0.5 v(x2.x_ota.vout1stage)=0.7 v(x2.x_ota.vpmirr)=0.35
let V_drain_ISINK_vect = vector(1)
let initial_range = 6
let code_range = initial_range
let max_range = initial_range +1
let digitalCommand = vector(1)
let out_UP = vector(1)
let V_out_UP = vector(1)
let V_drain_ISINK_vect = vector(1)
let V_bias = vector(1)
while code_range < max_range
    * Set the 3 bits
    alter V8 = 1.2*(code_range % 2)
    alter V9 = 1.2*(floor(code_range/2) % 2)
    alter V10 = 1.2*(floor(code_range/4) % 2)
    let min = 208
    let max = 224
    let code = max-1
    while code < max 
      save all
      * Set the 8 bits
      alter V0 = 1.2*(code % 2)
      alter V1 = 1.2*(floor(code/2) % 2)
      alter V2 = 1.2*(floor(code/4) % 2)
      alter V3 = 1.2*(floor(code/8) % 2)
      alter V4 = 1.2*(floor(code/16) % 2)
      alter V5 = 1.2*(floor(code/32) % 2)
      alter V6 = 1.2*(floor(code/64) % 2)
      alter V7 = 1.2*(floor(code/128) % 2)

      op

      let digitalCommand[0] = code
      let out_UP[0] = I(V.x1.V_out_UP)
      let V_out_UP[0] = V(bias_VP)
      let V_bias[0] = V(x1.bias_test)
      let V_drain_ISINK_vect[0] = V(x1.V_drain_ISINK)
      * let out_UP[code-min] = I(V.x1.V_Ibias)
      let code = code + 1
      * print code
      * write CoreFineDAC_N_dc_tb/full_op_\{$&code_range\}.raw
 

   end
   setplot const
   settype current out_UP 
   settype voltage V_out_UP 
   settype voltage V_drain_ISINK_vect
   settype voltage V_bias
   setscale digitalCommand
   plot out_UP
   plot V_out_UP
   plot V_drain_ISINK_vect
   plot V_bias
   
   let code_range = code_range + 1
   write  simulations/CoreFineDAC_N_debug_dc_tb/commandRange_\{$&initial_range\}_\{$&max\}.raw out_UP V_out_UP V_drain_ISINK_vect V_bias
   write CoreFineDAC_N_debug_dc_tb/commandRange_\{$&initial_range\}_\{$&max\}.raw out_UP
end

    
.endc



"}
