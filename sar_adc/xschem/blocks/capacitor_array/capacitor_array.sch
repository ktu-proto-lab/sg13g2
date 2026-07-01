v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {8-bit monothonic switchng SAR ADC capacitor array.

Unit capacitor value = 8 fF
Differential array total = 2.048 pF

C1 = 512 fF (64 units)
C2 = 256 fF (32 units)
C3 = 128 fF (16 units)
C4 = 64 fF (8 units)
C5 = 32 fF (4 units)
C6 = 16 fF (2 units)
C7 = 8 fF (1 unit)
C8 = 8 fF (1 unit)

8 fF MIM capacitor size: w=7.25e-6; l=7.25e-6; m=1} -190 -570 0 0 0.4 0.4 {}
N 850 150 1020 150 {lab=Vic_n}
N 0 150 0 170 {lab=Vic_n}
N 170 150 170 170 {lab=Vic_n}
N 0 150 170 150 {lab=Vic_n}
N 340 150 340 170 {lab=Vic_n}
N 170 150 340 150 {lab=Vic_n}
N 510 150 510 170 {lab=Vic_n}
N 340 150 510 150 {lab=Vic_n}
N 680 150 680 170 {lab=Vic_n}
N 510 150 680 150 {lab=Vic_n}
N 850 150 850 170 {lab=Vic_n}
N 680 150 850 150 {lab=Vic_n}
N 1020 150 1020 170 {lab=Vic_n}
N 0 230 -0 250 {lab=C1n}
N 170 230 170 250 {lab=C2n}
N 340 230 340 250 {lab=C3n}
N 510 230 510 250 {lab=C4n}
N 680 230 680 250 {lab=C5n}
N 850 230 850 250 {lab=C6n}
N 1020 230 1020 250 {lab=C7n}
N 850 20 1020 20 {lab=Vic_p}
N 0 0 0 20 {lab=Vic_p}
N 170 0 170 20 {lab=Vic_p}
N 0 20 170 20 {lab=Vic_p}
N 340 0 340 20 {lab=Vic_p}
N 170 20 340 20 {lab=Vic_p}
N 510 0 510 20 {lab=Vic_p}
N 340 20 510 20 {lab=Vic_p}
N 680 0 680 20 {lab=Vic_p}
N 510 20 680 20 {lab=Vic_p}
N 850 0 850 20 {lab=Vic_p}
N 680 20 850 20 {lab=Vic_p}
N 1020 0 1020 20 {lab=Vic_p}
N 0 -80 0 -60 {lab=C1p}
N 170 -80 170 -60 {lab=C2p}
N 340 -80 340 -60 {lab=C3p}
N 510 -80 510 -60 {lab=C4p}
N 680 -80 680 -60 {lab=C5p}
N 850 -80 850 -60 {lab=C6p}
N 1020 -80 1020 -60 {lab=C7p}
N 1020 150 1190 150 {lab=Vic_n}
N 1020 20 1190 20 {lab=Vic_p}
N -140 20 0 20 {lab=Vic_p}
N -140 150 0 150 {lab=Vic_n}
N 1190 0 1190 20 {lab=Vic_p}
N 1190 150 1190 170 {lab=Vic_n}
N 1190 -80 1190 -60 {lab=VSS}
N 1190 230 1190 250 {lab=VSS}
C {iopin.sym} -140 20 2 0 {name=p1 lab=Vic_p}
C {iopin.sym} -140 150 2 0 {name=p2 lab=Vic_n}
C {iopin.sym} 0 -80 3 0 {name=p3 lab=C1p}
C {iopin.sym} 170 -80 3 0 {name=p4 lab=C2p}
C {iopin.sym} 340 -80 3 0 {name=p5 lab=C3p}
C {iopin.sym} 510 -80 3 0 {name=p6 lab=C4p}
C {iopin.sym} 680 -80 3 0 {name=p7 lab=C5p}
C {iopin.sym} 850 -80 3 0 {name=p8 lab=C6p}
C {iopin.sym} 1020 -80 3 0 {name=p9 lab=C7p}
C {iopin.sym} 0 250 3 1 {name=p10 lab=C1n}
C {iopin.sym} 170 250 3 1 {name=p11 lab=C2n}
C {iopin.sym} 340 250 3 1 {name=p12 lab=C3n}
C {iopin.sym} 510 250 3 1 {name=p13 lab=C4n}
C {iopin.sym} 680 250 3 1 {name=p14 lab=C5n}
C {iopin.sym} 850 250 3 1 {name=p15 lab=C6n}
C {iopin.sym} 1020 250 3 1 {name=p16 lab=C7n}
C {sg13g2_pr/cap_cmim.sym} 1020 200 0 0 {name=C15
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=1
spiceprefix=X}
C {title.sym} -220 460 0 0 {name=l3 author="Ernestas Gruodis - Kaunas University of Technology"}
C {iopin.sym} -140 320 2 0 {name=p17 lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 1020 -30 2 0 {name=C7
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1190 -30 2 0 {name=C8
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1190 200 0 0 {name=C17
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=1
spiceprefix=X}
C {lab_wire.sym} 1190 -80 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1190 250 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 0 -30 2 0 {name=C1
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=64
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 170 -30 2 0 {name=C2
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=32
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 340 -30 2 0 {name=C3
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=16
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 510 -30 2 0 {name=C4
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=8
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 680 -30 2 0 {name=C5
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 850 -30 2 0 {name=C6
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 0 200 0 0 {name=C9
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=64
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 170 200 0 0 {name=C10
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=32
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 340 200 0 0 {name=C11
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=16
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 510 200 0 0 {name=C12
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=8
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 680 200 0 0 {name=C13
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 850 200 0 0 {name=C14
model=cap_cmim
w=7.25e-6
l=7.25e-6
m=2
spiceprefix=X}
