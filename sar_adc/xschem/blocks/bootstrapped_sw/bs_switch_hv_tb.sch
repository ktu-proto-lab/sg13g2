v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 550 -220 1350 180 {flags=graph
y1=0.0026
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.25e-13
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vin; in
Vc; out"
color="10 9"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
x2=1e-05
y2=3.3
}
B 2 550 200 1350 600 {flags=graph
y1=-0.074
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.25e-13
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Clock; clk_s"
color=3
dataset=-1
unitx=1
logx=0
logy=0
}
N 150 50 150 80 {lab=VDDH}
N 150 140 150 160 {lab=GND}
N 300 160 300 180 {lab=GND}
N 240 -60 300 -60 {lab=Out}
N -655 50 -655 70 {lab=GND}
N 300 -40 300 -10 {lab=S}
N 360 -60 380 -60 {lab=GND}
N 300 50 300 100 {lab=In}
N 240 -40 300 -40 {lab=S}
N -335 -40 -335 30 {lab=Clk_s}
N -335 30 -315 30 {lab=Clk_s}
N 75 50 75 80 {lab=VDDL}
N 75 140 75 160 {lab=GND}
N -590 -60 -570 -60 {lab=VDDL}
N -655 -40 -655 -10 {lab=#net1}
N -655 -40 -570 -40 {lab=#net1}
N -335 -40 0 -40 {lab=Clk_s}
N -125 30 -105 30 {lab=VDDH}
N -125 70 -125 90 {lab=GND}
N -125 50 -60 50 {lab=Clk_s_n}
N -60 -20 -60 50 {lab=Clk_s_n}
N -60 -20 0 -20 {lab=Clk_s_n}
N -20 -60 -0 -60 {lab=VDDH}
N -370 -40 -335 -40 {lab=Clk_s}
C {gnd.sym} 240 -20 0 0 {name=l1 lab=GND}
C {vsource.sym} 150 110 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 150 160 0 0 {name=l2 lab=GND}
C {vsource.sym} 300 130 0 0 {name=V2 
*value="dc 0.8"


value="dc 0.5 sin(1.65 1.6 400k)"}
C {gnd.sym} 300 180 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 285 -60 0 0 {name=p1 sig_type=std_logic lab=Out}
C {gnd.sym} -655 70 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -230 450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt_stat
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt_stat
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerDIO.lib dio_tt

"}
C {devices/code_shown.sym} -230 630 0 0 {name=NGSPICE only_toplevel=true
value="
.param w_dummy = 2u
.control
  
  tran 1n 10u uic

  *plot v(x1.net2) v(s) v(out)

 
  write ~/Projektai/SG13G2/simulations/tran_bs_switch_hv.raw
  
.endc
"}
C {devices/launcher.sym} 390 380 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read ~/Projektai/SG13G2/simulations/tran_bs_switch_hv.raw tran"
}
C {lab_wire.sym} -15 -40 0 0 {name=p2 sig_type=std_logic lab=Clk_s}
C {vsource.sym} -655 20 0 0 {name=V5 value="dc 0 ac 0 pulse(1.2, 0, 0, 100p, 100p, 500n, 1u) "}
C {lab_wire.sym} -15 -20 0 0 {name=p3 sig_type=std_logic lab=Clk_s_n}
C {capa.sym} 330 -60 3 0 {name=C1
m=1
value=2000f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 -60 3 0 {name=l4 lab=GND}
C {lab_wire.sym} 300 75 2 0 {name=p4 sig_type=std_logic lab=In}
C {res.sym} 300 20 0 0 {name=R3
value=100
footprint=1206
device=resistor
m=1}
C {Projektai/SG13G2/Tests/bs_switch_hv.sym} 160 -40 0 0 {name=x1}
C {lab_wire.sym} 285 -40 0 0 {name=p5 sig_type=std_logic lab=S}
C {Projektai/SG13G2/SAR_ADC/inverter_hv.sym} -165 50 0 0 {name=x2}
C {Projektai/SG13G2/SAR_ADC/level_shifter.sym} -570 -60 0 0 {name=x3}
C {lab_wire.sym} -370 -60 0 1 {name=p6 sig_type=std_logic lab=VDDH}
C {gnd.sym} -370 -20 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 150 50 0 1 {name=p7 sig_type=std_logic lab=VDDH}
C {vsource.sym} 75 110 0 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} 75 160 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 75 50 0 1 {name=p8 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -590 -60 0 0 {name=p9 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -105 30 0 1 {name=p10 sig_type=std_logic lab=VDDH}
C {gnd.sym} -125 90 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -20 -60 0 0 {name=p12 sig_type=std_logic lab=VDDH}
