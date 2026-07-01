v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {AND logic gate.

VDDL: +1.2 V.
In_A, In_B, Out: 1.2 V level logic signals.} -275 -285 0 0 0.2 0.2 {}
N -80 -140 -70 -140 {lab=VDDL}
N -70 -170 -70 -140 {lab=VDDL}
N -80 -170 -70 -170 {lab=VDDL}
N -80 -200 -80 -170 {lab=VDDL}
N -80 -110 -80 -60 {lab=#net1}
N 80 -140 90 -140 {lab=VDDL}
N 90 -170 90 -140 {lab=VDDL}
N 80 -170 90 -170 {lab=VDDL}
N 80 -200 80 -170 {lab=VDDL}
N 80 -110 80 -60 {lab=#net1}
N -80 -200 80 -200 {lab=VDDL}
N 0 -60 80 -60 {lab=#net1}
N 0 -60 0 -30 {lab=#net1}
N 0 0 10 0 {lab=VSS}
N -80 -60 0 -60 {lab=#net1}
N 0 90 10 90 {lab=VSS}
N 10 90 10 120 {lab=VSS}
N 0 120 10 120 {lab=VSS}
N 10 0 10 90 {lab=VSS}
N -140 -140 -120 -140 {lab=In_A}
N -140 0 -40 0 {lab=In_A}
N -220 0 -140 0 {lab=In_A}
N -220 -200 -80 -200 {lab=VDDL}
N -220 90 -40 90 {lab=In_B}
N 10 -140 40 -140 {lab=In_B}
N 0 30 0 60 {lab=#net2}
N 600 -140 610 -140 {lab=VDDL}
N 610 -170 610 -140 {lab=VDDL}
N 600 -170 610 -170 {lab=VDDL}
N 600 10 610 10 {lab=VSS}
N 610 10 610 40 {lab=VSS}
N 600 40 610 40 {lab=VSS}
N 540 -140 560 -140 {lab=#net1}
N 540 10 560 10 {lab=#net1}
N 600 -70 600 -20 {lab=Out}
N 600 -70 640 -70 {lab=Out}
N 600 -110 600 -70 {lab=Out}
N 540 -60 540 10 {lab=#net1}
N 400 -200 600 -200 {lab=VDDL}
N 600 40 600 340 {lab=VSS}
N 600 -200 600 -170 {lab=VDDL}
N 400 -60 540 -60 {lab=#net1}
N 540 -140 540 -60 {lab=#net1}
N 0 120 0 150 {lab=VSS}
N 0 180 10 180 {lab=VSS}
N 0 270 10 270 {lab=VSS}
N 10 270 10 300 {lab=VSS}
N 0 300 10 300 {lab=VSS}
N 10 180 10 270 {lab=VSS}
N 0 210 0 240 {lab=#net3}
N 0 300 -0 340 {lab=VSS}
N -220 180 -40 180 {lab=In_C}
N -220 270 -40 270 {lab=In_D}
N -140 -140 -140 0 {lab=In_A}
N -0 340 600 340 {lab=VSS}
N 10 120 10 180 {lab=VSS}
N 240 -140 250 -140 {lab=VDDL}
N 250 -170 250 -140 {lab=VDDL}
N 240 -170 250 -170 {lab=VDDL}
N 240 -200 240 -170 {lab=VDDL}
N 240 -110 240 -60 {lab=#net1}
N 170 -140 200 -140 {lab=In_C}
N 80 -200 240 -200 {lab=VDDL}
N 80 -60 240 -60 {lab=#net1}
N 400 -140 410 -140 {lab=VDDL}
N 410 -170 410 -140 {lab=VDDL}
N 400 -170 410 -170 {lab=VDDL}
N 400 -200 400 -170 {lab=VDDL}
N 400 -110 400 -60 {lab=#net1}
N 330 -140 360 -140 {lab=In_D}
N 240 -200 400 -200 {lab=VDDL}
N 240 -60 400 -60 {lab=#net1}
N -220 340 -0 340 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 -140 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -140 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 0 0 0 {name=M2
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 90 0 0 {name=M3
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 10 -140 0 0 {name=p10 sig_type=std_logic lab=In_B}
C {sg13g2_pr/sg13_lv_pmos.sym} 580 -140 0 0 {name=M9
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 10 0 0 {name=M10
l=0.13u
w=0.8u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 640 -70 0 1 {name=p1 sig_type=std_logic lab=Out}
C {opin.sym} -220 -100 2 0 {name=p2 lab=Out}
C {iopin.sym} -220 340 2 0 {name=p3 lab=VSS}
C {ipin.sym} -220 -200 0 0 {name=p4 lab=VDDL}
C {ipin.sym} -220 0 0 0 {name=p5 lab=In_A}
C {ipin.sym} -220 90 0 0 {name=p6 lab=In_B}
C {title.sym} -190 440 0 0 {name=l1 author="Ernestas Gruodis - Kaunas University of Technology"}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 180 0 0 {name=M4
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 270 0 0 {name=M5
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -220 180 0 0 {name=p7 lab=In_C}
C {ipin.sym} -220 270 0 0 {name=p8 lab=In_D}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -140 0 0 {name=M7
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 170 -140 0 0 {name=p9 sig_type=std_logic lab=In_C}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -140 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 330 -140 0 0 {name=p11 sig_type=std_logic lab=In_D}
