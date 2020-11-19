module srl(
 input[31:0] a,
 input[4:0] shamt,
 output[31:0] c

);

assign c = a >> shamt;

endmodule 