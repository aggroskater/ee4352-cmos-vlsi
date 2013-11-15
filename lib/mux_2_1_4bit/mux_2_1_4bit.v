// Maness, Preston ; Fri. Nov. 15 2013

module mux_2_1_4bit(A, B, S, F);
 input [3:0] B;
 input [3:0] A;
 input S;
 output [3:0] F;
 wire [3:0] w2;
 wire [3:0] w4;
 wire [3:0] w7;
 
 mux_2_1 m21_3(A[3],B[3],S,F[3]);
 mux_2_1 m21_2(A[2],B[2],S,F[2]);
 mux_2_1 m21_1(A[1],B[1],S,F[1]);
 mux_2_1 m21_0(A[0],B[0],S,F[0]);

endmodule
