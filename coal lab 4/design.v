module Arithmetic(a,b,alu,x);
input [31:0]a,b;
input[1:0]alu;

output [31:0]x;

wire [31:0] a_or_b;
wire [31:0] a_and_b;
wire [31:0 ]zero;
wire [31:0] mux,sum;

assign a_or_b = a | b;
assign a_and_b = a & b;

assign mux = (alu[0] == 1 ) ? ~(b) + 1 : b;
assign sum = a + mux;

assign z = (alu == 2'b10)? a_and_b : 
            (alu == 2'b11)? a_or_b :
                    //    32'h00000000;
                    sum;


endmodule