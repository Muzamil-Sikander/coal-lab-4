module tb();
reg [31:0]a,b;
reg [1:0]alu;

wire [31:0] x;
Arithmetic dut(
    .a(a),
    .b(b),
    .alu(alu),
    .x(x)
);

initial begin 
    a = 32'h00000000;
    b = 32'h00000000;
    alu = 2'b10; //add
    #10;

    a = 32'h00000012;
    b = 32'h00000010;
     alu = 2'b11;
    #10;
end

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0);
end



endmodule