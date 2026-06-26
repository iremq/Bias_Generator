v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 130 490 170 {lab=en_VS_3}
N 450 130 450 220 {lab=en_VSB_3}
N 450 -150 560 -150 {lab=out_UP}
N -530 -150 -530 -110 {lab=out_UP}
N -390 -150 -390 -110 {lab=out_UP}
N -530 -150 -390 -150 {lab=out_UP}
N -250 -150 -250 -110 {lab=out_UP}
N -390 -150 -250 -150 {lab=out_UP}
N -110 -150 -110 -110 {lab=out_UP}
N -250 -150 -110 -150 {lab=out_UP}
N 30 -150 30 -110 {lab=out_UP}
N -110 -150 30 -150 {lab=out_UP}
N 170 -150 170 -110 {lab=out_UP}
N 30 -150 170 -150 {lab=out_UP}
N 310 -150 310 -110 {lab=out_UP}
N 170 -150 310 -150 {lab=out_UP}
N 450 -150 450 -110 {lab=out_UP}
N 310 -150 450 -150 {lab=out_UP}
N -490 -190 -490 -110 {lab=out_UPB}
N -210 -190 -210 -110 {lab=out_UPB}
N -70 -190 -70 -110 {lab=out_UPB}
N 70 -190 70 -110 {lab=out_UPB}
N 210 -190 210 -110 {lab=out_UPB}
N 70 -190 210 -190 {lab=out_UPB}
N 350 -190 350 -110 {lab=out_UPB}
N 210 -190 350 -190 {lab=out_UPB}
N 490 -190 490 -110 {lab=out_UPB}
N 350 -190 490 -190 {lab=out_UPB}
N 350 130 350 170 {lab=en_VS_4}
N 310 130 310 220 {lab=en_VSB_4}
N 210 130 210 170 {lab=en_VS_5}
N 170 130 170 220 {lab=en_VSB_5}
N 70 130 70 170 {lab=en_VS_6}
N 30 130 30 220 {lab=en_VSB_6}
N -70 130 -70 170 {lab=en_VS_7}
N -110 130 -110 220 {lab=en_VSB_7}
N -210 130 -210 170 {lab=en_VS_8}
N -250 130 -250 220 {lab=en_VSB_8}
N -350 130 -350 170 {lab=en_VS_9}
N -390 130 -390 220 {lab=en_VSB_9}
N -490 130 -490 170 {lab=en_VS_10}
N -530 130 -530 220 {lab=en_VSB_10}
N -70 -190 70 -190 {lab=out_UPB}
N -350 -190 -210 -190 {lab=out_UPB}
N -210 -190 -70 -190 {lab=out_UPB}
N -350 -190 -350 -110 {lab=out_UPB}
N -490 -190 -350 -190 {lab=out_UPB}
C {SplitterCell.sym} 550 60 0 0 {name=x4}
C {lab_wire.sym} 490 170 0 1 {name=p22 sig_type=std_logic lab=en_VS_3
}
C {lab_wire.sym} 450 220 0 0 {name=p23 sig_type=std_logic lab=en_VSB_3
}
C {SplitterCell.sym} 410 60 0 0 {name=x5}
C {SplitterCell.sym} 270 60 0 0 {name=x6}
C {SplitterCell.sym} 130 60 0 0 {name=x7}
C {SplitterCell.sym} -10 60 0 0 {name=x8}
C {SplitterCell.sym} -150 60 0 0 {name=x9}
C {SplitterCell.sym} -290 60 0 0 {name=x10}
C {SplitterCell.sym} -430 60 0 0 {name=x11}
C {lab_wire.sym} 350 170 0 1 {name=p40 sig_type=std_logic lab=en_VS_4
}
C {lab_wire.sym} 310 220 0 0 {name=p41 sig_type=std_logic lab=en_VSB_4
}
C {lab_wire.sym} 210 170 0 1 {name=p45 sig_type=std_logic lab=en_VS_5
}
C {lab_wire.sym} 70 170 0 1 {name=p50 sig_type=std_logic lab=en_VS_6
}
C {lab_wire.sym} 30 220 0 0 {name=p51 sig_type=std_logic lab=en_VSB_6
}
C {lab_wire.sym} -70 170 0 1 {name=p55 sig_type=std_logic lab=en_VS_7
}
C {lab_wire.sym} -110 220 0 0 {name=p56 sig_type=std_logic lab=en_VSB_7
}
C {lab_wire.sym} -210 170 0 1 {name=p60 sig_type=std_logic lab=en_VS_8
}
C {lab_wire.sym} -250 220 0 0 {name=p61 sig_type=std_logic lab=en_VSB_8
}
C {lab_wire.sym} -350 170 0 1 {name=p65 sig_type=std_logic lab=en_VS_9
}
C {lab_wire.sym} -390 220 0 0 {name=p66 sig_type=std_logic lab=en_VSB_9
}
C {lab_wire.sym} -490 170 0 1 {name=p70 sig_type=std_logic lab=en_VS_10
}
C {lab_wire.sym} -530 220 0 0 {name=p71 sig_type=std_logic lab=en_VSB_10
}
C {lab_wire.sym} 170 220 0 0 {name=p42 sig_type=std_logic lab=en_VSB_5
}
C {lab_pin.sym} 560 -150 0 1 {name=p1 sig_type=std_logic lab=out_UP}
C {lab_pin.sym} 490 -190 0 1 {name=p2 sig_type=std_logic lab=out_UPB}
C {lab_pin.sym} -560 -10 0 0 {name=p3 sig_type=std_logic lab=bias_VN}
C {lab_pin.sym} -560 60 0 0 {name=p4 sig_type=std_logic lab=A_UN}
C {lab_pin.sym} 560 -10 0 1 {name=p5 sig_type=std_logic lab=bias_VN}
C {lab_pin.sym} 560 60 0 1 {name=p6 sig_type=std_logic lab=B_UN}
C {lab_pin.sym} 530 130 0 1 {name=p7 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 390 130 0 1 {name=p8 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 250 130 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 110 130 0 1 {name=p10 sig_type=std_logic lab=vssa}
C {lab_pin.sym} -30 130 0 1 {name=p11 sig_type=std_logic lab=vssa}
C {lab_pin.sym} -170 130 0 1 {name=p12 sig_type=std_logic lab=vssa}
C {lab_pin.sym} -310 130 0 1 {name=p13 sig_type=std_logic lab=vssa}
C {lab_pin.sym} -450 130 0 1 {name=p14 sig_type=std_logic lab=vssa}
