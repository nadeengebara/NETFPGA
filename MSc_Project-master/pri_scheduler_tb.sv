module pri_scheduler_tb();

parameter N = 4;
parameter P = 16;
reg clk;
reg reset;
reg start;
reg [$clog2(P)-1:0] pri_req_in[0:N-1][0:N-1];;
wire [N-1:0][N-1:0] decision;
wire decision_ready;
//wire ready;

pri_scheduler #(.N(4)) sd0(.*); 
	
initial begin
	clk = 0;
	reset = 0;
	repeat(4) #10 clk = ~clk;
	reset = 1;
	forever #10 clk = ~clk;
end

initial begin
//THINK HOW TO SYNC INPUT REQUEST WITH STATE MACHINE!!!	
	start = 0;
	for(int i=0; i<N; i++) begin: gen_test
		for (int j = 0; j < N; j++) begin
			pri_req_in[i][j] = '0;
		end
	end
	#50

//	start = 0;
	#10
	start = 1;
	for(int i=0; i<N; i++) begin: gen_test
//		req_in[i] = '1 << (N-i);
		for (int j = 0; j < N; j++) begin
			pri_req_in[i][j] = '1;
		end
		
	end


	// #150
//	start = 1;
	// for(int i=0; i<N; i++) begin: gen_test
	// 	req_in[i] = '1 >> (N-i);
	// end


//	#50
//	start = 0;
	// #150
	// start = 1;
	// for(int i=0; i<N; i++) begin: gen_1
	// 	for(int j=0; j<N; j++) begin: gen2
	// 		req_in[i][j] = (i+j)%2;
	// 	end
	// end

//	repeat(32) #10 req = req + 1;
end
endmodule // scheduler