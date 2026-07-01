v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {2-input NAND logic gate.

VDDL: +1.2 V.
In_A, In_B, Out: 1.2 V level logic signals.} -275 -285 0 0 0.2 0.2 {}
N -80 -140 -70 -140 {lab=VDDL}
N -70 -170 -70 -140 {lab=VDDL}
N -80 -170 -70 -170 {lab=VDDL}
N -80 -200 -80 -170 {lab=VDDL}
N -80 -110 -80 -60 {lab=#net1}
N 70 -140 80 -140 {lab=VDDL}
N 70 -170 70 -140 {lab=VDDL}
N 70 -170 80 -170 {lab=VDDL}
N 80 -200 80 -170 {lab=VDDL}
N 80 -110 80 -60 {lab=#net1}
N -80 -200 80 -200 {lab=VDDL}
N 0 -60 80 -60 {lab=#net1}
N 0 -60 0 -30 {lab=#net1}
N 0 0 10 0 {lab=VSS}
N -80 -60 0 -60 {lab=#net1}
N 0 110 10 110 {lab=VSS}
N 10 110 10 140 {lab=VSS}
N 0 140 10 140 {lab=VSS}
N 10 0 10 110 {lab=VSS}
N -140 -140 -120 -140 {lab=In_A}
N -140 0 -40 0 {lab=In_A}
N -140 -140 -140 0 {lab=In_A}
N -220 -140 -140 -140 {lab=In_A}
N -220 -200 -80 -200 {lab=VDDL}
N -220 110 -40 110 {lab=In_B}
N 0 140 0 160 {lab=VSS}
N -220 160 0 160 {lab=VSS}
N 120 -140 150 -140 {lab=In_B}
N 260 -140 270 -140 {lab=VDDL}
N 270 -170 270 -140 {lab=VDDL}
N 260 -170 270 -170 {lab=VDDL}
N 260 10 270 10 {lab=VSS}
N 270 10 270 40 {lab=VSS}
N 260 40 270 40 {lab=VSS}
N 200 -140 220 -140 {lab=#net1}
N 200 10 220 10 {lab=#net1}
N 260 -70 260 -20 {lab=#net2}
N 260 -70 340 -70 {lab=#net2}
N 260 -110 260 -70 {lab=#net2}
N 200 -60 200 10 {lab=#net1}
N 80 -200 260 -200 {lab=VDDL}
N 260 40 260 160 {lab=VSS}
N 260 -200 260 -170 {lab=VDDL}
N 80 -60 200 -60 {lab=#net1}
N 200 -140 200 -60 {lab=#net1}
N 400 -140 410 -140 {lab=VDDL}
N 410 -170 410 -140 {lab=VDDL}
N 400 -170 410 -170 {lab=VDDL}
N 400 10 410 10 {lab=VSS}
N 410 10 410 40 {lab=VSS}
N 400 40 410 40 {lab=VSS}
N 340 -140 360 -140 {lab=#net2}
N 340 10 360 10 {lab=#net2}
N 400 -70 400 -20 {lab=Out}
N 400 -70 440 -70 {lab=Out}
N 400 -110 400 -70 {lab=Out}
N 400 40 400 160 {lab=VSS}
N 400 -200 400 -170 {lab=VDDL}
N 340 -70 340 10 {lab=#net2}
N 340 -140 340 -70 {lab=#net2}
N 260 -200 400 -200 {lab=VDDL}
N 260 160 400 160 {lab=VSS}
N 0 60 0 80 {lab=#net3}
N 130 60 140 60 {lab=VDDL}
N 140 30 140 60 {lab=VDDL}
N 130 30 140 30 {lab=VDDL}
N 130 10 130 30 {lab=VDDL}
N 80 160 260 160 {lab=VSS}
N 60 60 60 100 {lab=#net3}
N 130 90 130 100 {lab=#net3}
N 0 30 0 60 {lab=#net3}
N 0 60 60 60 {lab=#net3}
N 60 100 130 100 {lab=#net3}
N 80 60 90 60 {lab=VSS}
N 80 60 80 160 {lab=VSS}
N 0 160 80 160 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 -140 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -140 0 1 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 0 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 110 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 150 -140 0 1 {name=p10 sig_type=std_logic lab=In_B}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -140 0 0 {name=M5
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 10 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {opin.sym} -220 0 2 0 {name=p2 lab=Out}
C {iopin.sym} -220 160 2 0 {name=p3 lab=VSS}
C {ipin.sym} -220 -200 0 0 {name=p4 lab=VDDL}
C {ipin.sym} -220 -140 0 0 {name=p5 lab=In_A}
C {ipin.sym} -220 110 0 0 {name=p6 lab=In_B}
C {title.sym} -210 330 0 0 {name=l1 author="Ernestas Gruodis - Kaunas University of Technology"}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -140 0 0 {name=M7
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 10 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 440 -70 0 1 {name=p7 sig_type=std_logic lab=Out}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 60 0 0 {name=M9
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 130 10 0 1 {name=p1 sig_type=std_logic lab=VDDL}
