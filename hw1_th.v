module decoder_3_8_tb;
reg E_tb;
reg clka, clkb;
reg [2:0] In_tb;
wire [7:0] Out_tb;
wire clka_out, clkb_out;
decoder decoder_1(.E(E_tb), .In(In_tb), .Out(Out_tb));
clkgen clkgen_1(.clka(clka), .clkb(clkb), .clka_out(clka_out), .clkb_out(clkb_out));
initial begin
clka = 1'b0; clkb = 1'b0;
end
always begin 
#10 clka = ~clka; 
end
always begin
#20 clkb = ~clkb;
end
initial begin
#0 E_tb = 0; In_tb = 3'b000;
#10 E_tb = 1; In_tb = 3'b000;
#10 E_tb = 1; In_tb = 3'b001;
#10 E_tb = 1; In_tb = 3'b010;
#10 E_tb = 1; In_tb = 3'b011;
#10 E_tb = 1; In_tb = 3'b100;
#10 E_tb = 1; In_tb = 3'b101;
#10 E_tb = 1; In_tb = 3'b110;
#10 E_tb = 1; In_tb = 3'b111;
#10 $finish;
end
initial begin
$dumpfile("hw1.vcd");
$dumpvars(0, decoder_1);
$dumpvars(0, clkgen_1);
end
endmodule
