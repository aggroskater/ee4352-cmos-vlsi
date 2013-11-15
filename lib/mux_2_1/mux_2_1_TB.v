module mux_2_1_TB;

reg A,B,S;
wire F;

initial begin
  $dumpfile ("mux_2_1_tb.vcd");
  $dumpvars (1);
  $monitor ("A=%b;B=%b;S=%b;F=%b", A, B, S, F);
  #0 A=1'b0 ; B=1'b0 ; S=1'b0;
  #10 A=1'b0 ; B=1'b0 ; S=1'b1;
  #10 A=1'b0 ; B=1'b1 ; S=1'b0;
  #10 A=1'b0 ; B=1'b1 ; S=1'b1;
  #10 A=1'b1 ; B=1'b0 ; S=1'b0;
  #10 A=1'b1 ; B=1'b0 ; S=1'b1;
  #10 A=1'b1 ; B=1'b1 ; S=1'b0;
  #10 A=1'b1 ; B=1'b1 ; S=1'b1;
end

  mux_2_1 d0(
    .A (A),
    .B (B),
    .S (S),
    .F (F)
);

endmodule
