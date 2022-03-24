module decoder(E , In , Out);
input E;
input [2:0] In;
output [7:0] Out;
wire [7:0] Out;
assign Out = E ? (8'b1 << In) : 8'h0;
endmodule
module clkgen(clka, clkb, clka_out, clkb_out);
input clka, clkb;
output clka_out, clkb_out;
reg clka_out, clkb_out;
always @(clka) begin 
clka_out = clka;
end
always @(clkb) begin
clkb_out = clkb;
end
endmodule
