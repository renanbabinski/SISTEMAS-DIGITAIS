module piscaled(
	input CLOCK_50,
	output [1:0] LEDG
	);
	
	reg [32:0]contador=0;
	reg state;
	
	assign LEDG [0]=state;
	assign LEDG [1]=~state;
	
	always @(posedge CLOCK_50)
		begin
		if(contador==50000000)begin
			contador=0;
			state<=~state;
		end else begin 
			contador<= contador+1;
			end
		end
	endmodule
	
