v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 0 -120 0 {lab=0}
N -60 0 0 0 {lab=VDDH}
N 300 20 320 20 {lab=0}
N 320 20 320 40 {lab=0}
N 300 0 320 0 {lab=Out}
C {devices/code_shown.sym} -980 40 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib $::SG13G2_MODELS/cornerHBT.lib hbt_typ
"}
C {devices/code_shown.sym} -980 170 0 0 {name=NGSPICE only_toplevel=true
value="

* Gear integration: suppresses trapezoidal ringing that blocks
* transient-op convergence at cold corner (-40C). Required for full-range sim.
.options method=gear

.ic v(VDDH)=3.3 v(x1.net1)=0 v(x1.v_c1)=0 v(x1.net3)=0

.control

save all
set temp=27

op
echo === OP node voltages (27C) ===
print v(x1.Inp) v(x1.Inn) v(x1.net1) v(x1.net2) v(x1.net_1) v(Out)
* Startup branch currents (Vmeas are inside x1, so use hierarchical name):
print i(v.x1.vmeas1) i(v.x1.vmeas2) i(v.x1.vmeas3)

dc temp -40 125 1

* Correct node map for THIS netlist:
*  Q1 emitter = net1 (8x)      Q2 emitter = Inn (1x)     Q3 emitter = net2
*  PTAT resistor XR1 is between net1 and Inp  ->  dVbe = Inp - net1
*  net3/net4 = startup PMOS sources (~3.3V), NOT diode nodes

let vbe    = x1.Inn                 $ CTAT reference (Q2 Vbe)
let vdvbe  = x1.Inp - x1.net1       $ PTAT voltage across XR1 (13k)
let veq    = out                    $ bandgap output

* Vbe CTAT stats
let vbe_max = vecmax(vbe)
let vbe_min = vecmin(vbe)
let vbe_nom = mean(vbe)
let tc_vbe  = ((vbe_max - vbe_min) / vbe_nom) * 1e6 / 165

* Delta_Vbe PTAT stats
let vr_max = vecmax(vdvbe)
let vr_min = vecmin(vdvbe)
let vr_nom = mean(vdvbe)
let tc_vr  = ((vr_max - vr_min) / vr_nom) * 1e6 / 165

* PTAT current  (XR1 = 100u/2u rppd ~ 13 kOhm)
let i_ptat    = vdvbe / 13e3
let i_ptat_ua = i_ptat * 1e6

* Bandgap output stats
let veq_max = vecmax(veq)
let veq_min = vecmin(veq)
let veq_nom = mean(veq)
let tc_eq   = ((veq_max - veq_min) / veq_nom) * 1e6 / 165

echo === Vbe CTAT (Inn = Q2 emitter) ===
print vbe_max vbe_min vbe_nom tc_vbe

echo === Delta_Vbe PTAT (Inp - net1, across XR1) ===
print vr_max vr_min vr_nom tc_vr

echo === I_PTAT uA ===
print vecmax(i_ptat_ua) vecmin(i_ptat_ua) mean(i_ptat_ua)

echo === Bandgap Output (Out) ===
print veq_max veq_min veq_nom tc_eq

echo === Q3 emitter (net2) ===
print vecmax(x1.net2) vecmin(x1.net2) mean(x1.net2)

let veq_center = (veq_max + veq_min) / 2
let tc_eq_pp = (veq_max - veq_min) / veq_center * 1e6 / 165
echo === TC (peak-to-peak / center) ===
print tc_eq_pp

plot x1.Inn title 'Vbe vs. T (CTAT)'
plot x1.Inp - x1.net1 title 'Delta_Vbe vs. T (PTAT, across XR1)'
plot out title 'Bandgap output vs. T'
plot i_ptat_ua title 'I_PTAT uA vs. T'


* Bandgap startup analysis
tran 50p 300n uic
plot x1.net_1 x1.v_c1 x1.net_3 title 'Startup circuit voltages'
plot out title 'Output voltage at startup'
plot x1.Inp x1.Inn title 'Equilibrium voltages at startup'
plot i(v.x1.Vmeas1) i(v.x1.Vmeas2) i(v.x1.Vmeas3) xlimit 0 20n title 'Startup circuit currents'



.endc
"
}
C {vsource.sym} -90 0 1 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -140 0 1 0 {name=l6 lab=0}
C {blocks/bandgap/1.2v_bandgap.sym} 150 10 0 0 {name=x1}
C {lab_wire.sym} -40 0 0 1 {name=p1 sig_type=std_logic lab=VDDH}
C {gnd.sym} 320 40 0 0 {name=l1 lab=0}
C {lab_wire.sym} 320 0 0 1 {name=p2 sig_type=std_logic lab=Out}
