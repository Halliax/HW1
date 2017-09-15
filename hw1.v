module demorgan
(
  input A,
  input B,
  output nA,
  output nB,
  output n_AandB,
  output nAornB,
  output n_AorB,
  output nAandnB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  nand nandgate(n_AandB, A, B);
  or orgate(nAornB, nA, nB);
  nor norgate(n_AorB, A, B);
  and andgate(nAandnB, nA, nB);

endmodule
