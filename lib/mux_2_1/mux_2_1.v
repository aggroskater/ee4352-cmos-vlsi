// Maness, Preston ; Fri. Nov. 15 2013

module mux_2_1(A, B, S, F);
 input B, A, S;
 output F;
 wire w2, w4, w7;
 nand nand2_1(w4, w2, A);
 nand nand2_2(w7, B, S);
 nand nand2_3(F, w7, w4);
 not inv_1(w2, S);
endmodule
