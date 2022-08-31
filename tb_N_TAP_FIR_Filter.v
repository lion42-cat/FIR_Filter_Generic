`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_N_TAP_FIR_Filter;
reg clk, rst;
reg [15:0] data_in;
wire [15:0] data_out;

N_TAP_FIR_Filter u5(
.clk(clk),
.rst(rst),
.data_in(data_in),
.data_out(data_out)
);

always begin #1 clk=~clk; end

initial begin
clk=1; rst =1; data_in=0;
#2 rst =0; data_in =1;
#2 rst =0; data_in =2;
#2 rst =0; data_in =0;
#2 rst =0; data_in =0;
#2 rst =0; data_in =0;
#2 rst =0; data_in =0;
#2 rst =0; data_in =0;
#2 rst =0; data_in =0;

#100 $finish;

end
endmodule
