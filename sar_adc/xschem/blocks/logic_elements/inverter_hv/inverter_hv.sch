v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 0 20 30 {lab=Out}
N 20 60 40 60 {lab=VSS}
N 40 60 40 90 {lab=VSS}
N 20 90 40 90 {lab=VSS}
N 20 -60 40 -60 {lab=VDDH}
N 40 -90 40 -60 {lab=VDDH}
N 20 -90 40 -90 {lab=VDDH}
N -40 -60 -20 -60 {lab=In}
N -40 60 -20 60 {lab=In}
N -40 0 -40 60 {lab=In}
N -80 0 -40 0 {lab=In}
N -80 110 20 110 {lab=VSS}
N -40 -60 -40 0 {lab=In}
N -80 -110 20 -110 {lab=VDDH}
N 20 -110 20 -90 {lab=VDDH}
N 20 0 60 0 {lab=Out}
N 20 -30 20 0 {lab=Out}
N 20 90 20 110 {lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 0 -60 0 0 {name=M1
l=0.4u
w=2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 60 0 0 {name=M2
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -80 0 0 0 {name=p1 lab=In}
C {iopin.sym} -80 -110 2 0 {name=p9 lab=VDDH}
C {iopin.sym} -80 110 2 0 {name=p2 lab=VSS}
C {opin.sym} 60 0 0 0 {name=p4 lab=Out}
