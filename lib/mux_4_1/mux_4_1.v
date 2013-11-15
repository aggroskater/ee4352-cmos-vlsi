// Maness, Preston ; Fri. Nov. 15 2013

module mux_4_1(A, B, C, D, S1, S0, F);

  input A, B, C, D, S1, S0;
  output F;
  wire w1,w2;
  mux_2_1 m21_1(A, B, S1, w1);
  mux_2_1 m21_2(C, D, S1, w2);
  mux_2_1 m21_3(w1, w2, S0, F);

endmodule
