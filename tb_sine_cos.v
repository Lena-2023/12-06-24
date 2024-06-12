module tb_sin_cos;



   reg clk, reset, en;
   output [7:0] sine, cos;
   wire [7:0] sine_r, cos_r;


initial en = 0;
/*
initial sine <= 0;
initial cos <= 0;

initial esine_r <= 0;
initial cos_r <= 0;
*/

//  initial NOTE = 8'd00000069;
//  initial form = 3'b010;  //trian
//  initial pulse_width = 7'b0101000;

sine_cos SICO(clk, reset, en, sine, cos);
//sine_cos SICO(.clk(clk), .reset(reset), .en(en), .sine(sine), .cos(cos));
//top TOP(CLK, NOTE, RESET, form, pulse_width, DDSout_001, DDSout_dds31);

  initial begin
      
    $dumpfile("bench.vcd");
    $dumpvars(0,tb_sin_cos);    
    $display("starting testbench!!!!");
       
    //$display("RESET,, CLK,, NOTE,, ADDER,,  DDS,, DDSout_001,, DDSout_dds31,, form");
    //$monitor(RESET,, CLK,, NOTE,, ADDER,,  DDS,, DDSout_001,, DDSout_dds31,, form);
  
   
    clk <= 0; 
      repeat (1500)  //150000   500000
            
      begin
        #10;
        clk <= 1;
        #10;
        clk <= 0; 
      end
    
     $display("finished OK!");
    
  end

  initial begin
    reset <= 1;
    #100;
    reset <= 0;
  end

endmodule