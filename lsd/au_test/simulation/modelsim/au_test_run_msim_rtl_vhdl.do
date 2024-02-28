transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Leonel/isel/lsd/TLab2/ALU/Porta_XNOR.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/TLab2/ALU/Porta_OR.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/TLab2/ALU/Porta_LSR.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/TLab2/ALU/Porta_ASR.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/TLab2/ALU/Logic_Module.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab3/Mux4_1.vhd}

