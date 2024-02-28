transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Leonel/lsd/lab3/Mux_lab3.vhd}
vcom -93 -work work {C:/Leonel/lsd/lab3/XNOR_lab3.vhd}
vcom -93 -work work {C:/Leonel/lsd/lab3/OR_lab3.vhd}
vcom -93 -work work {C:/Leonel/lsd/lab3/Lucirci_TopLevelEntity_lab3.vhd}

