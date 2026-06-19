v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 420 -240 1220 160 {flags=graph
y1=-0.019
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
out"
color="18 9"
dataset=-1
unitx=1
logx=0
logy=0
}
N 80 10 80 40 {lab=GND}
N 80 -60 80 -30 {lab=#net1}
N 80 -140 80 -120 {lab=GND}
N 200 80 200 100 {lab=GND}
N 200 -10 200 20 {lab=Out}
N -200 -10 -140 -10 {lab=In}
N -200 -10 -200 40 {lab=In}
N -200 100 -200 120 {lab=GND}
N -160 -140 -160 -120 {lab=GND}
N -160 -60 -160 -30 {lab=#net2}
N -160 -30 -140 -30 {lab=#net2}
N 65 -10 200 -10 {lab=Out}
N 65 10 80 10 {lab=GND}
N 65 -30 80 -30 {lab=#net1}
C {gnd.sym} 80 40 0 0 {name=l1 lab=GND}
C {vsource.sym} 80 -90 2 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 80 -140 2 0 {name=l2 lab=GND}
C {sg13g2_pr/cap_cmim.sym} 200 50 0 0 {name=C1
model=cap_cmim
w=8.0e-6
l=8.0e-6
m=1
spiceprefix=X}
C {gnd.sym} 200 100 0 0 {name=l3 lab=GND}
C {vsource.sym} -200 70 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 500n, 1000n)"}
C {gnd.sym} -200 120 0 0 {name=l4 lab=GND}
C {launcher.sym} 830 210 0 0 {name=h1
descr="Load waves"
tclcommand="xschem raw_read ~/Projektai/SG13G2/simulations/tran_lev_shifter.raw tran"}
C {devices/code_shown.sym} -200 270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -200 390 0 0 {name=NGSPICE only_toplevel=true
value="

.control
  tran 10n 5u
  
  save all
  write ~/Projektai/SG13G2/simulations/tran_lev_shifter.raw
.endc
"}
C {lab_wire.sym} -200 -10 0 0 {name=p1 sig_type=std_logic lab=In}
C {lab_wire.sym} 200 -10 0 1 {name=p2 sig_type=std_logic lab=Out}
C {vsource.sym} -160 -90 2 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} -160 -140 2 0 {name=l5 lab=GND}
C {Projektai/SG13G2/SAR_ADC/level_shifter.sym} -140 -30 0 0 {name=x1}
