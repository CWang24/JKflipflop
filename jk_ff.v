module jk_ff(j,k,clk,preset,clear,Q);
input j,k,clk,preset,clear;
output Q;
reg Q;

always @ (preset or clear)
	begin
		if ( preset == 1)
			Q <= 1'b1;
		else if ( clear == 1)
			Q <= 1'b0;
	end


always @ (negedge clk)
	begin
		if ( preset != 1 && clear != 1)
			begin
			case ({j,k})
				{1'b0,1'b0}: Q <= Q;
				{1'b0,1'b1}: Q <= 1'b0;
				{1'b1,1'b0}: Q <= 1'b1;
				{1'b1,1'b1}: Q <= ~Q;
			endcase
			end
	end

endmodule
