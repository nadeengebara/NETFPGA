module scheduler_tb();

parameter N = 4;
reg clk;
reg reset;
reg start;
reg [N-1:0][N-1:0] req_in;
wire [N-1:0][N-1:0] decision;
wire ready;
int seed;

scheduler #(.N(N)) sd0(.*); 
	
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
	     req_in[i] = '0;
	  end
	#50
	start = 1;
//	start = 0;
	// forever begin
		// #100
		for(int i=0; i<N; i++) begin: gen_test
	//		req_in[i] = '1 << (N-i);
			req_in[i] = '1;
			// seed = {$random} % (2**N);

			// req_in[i] = seed; 
		// end
	end

//change input every 100ns

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