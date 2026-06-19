v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -0 60 0 {lab=VDDH}
N 60 -30 60 -0 {lab=VDDH}
N 40 -30 60 -30 {lab=VDDH}
N 40 100 100 100 {lab=VSS}
N -20 0 0 -0 {lab=Clk_s}
N -20 50 -20 100 {lab=Clk_s}
N -20 100 -0 100 {lab=Clk_s}
N -20 -0 -20 50 {lab=Clk_s}
N 40 130 40 160 {lab=net2}
N 40 160 40 190 {lab=net2}
N 180 -10 180 80 {lab=net1}
N 390 -60 420 -60 {lab=net4}
N 180 -10 300 -10 {lab=net1}
N 180 -30 180 -10 {lab=net1}
N 480 -60 520 -60 {lab=#net3}
N 580 -60 600 -60 {lab=VSS}
N 450 -60 450 -0 {lab=VSS}
N 450 -120 450 -100 {lab=VDDH}
N 550 -60 550 -40 {lab=VSS}
N 550 -40 580 -40 {lab=VSS}
N 580 -60 580 -40 {lab=VSS}
N 550 -120 550 -100 {lab=Clk_s_n}
N 450 110 450 120 {lab=net4}
N 500 160 520 160 {lab=S}
N 480 160 500 160 {lab=S}
N 450 110 550 110 {lab=net4}
N 550 110 550 120 {lab=net4}
N 500 160 500 240 {lab=S}
N -90 50 -20 50 {lab=Clk_s}
N -90 220 0 220 {lab=Clk_s_n}
N 180 -120 450 -120 {lab=VDDH}
N 180 140 180 160 {lab=net2}
N 40 50 40 70 {lab=net5}
N 40 30 40 50 {lab=net5}
N 330 30 330 50 {lab=net5}
N -90 300 40 300 {lab=VSS}
N 360 -10 390 -10 {lab=net4}
N 390 -60 390 -10 {lab=net4}
N 220 -60 390 -60 {lab=net4}
N 390 -10 390 110 {lab=net4}
N 330 -30 330 -10 {lab=net1}
N 450 160 450 205 {lab=VSS}
N 330 50 330 80 {lab=net5}
N 330 140 330 160 {lab=net2}
N 370 110 390 110 {lab=net4}
N 40 250 40 300 {lab=VSS}
N 40 220 60 220 {lab=VSS}
N 60 220 60 250 {lab=VSS}
N 40 250 60 250 {lab=VSS}
N 40 50 330 50 {lab=net5}
N 300 -30 330 -30 {lab=net1}
N 300 -30 300 -10 {lab=net1}
N 180 160 330 160 {lab=net2}
N 40 160 180 160 {lab=net2}
N 710 -20 710 0 {lab=Clk_s_n}
N 710 40 710 85 {lab=VSS}
N 665 40 665 120 {lab=D}
N 280 110 330 110 {lab=VSS}
N 390 110 450 110 {lab=net4}
N 40 -120 40 -30 {lab=VDDH}
N -100 -120 40 -120 {lab=VDDH}
N 180 -120 180 -90 {lab=VDDH}
N 40 -120 180 -120 {lab=VDDH}
N 60 -290 90 -290 {lab=net1}
N 60 -230 90 -230 {lab=M4_bulk}
N 90 -170 110 -170 {lab=VSS}
N 135 -60 180 -60 {lab=M4_bulk}
N 330 160 420 160 {lab=net2}
N 755 40 755 120 {lab=D}
N 740 40 755 40 {lab=D}
N 665 40 680 40 {lab=D}
N 550 160 550 205 {lab=VSS}
N 500 240 830 240 {lab=S}
N 710 120 755 120 {lab=D}
N 710 160 830 160 {lab=D}
N 710 120 710 160 {lab=D}
N 665 120 710 120 {lab=D}
N 580 160 710 160 {lab=D}
C {ipin.sym} -90 50 0 0 {name=p6 lab=Clk_s}
C {ipin.sym} -90 220 0 0 {name=p9 lab=Clk_s_n}
C {ipin.sym} 830 240 2 0 {name=p13 lab=S}
C {iopin.sym} -100 -120 2 0 {name=p16 lab=VDDH}
C {iopin.sym} -90 300 2 0 {name=p15 lab=VSS}
C {opin.sym} 830 160 0 0 {name=p17 lab=D}
C {lab_wire.sym} 450 0 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -60 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 180 110 0 0 {name=C1
model=cap_cmim
w=20e-6
l=20e-6
m=2
spiceprefix=X}
C {lab_wire.sym} 180 20 2 0 {name=p4 sig_type=std_logic lab=net1}
C {lab_wire.sym} 210 160 0 1 {name=p5 sig_type=std_logic lab=net2}
C {lab_wire.sym} 270 -60 0 0 {name=p7 sig_type=std_logic lab=net4}
C {lab_wire.sym} 550 205 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -120 1 0 {name=p10 sig_type=std_logic lab=Clk_s_n}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 0 0 0 {name=M1
l=0.4u
w=2u
ng=6
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 100 0 0 {name=M2
l=0.45u
w=2u
ng=6
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 220 0 0 {name=M6
l=0.45u
w=2u
ng=6
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 200 -60 0 1 {name=M4
l=0.4u
w=2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 330 10 3 0 {name=M5
l=0.4u
w=2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 350 110 0 1 {name=M7
l=0.45u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 450 -80 3 1 {name=M3
l=0.45u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 550 -80 3 1 {name=M8
l=0.45u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 450 140 3 1 {name=M9
l=0.45u
w=4u
ng=8
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 550 140 3 1 {name=M10
l=0.45u
w=4u
ng=8
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 110 50 0 1 {name=p22 sig_type=std_logic lab=net5}
C {lab_wire.sym} 100 100 2 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 110 2 1 {name=p34 sig_type=std_logic lab=VSS}
C {sg13g2_pr/isolbox.sym} 90 -230 0 0 {name=D1
model=isolbox
l=3.0u
w=3.0u
spiceprefix=X
}
C {lab_wire.sym} 60 -290 2 1 {name=p12 sig_type=std_logic lab=net1}
C {lab_wire.sym} 110 -170 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 135 -60 0 0 {name=p19 sig_type=std_logic lab=M4_bulk}
C {lab_wire.sym} 60 -230 0 0 {name=p20 sig_type=std_logic lab=M4_bulk}
C {lab_wire.sym} 710 -20 1 0 {name=p21 sig_type=std_logic lab=Clk_s_n}
C {lab_wire.sym} 710 85 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 710 20 3 1 {name=M11
l=0.45u
w=2u
ng=4
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 450 205 2 0 {name=p18 sig_type=std_logic lab=VSS}
