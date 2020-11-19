module mux(
	input [31:0] a, b, c,
	input [5:0] d,
	output reg [4:0] out
);

always@(a, b, c, d) begin
	case(d)
		6'b100000: begin
			glob.r[out] <= a;
		end
		6'b100010: begin
			glob.r[out] <= b;
		end
		6'b000010: begin
			glob.r[out] <= c;
		end
	endcase
end
endmodule