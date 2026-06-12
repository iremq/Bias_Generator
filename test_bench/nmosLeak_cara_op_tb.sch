v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -330 -570 470 -170 {flags=graph
y1=-3.0274286e-12
y2=4.4430966e-12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.125
x2=0.375
divx=5
subdivx=1
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1}
T {Ctrl-Click to execute launcher} 130 -150 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 130 -30 0 0 0.3 0.3 {layer=11}
N -590 -10 -590 10 {
lab=GND}
N -590 -80 -590 -70 {
lab=#net1}
N -460 -50 -460 10 {
lab=GND}
N -330 -50 -330 10 {
lab=GND}
N -460 -150 -460 -110 {
lab=#net2}
N -330 -150 -330 -110 {
lab=#net3}
N -460 -80 -410 -80 {
lab=GND}
N -410 -80 -410 10 {
lab=GND}
N -460 -150 -430 -150 {
lab=#net2}
N -370 -150 -330 -150 {
lab=#net3}
N -590 -80 -500 -80 {
lab=#net1}
C {devices/code_shown.sym} -680 80 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -1230 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrents
.param temp=27
.param Lch=0.45u

.options abstol=1e-18 
.options gmin=1e-18


.control

let L = 0.45u

while L <= 10u

    alterparam Lch=$&L
    reset
    * sweep VGS inside each L
    dc Vgs 0 0.05 0.001

    * save a dedicated file per L

* Use curly braces to seamlessly glue the text parts and the evaluated variable together
    set filename = "moslk/mos_VGS_L_"\{$&L\}".raw"
    
    * Write the data out using the variable
    write $filename

    let L = L + 0.2u

end

.endc
"}
C {devices/gnd.sym} -460 10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -590 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -590 -40 0 0 {name=Vgs value=0}
C {devices/vsource.sym} -330 -80 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} -330 10 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -410 10 0 0 {name=l4 lab=GND}
C {devices/title.sym} -610 180 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/ammeter.sym} -400 -150 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} -600 -220 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/sg13_hv_nmos.sym} -480 -80 0 0 {name=M1
l=\{Lch\}
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 190 -80 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 190 -50 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 190 -110 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
file mkdir $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
