v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Clks signal generator.

VDDH: +3.3 V.
VDDL: +1.2 V.
Clks: output of 1.2 V logic level pulses, frequency f=10 MHz, duty cycle=10%.} -1115 -435 0 0 0.3 0.3 {}
N -680 -300 -660 -300 {lab=VDDL}
N -780 -100 -760 -100 {lab=#net1}
N -760 -160 -760 -100 {lab=#net1}
N -980 -160 -760 -160 {lab=#net1}
N -980 -160 -980 -60 {lab=#net1}
N -980 -60 -960 -60 {lab=#net1}
N -780 -120 -680 -120 {lab=Out_div_2}
N -1000 -80 -960 -80 {lab=Clk}
N -410 -100 -390 -100 {lab=#net2}
N -390 -160 -390 -100 {lab=#net2}
N -610 -160 -390 -160 {lab=#net2}
N -630 -120 -590 -120 {lab=VDDL}
N -610 -160 -610 -60 {lab=#net2}
N -610 -60 -590 -60 {lab=#net2}
N -410 -120 -330 -120 {lab=Out_div_4}
N -680 -120 -680 -80 {lab=Out_div_2}
N -680 -80 -590 -80 {lab=Out_div_2}
N -40 -100 -20 -100 {lab=#net3}
N -20 -160 -20 -100 {lab=#net3}
N -240 -160 -20 -160 {lab=#net3}
N -260 -120 -220 -120 {lab=VDDL}
N -240 -160 -240 -60 {lab=#net3}
N -240 -60 -220 -60 {lab=#net3}
N -40 -120 20 -120 {lab=Out_div_8}
N -330 -120 -330 -80 {lab=Out_div_4}
N -330 -80 -220 -80 {lab=Out_div_4}
N -140 80 -120 80 {lab=VDDL}
N -240 100 -120 100 {lab=#net4}
N -450 100 -430 100 {lab=VDDL}
N -730 -280 -660 -280 {lab=#net5}
N 70 240 110 240 {lab=#net6}
N -140 280 -120 280 {lab=Out_div_8}
N 380 110 490 110 {lab=Clks}
N 70 80 110 80 {lab=#net7}
N 110 80 110 130 {lab=#net7}
N 110 130 190 130 {lab=#net7}
N 110 150 190 150 {lab=#net6}
N 110 150 110 240 {lab=#net6}
N -720 100 -700 100 {lab=VDDL}
N -510 100 -470 100 {lab=#net8}
N -470 100 -470 120 {lab=#net8}
N -470 120 -430 120 {lab=#net8}
N -450 180 -430 180 {lab=VDDL}
N -240 180 -190 180 {lab=#net9}
N -190 120 -190 180 {lab=#net9}
N -190 120 -120 120 {lab=#net9}
N -1000 100 -980 100 {lab=VDDL}
N -790 100 -750 100 {lab=#net10}
N -750 100 -750 120 {lab=#net10}
N -750 120 -700 120 {lab=#net10}
N -720 180 -700 180 {lab=VDDL}
N -510 180 -470 180 {lab=#net11}
N -470 180 -470 200 {lab=#net11}
N -470 200 -430 200 {lab=#net11}
N -450 260 -430 260 {lab=VDDL}
N -240 260 -120 260 {lab=#net12}
N -780 -80 -780 -60 {lab=VSS}
N -410 -80 -410 -60 {lab=VSS}
N -40 -80 -40 -60 {lab=VSS}
N -1060 -280 -980 -280 {lab=VDDH}
N -1060 -120 -960 -120 {lab=VDDL}
N -1000 120 -980 120 {lab=Clk}
N -500 -300 -460 -300 {lab=Clk}
C {lab_wire.sym} -680 -300 0 0 {name=p5 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/vco.sym} -510 -290 0 0 {name=x1}
C {Projektai/SG13G2/SAR_ADC/d_trigger_tgate_inv.sym} -810 -90 0 0 {name=x2}
C {lab_wire.sym} -740 -120 0 1 {name=p4 sig_type=std_logic lab=Out_div_2}
C {lab_wire.sym} -1000 -80 0 0 {name=p7 sig_type=std_logic lab=Clk}
C {lab_wire.sym} -630 -120 0 0 {name=p8 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/d_trigger_tgate_inv.sym} -440 -90 0 0 {name=x3}
C {lab_wire.sym} -370 -120 0 1 {name=p9 sig_type=std_logic lab=Out_div_4}
C {lab_wire.sym} -260 -120 0 0 {name=p10 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/d_trigger_tgate_inv.sym} -70 -90 0 0 {name=x4}
C {lab_wire.sym} 20 -120 0 1 {name=p12 sig_type=std_logic lab=Out_div_8}
C {lab_wire.sym} -140 80 0 0 {name=p13 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -140 280 0 0 {name=p20 sig_type=std_logic lab=Out_div_8}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -280 110 0 0 {name=x8}
C {lab_wire.sym} -450 100 0 0 {name=p18 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/AND_logic.sym} 30 100 0 0 {name=x6}
C {Projektai/SG13G2/SAR_ADC/0.48v_bandgap.sym} -830 -270 0 0 {name=x5}
C {Projektai/SG13G2/SAR_ADC/AND_logic.sym} 30 260 0 0 {name=x7}
C {lab_wire.sym} -120 240 0 0 {name=p11 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -430 280 0 0 {name=p15 sig_type=std_logic lab=Out_div_4}
C {Projektai/SG13G2/SAR_ADC/AND_logic.sym} 340 130 0 0 {name=x10}
C {lab_wire.sym} 190 110 0 0 {name=p22 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -550 110 0 0 {name=x9}
C {lab_wire.sym} -720 100 0 0 {name=p19 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -280 190 0 0 {name=x11}
C {lab_wire.sym} -450 180 0 0 {name=p17 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -830 110 0 0 {name=x12}
C {lab_wire.sym} -1000 100 0 0 {name=p24 sig_type=std_logic lab=VDDL}
C {lab_wire.sym} -1000 120 0 0 {name=p25 sig_type=std_logic lab=Clk}
C {lab_wire.sym} -700 200 0 0 {name=p21 sig_type=std_logic lab=Out_div_2}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -550 190 0 0 {name=x13}
C {lab_wire.sym} -720 180 0 0 {name=p26 sig_type=std_logic lab=VDDL}
C {Projektai/SG13G2/SAR_ADC/delay_buffer.sym} -280 270 0 0 {name=x14}
C {lab_wire.sym} -450 260 0 0 {name=p27 sig_type=std_logic lab=VDDL}
C {ipin.sym} -1060 -280 0 0 {name=p3 lab=VDDH}
C {ipin.sym} -1060 -120 0 0 {name=p6 lab=VDDL}
C {iopin.sym} -1060 260 2 0 {name=p1 lab=VSS}
C {lab_pin.sym} -790 120 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -510 120 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -780 -60 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -410 -60 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 -60 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -240 120 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 120 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 280 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -240 280 0 1 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -240 200 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -510 200 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 150 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {opin.sym} 490 110 0 0 {name=p38 lab=Clks}
C {title.sym} -940 380 0 0 {name=l2 author="Ernestas Gruodis - Kaunas University of Technology"}
C {lab_pin.sym} -980 -260 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -500 -280 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -460 -300 0 1 {name=p2 sig_type=std_logic lab=Clk}
