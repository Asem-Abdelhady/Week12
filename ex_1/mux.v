module mux(
		input [31:0] a, b, c,
		input [6:0]  d,
		output reg [31:0] out
	);
	
always@(a, b, c, d) begin
	case(d)
		6'b100000: begin
			out <= a;
		end
		6'b100010: begin
			out <= b;
		end
		6'b000010: begin
			out <= c;
		end
	endcase
end
endmodule
