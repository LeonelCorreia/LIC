transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Leonel/lsd/Projeto_PEnc_8_3/PEnc_4_2.vhd}
vcom -93 -work work {C:/Leonel/lsd/Projeto_PEnc_8_3/Mux_4_2.vhd}
vcom -93 -work work {C:/Leonel/lsd/Projeto_PEnc_8_3/PEnc_8_3.vhd}

