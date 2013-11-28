module mux_2_1_4bit_TB;

reg [3:0] A; 
reg [3:0] B;
reg S;
wire [3:0] F;

initial begin

  $dumpfile ("mux_2_1_4bit_TB.vcd");
  $dumpvars (1);
  $monitor ("A=%b,B=%b,S=%b,F=%b", A, B, S, F);
  #0 A=4'b0101 ; B=4'b0000 ; S=4'b0; //Should pass A
  #10 A=4'b0101 ; B=4'b1111 ; S=1'b0;
  #10 A=4'b0000 ; B=4'b1010 ; S=1'b1;//Should pass B
  #10 A=4'b1111 ; B=4'b1010 ; S=1'b1;

end

  mux_2_1_4bit i0(
    .A (A),
    .B (B),
    .S (S),
    .F (F)
);

endmodule
