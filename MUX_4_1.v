module MUX_4_1(IN0,IN1,IN2,IN3,SEL,OUT);
parameter N=48;
input [N-1:0] IN0,IN1,IN2,IN3;
input [1:0]SEL;
output reg [N-1:0]OUT;
always @(SEL,IN0,IN1,IN2,IN3) begin
case(SEL)
2'b00:OUT<=IN0;
2'b01:OUT<=IN1;
2'b10:OUT<=IN2;
2'b11:OUT<=IN3;
endcase
end
endmodule