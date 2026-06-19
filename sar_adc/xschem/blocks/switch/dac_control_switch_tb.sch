v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 670 -420 1760 140 {flags=graph
ypos1=-0.09186017
ypos2=1.0688112
divy=1
subdivy=4
unity=1
x1=1e-12
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="12 7 4"
node="\\"v_pn; V_pn\\"
\\"Clk; clk\\"
\\"Out_pn;Out_pn\\""
digital=1
linewidth_mult=1
y1=0
legend=1
rainbow=0
y2=1.5
ylabmag=1}
N -130 120 -110 120 {lab=GND}
N -110 120 -110 140 {lab=GND}
N -460 -140 -460 -120 {lab=GND}
N -460 -220 -460 -200 {lab=VDDL}
N -280 -140 -280 -120 {lab=GND}
N -50 -140 -50 -120 {lab=GND}
N -50 -220 -50 -190 {lab=Out_pn}
N -280 -220 -280 -200 {lab=Clk}
N -340 -220 -340 -200 {lab=Vref}
N -420 70 -400 70 {lab=VDDL}
N -420 50 -400 50 {lab=VDDH}
N -400 -140 -400 -120 {lab=GND}
N -400 -220 -400 -200 {lab=VDDH}
N -420 110 -400 110 {lab=Clk}
N -340 -140 -340 -120 {lab=GND}
N -420 130 -400 130 {lab=Vref}
N -420 90 -400 90 {lab=Out_pn}
N -130 50 -90 50 {lab=B}
N -90 30 -90 50 {lab=B}
N -90 -50 -90 -30 {lab=GND}
N -130 70 -10 70 {lab=V_pn}
N -10 -50 -10 -30 {lab=GND}
N -10 30 -10 70 {lab=V_pn}
C {gnd.sym} -110 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -340 -170 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -340 -120 0 0 {name=l5 lab=GND}
C {vsource.sym} -460 -170 0 0 {name=V4 value=1.2 savecurrent=false}
C {gnd.sym} -460 -120 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -480 330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} -490 450 0 0 {name=NGSPICE only_toplevel=true
value="
.control
tran 100p 5u uic

* === Find exact event times using WHEN ===
* These are unambiguous - find when each signal crosses each threshold
meas tran t_clk_edge_1 WHEN v(clk)=0.6 RISE=1
meas tran t_clk_edge_2 WHEN v(clk)=0.6 RISE=2
meas tran t_clk_edge_3 WHEN v(clk)=0.6 RISE=3

meas tran t_b_rise_1 WHEN v(b)=0.6 RISE=1 FROM=400n
meas tran t_b_fall_1 WHEN v(b)=0.6 FALL=1 FROM=400n
meas tran t_b_rise_2 WHEN v(b)=0.6 RISE=2 FROM=400n

meas tran t_n6_rise_1 WHEN v(x2.net6)=1.65 RISE=1 FROM=400n
meas tran t_n6_fall_1 WHEN v(x2.net6)=1.65 FALL=1 FROM=400n

meas tran t_vpn_rise_1 WHEN v(v_pn)=1.65 RISE=1 FROM=400n
meas tran t_vpn_fall_1 WHEN v(v_pn)=1.65 FALL=1 FROM=400n

* Print all event times - this lets us see what's happening when
print t_clk_edge_1 t_clk_edge_2 t_clk_edge_3
print t_b_rise_1 t_b_fall_1 t_b_rise_2
print t_n6_rise_1 t_n6_fall_1
print t_vpn_rise_1 t_vpn_fall_1

* === Now compute actual delays ===
* Once we know event times, we can compute delays manually if needed
let d_clk2_to_b_event = t_b_rise_1 - t_clk_edge_2
let d_clk1_to_b_event = t_b_fall_1 - t_clk_edge_1
print d_clk2_to_b_event d_clk1_to_b_event

.endc
"}
C {devices/launcher.sym} 520 450 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read ~/Projektai/SG13G2/simulations/tran_dac_control_switch.raw tran"
}
C {lab_wire.sym} -340 -220 0 1 {name=p3 sig_type=std_logic lab=Vref}
C {vsource.sym} -280 -170 0 0 {name=V5 value="pulse(0 1.2 500n 1n 1n 500n 1u)" savecurrent=false}
C {gnd.sym} -280 -120 0 0 {name=l7 lab=GND}
C {vsource.sym} -50 -170 0 0 {name=V1 value="pulse(0 1.2 300n 1n 1n 1u 2u)" savecurrent=false}
C {gnd.sym} -50 -120 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -420 90 0 0 {name=p4 sig_type=std_logic lab=Out_pn}
C {lab_wire.sym} -460 -220 0 1 {name=p6 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -280 -220 0 1 {name=p7 sig_type=std_logic lab=Clk}
C {Projektai/SG13G2/SAR_ADC/dac_control_switch.sym} -250 90 0 0 {name=x2}
C {lab_wire.sym} -420 50 0 0 {name=p10 sig_type=std_logic lab=VDDH}
C {vsource.sym} -400 -170 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -400 -120 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -400 -220 0 1 {name=p11 sig_type=std_logic lab=VDDH}
C {lab_wire.sym} -420 110 0 0 {name=p12 sig_type=std_logic lab=Clk}
C {lab_wire.sym} -420 130 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {lab_wire.sym} -420 70 0 0 {name=p5 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -50 -220 0 1 {name=p2 sig_type=std_logic lab=Out_pn}
C {lab_wire.sym} -120 70 0 1 {name=p8 sig_type=std_logic lab=V_pn}
C {capa.sym} -90 0 2 0 {name=C1
m=1
value=20fF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -90 -50 2 0 {name=l4 lab=GND}
C {capa.sym} -10 0 2 0 {name=C2
m=1
value=512fF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -10 -50 2 0 {name=l8 lab=GND}
C {lab_wire.sym} -120 50 0 1 {name=p9 sig_type=std_logic lab=B}
