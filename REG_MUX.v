module REG_MUX(INPUT,SEL,RST,CLK,CE,OUTPUT);
parameter N=18;
parameter RSTTYPE="SYNC";
input [N-1:0]INPUT;
input RST,CLK,CE,SEL;
output [N-1:0]OUTPUT;
reg [N-1:0]REG_OUT;
generate 
if(RSTTYPE=="SYNC")	
always @(posedge CLK) begin
	if (RST) 
		REG_OUT<=0;
	else if(CE)
        REG_OUT<=INPUT;
end
if(RSTTYPE=="ASYNC")
always @(posedge CLK or posedge RST) begin
	if (RST) 
		REG_OUT<=0;
	else if(CE)
        REG_OUT<=INPUT;
end
endgenerate
assign OUTPUT=(SEL)?REG_OUT:INPUT;
endmodule