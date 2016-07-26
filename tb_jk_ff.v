`timescale 1ns/10ps
module tb;
reg    clk,j,k,preset,clear;




initial
	begin
	clk = 1'b1;
	preset = 1'b1; clear = 1'b0; j = 1'b0; k = 1'b0;
	#6;
	preset = 1'b0; clear = 1'b1; j = 1'b0; k = 1'b0;
	#6;
	preset = 1'b0; clear = 1'b0; j = 1'b0; k = 1'b0;
	#6;
	preset = 1'b0; clear = 1'b0; j = 1'b0; k = 1'b1;
	#6;
	preset = 1'b0; clear = 1'b0; j = 1'b1; k = 1'b0;
	#6;
	preset = 1'b0; clear = 1'b0; j = 1'b1; k = 1'b1;
	#6;
	$finish;	
	end

always
#3 clk = ~clk;

jk_ff jk(j,k,clk,preset,clear,Q);

endmodule
