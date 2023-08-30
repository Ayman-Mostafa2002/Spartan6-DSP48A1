vlib work 
vlog Spartan6_DSP48A1.v Spartan6_DSP48A1_tb.v REG_MUX.v MUX_4_1.v
vsim -voptargs=+acc work.Spartan6_DSP48A1_tb
add wave *
run -all
