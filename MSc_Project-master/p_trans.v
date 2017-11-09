// grant priority issue
module p_trans(
	in,
	out
	);
// parameter FOUR = 0;
// parameter EIGHT = 1;
// parameter SIXTEEN = 0;
// parameter THIRTYTWO = 0;
parameter N = 4;

input wire [N-1:0] in;
output reg [N-1:0] out;

generate
	if(N == 4) begin
		always @*
		begin
		casez (in)
			4'b???1 : out = 4'b0001; 
			4'b??10 : out = 4'b0010;
			4'b?100 : out = 4'b0100;
			4'b1000 : out = 4'b1000;
			4'b0000 : out = 4'b0000;
		endcase
		end
	end
	else if(N == 8) begin
		always @*
		begin
		casez (in)
			8'b???????1 : out = 8'b00000001; 
			8'b??????10 : out = 8'b00000010;
			8'b?????100 : out = 8'b00000100;
			8'b????1000 : out = 8'b00001000;
			8'b???10000 : out = 8'b00010000;
			8'b??100000 : out = 8'b00100000; 
			8'b?1000000 : out = 8'b01000000;
			8'b10000000 : out = 8'b10000000;
			8'b00000000 : out = 8'b00000000;
		endcase
		end
	end
	else if(N == 16) begin
		always @*
		begin
		casez (in)
			16'b???????????????1 : out = 16'b0000000000000001; 
			16'b??????????????10 : out = 16'b0000000000000010;
			16'b?????????????100 : out = 16'b0000000000000100;
			16'b????????????1000 : out = 16'b0000000000001000;
			16'b???????????10000 : out = 16'b0000000000010000;
			16'b??????????100000 : out = 16'b0000000000100000; 
			16'b?????????1000000 : out = 16'b0000000001000000;
			16'b????????10000000 : out = 16'b0000000010000000;
			16'b???????100000000 : out = 16'b0000000100000000;
			16'b??????1000000000 : out = 16'b0000001000000000; 
			16'b?????10000000000 : out = 16'b0000010000000000;
			16'b????100000000000 : out = 16'b0000100000000000;
			16'b???1000000000000 : out = 16'b0001000000000000;
			16'b??10000000000000 : out = 16'b0010000000000000;
			16'b?100000000000000 : out = 16'b0100000000000000; 
			16'b1000000000000000 : out = 16'b1000000000000000;
			16'b0000000000000000 : out = 16'b0000000000000000;
		endcase
		end
	end
	else if(N == 32) begin
		always @*
		begin
		casez (in)
			32'b???????????????????????????????1 : out = 32'b00000000000000000000000000000001; 
			32'b??????????????????????????????10 : out = 32'b00000000000000000000000000000010;
			32'b?????????????????????????????100 : out = 32'b00000000000000000000000000000100;
			32'b????????????????????????????1000 : out = 32'b00000000000000000000000000001000;
			32'b???????????????????????????10000 : out = 32'b00000000000000000000000000010000;
			32'b??????????????????????????100000 : out = 32'b00000000000000000000000000100000; 
			32'b?????????????????????????1000000 : out = 32'b00000000000000000000000001000000;
			32'b????????????????????????10000000 : out = 32'b00000000000000000000000010000000;
			32'b???????????????????????100000000 : out = 32'b00000000000000000000000100000000;
			32'b??????????????????????1000000000 : out = 32'b00000000000000000000001000000000; 
			32'b?????????????????????10000000000 : out = 32'b00000000000000000000010000000000;
			32'b????????????????????100000000000 : out = 32'b00000000000000000000100000000000;
			32'b???????????????????1000000000000 : out = 32'b00000000000000000001000000000000;
			32'b??????????????????10000000000000 : out = 32'b00000000000000000010000000000000;
			32'b?????????????????100000000000000 : out = 32'b00000000000000000100000000000000; 
			32'b????????????????1000000000000000 : out = 32'b00000000000000001000000000000000;
			32'b???????????????10000000000000000 : out = 32'b00000000000000010000000000000000;
			32'b??????????????100000000000000000 : out = 32'b00000000000000100000000000000000; 
			32'b?????????????1000000000000000000 : out = 32'b00000000000001000000000000000000;
			32'b????????????10000000000000000000 : out = 32'b00000000000010000000000000000000;
			32'b???????????100000000000000000000 : out = 32'b00000000000100000000000000000000;
			32'b??????????1000000000000000000000 : out = 32'b00000000001000000000000000000000;
			32'b?????????10000000000000000000000 : out = 32'b00000000010000000000000000000000; 
			32'b????????100000000000000000000000 : out = 32'b00000000100000000000000000000000;
			32'b???????1000000000000000000000000 : out = 32'b00000001000000000000000000000000;
			32'b??????10000000000000000000000000 : out = 32'b00000010000000000000000000000000;
			32'b?????100000000000000000000000000 : out = 32'b00000100000000000000000000000000; 
			32'b????1000000000000000000000000000 : out = 32'b00001000000000000000000000000000;
			32'b???10000000000000000000000000000 : out = 32'b00010000000000000000000000000000;
			32'b??100000000000000000000000000000 : out = 32'b00100000000000000000000000000000;
			32'b?1000000000000000000000000000000 : out = 32'b01000000000000000000000000000000;
			32'b10000000000000000000000000000000 : out = 32'b10000000000000000000000000000000; 
			32'b00000000000000000000000000000000 : out = 32'b00000000000000000000000000000000;
		endcase
		end
	end
endgenerate
endmodule // p_trans
