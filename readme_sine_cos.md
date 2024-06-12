iverilog -o qqq sine_cos.v tb_sine_cos.v 
vvp qqq 
gtkwave bench.vcd