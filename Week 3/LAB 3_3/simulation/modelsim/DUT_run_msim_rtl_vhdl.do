transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/theas/Documents/EE 214 LABS/LAB 3_3/Gates.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE 214 LABS/LAB 3_3/DUT.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE 214 LABS/LAB 3_3/8to3encoder.vhd}
vcom -93 -work work {C:/Users/theas/Documents/EE 214 LABS/LAB 3_3/encoder_4_2.vhd}

vcom -93 -work work {C:/Users/theas/Documents/EE 214 LABS/LAB 3_3/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
