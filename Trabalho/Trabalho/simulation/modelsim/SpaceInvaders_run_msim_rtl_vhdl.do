transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/Trabalho/Decoder.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/Trabalho/MUX4_1.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/Trabalho/keyscan.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/adder4bit.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/Countup.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/FA.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/FFD.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/MUX2_1_4.vhd}
vcom -93 -work work {C:/Users/Ricardo Gomes/Documents/Faculdade/2ano/2 Semestre/LIC/Reg.vhd}

