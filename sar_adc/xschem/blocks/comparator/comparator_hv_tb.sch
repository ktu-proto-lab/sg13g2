v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 520 -200 1320 200 {flags=graph
y1=-0.00061
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.25e-14
x2=3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out_p
out_n"
color="11 21"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 520 210 1320 610 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.25e-14
x2=3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Clk_c
color=9
dataset=-1
unitx=1
logx=0
logy=0
}
N 300 40 320 40 {lab=GND}
N 320 40 320 60 {lab=GND}
N -40 290 -40 310 {lab=GND}
N -200 130 -200 150 {lab=GND}
N -200 40 -200 70 {lab=Vp}
N 300 0 320 0 {lab=Out_p}
N 300 20 320 20 {lab=Out_n}
N -200 40 -0 40 {lab=Vp}
N -120 130 -120 150 {lab=GND}
N -120 60 -120 70 {lab=Vn}
N -120 60 -0 60 {lab=Vn}
N 0 -120 0 -100 {lab=GND}
N -0 -40 -0 -20 {lab=#net1}
N -40 80 -40 250 {lab=Clk_c}
N -40 80 -0 80 {lab=Clk_c}
C {gnd.sym} 320 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -40 280 0 0 {name=V3 value="pulse(3.3 0 1n 1n 1n 500n 1000n)" savecurrent=false}
C {gnd.sym} -40 310 0 0 {name=l5 lab=GND}
C {vsource.sym} -200 100 0 0 {name=V4 value="dc 1" savecurrent=false}
C {gnd.sym} -200 150 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -240 330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_ff
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} -240 460 0 0 {name=NGSPICE only_toplevel=true
value="
.control
alter V4 dc='1.65645'
alter V5 dc='1.65'

* 20 cycles at 1 MHz = 20 us
tran 100p 20u

* Skip first cycle for clean steady-state
meas tran i_avg avg i(v1) from=1u to=20u

let p_avg     = abs(i_avg) * 3.3
let e_per_dec = p_avg * 1u

print i_avg
print p_avg
print e_per_dec

plot i(v1) v(clk_c)
.endc
"}
C {devices/launcher.sym} 380 270 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read ~/Projektai/SG13G2/simulations/tran_comparator_hv.raw tran"
}
C {lab_wire.sym} 320 0 0 1 {name=p1 sig_type=std_logic lab=Out_p}
C {lab_wire.sym} 320 20 0 1 {name=p2 sig_type=std_logic lab=Out_n}
C {lab_wire.sym} -40 150 0 0 {name=p3 sig_type=std_logic lab=Clk_c}
C {vsource.sym} -120 100 0 0 {name=V5 value="dc 0" savecurrent=false}
C {gnd.sym} -120 150 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -10 40 0 0 {name=p4 sig_type=std_logic lab=Vp}
C {lab_wire.sym} -10 60 0 0 {name=p5 sig_type=std_logic lab=Vn}
C {vsource.sym} 0 -70 2 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 0 -120 2 0 {name=l4 lab=GND}
C {Projektai/SG13G2/SAR_ADC/comparator_hv_1.sym} 150 40 0 0 {name=x1}
