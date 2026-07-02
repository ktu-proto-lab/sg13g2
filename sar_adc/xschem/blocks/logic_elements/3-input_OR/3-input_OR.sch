v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {3-input OR logic gate.

VDDL: +1.2 V.
In_A, In_B, In_c, Out: 1.2 V level logic signals.} -325 -365 0 0 0.2 0.2 {}
N 40 -200 40 -170 {lab=#net1}
N 40 -110 40 -80 {lab=#net2}
N 40 -20 40 30 {lab=#net3}
N -50 30 40 30 {lab=#net3}
N -50 30 -50 60 {lab=#net3}
N -50 90 -40 90 {lab=VSS}
N 40 -280 260 -280 {lab=VDDL}
N -140 200 -0 200 {lab=In_B}
N 130 350 260 350 {lab=VSS}
N -50 120 -50 350 {lab=VSS}
N 260 -50 270 -50 {lab=VDDL}
N 270 -80 270 -50 {lab=VDDL}
N 260 -80 270 -80 {lab=VDDL}
N 260 100 270 100 {lab=VSS}
N 270 100 270 130 {lab=VSS}
N 260 130 270 130 {lab=VSS}
N 200 -50 220 -50 {lab=#net3}
N 200 100 220 100 {lab=#net3}
N 260 20 260 70 {lab=Out}
N 260 20 360 20 {lab=Out}
N 260 -20 260 20 {lab=Out}
N 200 30 200 100 {lab=#net3}
N 260 130 260 350 {lab=VSS}
N 200 -50 200 30 {lab=#net3}
N -270 350 -50 350 {lab=VSS}
N 130 30 200 30 {lab=#net3}
N -40 90 -40 120 {lab=VSS}
N -50 120 -40 120 {lab=VSS}
N 40 230 40 350 {lab=VSS}
N -50 350 40 350 {lab=VSS}
N 40 200 50 200 {lab=VSS}
N 50 200 50 230 {lab=VSS}
N 40 230 50 230 {lab=VSS}
N 40 30 40 170 {lab=#net3}
N -180 300 90 300 {lab=In_C}
N 130 330 130 350 {lab=VSS}
N 40 350 130 350 {lab=VSS}
N 130 300 140 300 {lab=VSS}
N 140 300 140 330 {lab=VSS}
N 130 330 140 330 {lab=VSS}
N 130 30 130 270 {lab=#net3}
N 40 30 130 30 {lab=#net3}
N -100 90 -90 90 {lab=In_A}
N 40 -280 40 -260 {lab=VDDL}
N -270 -280 40 -280 {lab=VDDL}
N 40 -50 50 -50 {lab=VDDL}
N 50 -140 50 -50 {lab=VDDL}
N 40 -140 50 -140 {lab=VDDL}
N 50 -230 50 -140 {lab=VDDL}
N 40 -230 50 -230 {lab=VDDL}
N 50 -260 50 -230 {lab=VDDL}
N 40 -260 50 -260 {lab=VDDL}
N 260 -280 260 -80 {lab=VDDL}
N -100 -50 -0 -50 {lab=In_A}
N -100 -50 -100 90 {lab=In_A}
N -270 90 -100 90 {lab=In_A}
N -140 -140 -0 -140 {lab=In_B}
N -140 -140 -140 200 {lab=In_B}
N -270 200 -140 200 {lab=In_B}
N -180 -230 0 -230 {lab=In_C}
N -180 -230 -180 300 {lab=In_C}
N -270 300 -180 300 {lab=In_C}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -140 0 0 {name=M2
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -50 0 0 {name=M3
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 90 0 0 {name=M4
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 200 0 0 {name=M5
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -50 0 0 {name=M7
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 100 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {opin.sym} 360 20 0 0 {name=p2 lab=Out}
C {iopin.sym} -270 350 2 0 {name=p3 lab=VSS}
C {ipin.sym} -270 -280 0 0 {name=p4 lab=VDDL}
C {ipin.sym} -270 90 0 0 {name=p5 lab=In_A}
C {ipin.sym} -270 200 0 0 {name=p6 lab=In_B}
C {title.sym} -180 460 0 0 {name=l1 author="Ernestas Gruodis - Kaunas University of Technology"}
C {ipin.sym} -270 300 0 0 {name=p7 lab=In_C}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 300 0 0 {name=M6
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -230 0 0 {name=M1
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
