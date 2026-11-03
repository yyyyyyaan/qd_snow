module tiny(input clk, input [7:0] a, output reg [7:0] q); always @(posedge clk) q <= a + 8'd1; endmodule
