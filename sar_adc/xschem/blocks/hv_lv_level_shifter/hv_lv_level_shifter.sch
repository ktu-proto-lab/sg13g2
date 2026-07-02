v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Logic level shifter: 3.3 V to 1.2 V.

VDDH: +3.3 V.
VDDL: +1.2 V.
In: 3.3 V logic level signal.
Out: 1.2 V logic level signal.} -175 -225 0 0 0.3 0.3 {}
N 0 150 10 150 {lab=VSS}
N 10 150 10 180 {lab=VSS}
N 0 180 10 180 {lab=VSS}
N 0 180 0 200 {lab=VSS}
N -0 -30 10 -30 {lab=VDDH}
N 10 -60 10 -30 {lab=VDDH}
N 0 -60 10 -60 {lab=VDDH}
N 0 -80 0 -60 {lab=VDDH}
N -120 -80 0 -80 {lab=VDDH}
N -120 200 -0 200 {lab=VSS}
N -50 -30 -40 -30 {lab=In}
N -50 150 -40 150 {lab=In}
N -120 60 -50 60 {lab=In}
N -50 100 -50 150 {lab=In}
N -50 -30 -50 60 {lab=In}
N 160 150 170 150 {lab=VSS}
N 170 150 170 180 {lab=VSS}
N 160 180 170 180 {lab=VSS}
N 160 180 160 200 {lab=VSS}
N 320 150 330 150 {lab=VSS}
N 330 150 330 180 {lab=VSS}
N 320 180 330 180 {lab=VSS}
N 320 180 320 200 {lab=VSS}
N 160 200 320 200 {lab=VSS}
N 0 200 160 200 {lab=VSS}
N 0 60 0 120 {lab=#net1}
N 0 60 270 60 {lab=#net1}
N 0 0 0 60 {lab=#net1}
N 270 60 270 150 {lab=#net1}
N 270 150 280 150 {lab=#net1}
N 110 150 120 150 {lab=In}
N 110 100 110 150 {lab=In}
N -50 100 110 100 {lab=In}
N -50 60 -50 100 {lab=In}
N 150 -30 160 -30 {lab=VDDL}
N 150 -60 150 -30 {lab=VDDL}
N 160 -80 160 -60 {lab=VDDL}
N 320 -80 460 -80 {lab=VDDL}
N 320 -80 320 -60 {lab=VDDL}
N 160 -80 320 -80 {lab=VDDL}
N 320 -30 330 -30 {lab=VDDL}
N 330 -60 330 -30 {lab=VDDL}
N 320 -60 330 -60 {lab=VDDL}
N 160 40 160 120 {lab=#net2}
N 150 -60 160 -60 {lab=VDDL}
N 270 -30 280 -30 {lab=#net2}
N 270 -30 270 40 {lab=#net2}
N 160 40 270 40 {lab=#net2}
N 160 0 160 40 {lab=#net2}
N 200 -30 210 -30 {lab=#net3}
N 210 -30 210 20 {lab=#net3}
N 210 20 320 20 {lab=#net3}
N 320 0 320 20 {lab=#net3}
N 320 60 320 120 {lab=#net3}
N 460 -20 470 -20 {lab=VDDL}
N 470 -50 470 -20 {lab=VDDL}
N 460 -50 470 -50 {lab=VDDL}
N 460 140 470 140 {lab=VSS}
N 470 140 470 170 {lab=VSS}
N 460 170 470 170 {lab=VSS}
N 400 -20 420 -20 {lab=#net3}
N 400 140 420 140 {lab=#net3}
N 460 60 460 110 {lab=#net4}
N 460 60 550 60 {lab=#net4}
N 460 10 460 60 {lab=#net4}
N 460 -80 460 -50 {lab=VDDL}
N 460 170 460 200 {lab=VSS}
N 610 -20 620 -20 {lab=VDDL}
N 620 -50 620 -20 {lab=VDDL}
N 610 -50 620 -50 {lab=VDDL}
N 610 140 620 140 {lab=VSS}
N 620 140 620 170 {lab=VSS}
N 610 170 620 170 {lab=VSS}
N 550 -20 570 -20 {lab=#net4}
N 550 140 570 140 {lab=#net4}
N 610 60 610 110 {lab=Out}
N 610 60 700 60 {lab=Out}
N 610 10 610 60 {lab=Out}
N 610 -80 610 -50 {lab=VDDL}
N 550 60 550 140 {lab=#net4}
N 610 170 610 200 {lab=VSS}
N 550 -20 550 60 {lab=#net4}
N 460 200 610 200 {lab=VSS}
N 400 60 400 140 {lab=#net3}
N 460 -80 610 -80 {lab=VDDL}
N 320 60 400 60 {lab=#net3}
N 320 20 320 60 {lab=#net3}
N 400 -20 400 60 {lab=#net3}
N 320 200 460 200 {lab=VSS}
N 610 -80 700 -80 {lab=VDDL}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 -30 0 0 {name=M1
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 150 0 0 {name=M2
l=0.45u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 140 150 0 0 {name=M3
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 150 0 0 {name=M4
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -120 -80 0 0 {name=p1 lab=VDDH}
C {ipin.sym} -120 60 0 0 {name=p2 lab=In}
C {iopin.sym} -120 200 0 1 {name=p3 lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -30 0 1 {name=M5
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -30 0 0 {name=M6
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 700 -80 0 1 {name=p4 lab=VDDL}
C {opin.sym} 700 60 0 0 {name=p5 lab=Out}
C {sg13g2_pr/sg13_lv_pmos.sym} 440 -20 0 0 {name=M13
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 140 0 0 {name=M14
l=0.13u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -20 0 0 {name=M15
l=0.13u
w=0.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 140 0 0 {name=M16
l=0.13u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} -20 300 0 0 {name=l1 author="Ernestas Gruodis - Kaunas University of Technology"}
