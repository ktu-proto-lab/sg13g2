v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 50 0 50 {lab=VDDH}
N -10 20 -10 50 {lab=VDDH}
N -10 20 0 20 {lab=VDDH}
N 0 0 0 20 {lab=VDDH}
N 40 50 50 50 {lab=#net1}
N 50 50 50 100 {lab=#net1}
N 0 100 50 100 {lab=#net1}
N -0 80 -0 100 {lab=#net1}
N 50 50 140 50 {lab=#net1}
N 180 50 190 50 {lab=VDDH}
N 190 20 190 50 {lab=VDDH}
N 180 20 190 20 {lab=VDDH}
N 180 0 180 20 {lab=VDDH}
N 0 0 180 0 {lab=VDDH}
N -180 0 0 0 {lab=VDDH}
N 0 200 -0 220 {lab=#net2}
N 90 220 180 220 {lab=#net2}
N 180 200 180 220 {lab=#net2}
N -0 170 180 170 {lab=VSS}
N -0 100 0 140 {lab=#net1}
N 180 110 180 140 {lab=Out}
N 180 110 320 110 {lab=Out}
N 180 80 180 110 {lab=Out}
N 220 170 320 170 {lab=Inn}
N 90 220 90 250 {lab=#net2}
N 0 220 90 220 {lab=#net2}
N 90 280 100 280 {lab=VSS}
N 100 280 100 310 {lab=VSS}
N 90 310 100 310 {lab=VSS}
N 90 310 90 340 {lab=VSS}
N -110 340 90 340 {lab=VSS}
N -180 170 -40 170 {lab=Inp}
N -110 310 -110 340 {lab=VSS}
N -180 340 -110 340 {lab=VSS}
N -120 280 -110 280 {lab=VSS}
N -120 280 -120 310 {lab=VSS}
N -120 310 -110 310 {lab=VSS}
N -60 280 50 280 {lab=Bias_10uA}
N -110 230 -110 250 {lab=Bias_10uA}
N -180 230 -110 230 {lab=Bias_10uA}
N -110 230 -60 230 {lab=Bias_10uA}
N -60 230 -60 280 {lab=Bias_10uA}
N -70 280 -60 280 {lab=Bias_10uA}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 50 0 1 {name=M1
l=6u
w=5u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 160 50 0 0 {name=M2
l=6u
w=5u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -180 0 0 0 {name=p1 lab=VDDH}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 170 0 0 {name=M3
l=2u
w=10u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 170 0 1 {name=M4
l=2u
w=10u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 80 170 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {opin.sym} 320 110 0 0 {name=p4 lab=Out}
C {sg13g2_pr/sg13_hv_nmos.sym} 70 280 0 0 {name=M5
l=2u
w=5u
ng=1
m=12
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} -180 340 2 0 {name=p6 lab=VSS}
C {ipin.sym} -180 230 0 0 {name=p7 lab=Bias_10uA}
C {ipin.sym} -180 170 0 0 {name=p8 lab=Inp}
C {ipin.sym} 320 170 2 0 {name=p3 lab=Inn}
C {sg13g2_pr/sg13_hv_nmos.sym} -90 280 0 1 {name=M6
l=2u
w=5u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
