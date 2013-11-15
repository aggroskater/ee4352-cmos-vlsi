module mux_4_1_TB;

reg A, B, C, D, S1, S0;
wire F;

initial begin

  $dumpfile ("mux_4_1_TB.vcd");
  $dumpvars (1);
  $monitor ("A=%b,B=%b,C=%b,D=%b,S1=%b,S0=%b,F=%b", A, B, C, D, S1, S0, F);
  #0 A=1'b0 ; B=1'b1 ; C=1'b1 ; D=1'b1 ; S1=1'b0 ; S0=1'b0; //Should pass A
  #10 A=1'b1 ; B=1'b1 ; C=1'b1 ; D=1'b1 ; S1=1'b0 ; S0=1'b0;
  #10 A=1'b1 ; B=1'b0 ; C=1'b1 ; D=1'b1 ; S1=1'b1 ; S0=1'b0;//Should pass B
  #10 A=1'b1 ; B=1'b1 ; C=1'b1 ; D=1'b1 ; S1=1'b1 ; S0=1'b0;
  #10 A=1'b0 ; B=1'b1 ; C=1'b0 ; D=1'b1 ; S1=1'b0 ; S0=1'b1;//Should pass C
  #10 A=1'b1 ; B=1'b1 ; C=1'b1 ; D=1'b1 ; S1=1'b0 ; S0=1'b1;
  #10 A=1'b0 ; B=1'b1 ; C=1'b1 ; D=1'b0 ; S1=1'b1 ; S0=1'b1;//Should pass D
  #10 A=1'b1 ; B=1'b1 ; C=1'b1 ; D=1'b1 ; S1=1'b1 ; S0=1'b1;

end

  mux_4_1 i0(
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .S1 (S1),
    .S0 (S0),
    .F (F)
);

endmodule
