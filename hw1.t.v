`include "hw1.v"

module demorgan_test ();

  reg A, B;
  wire nA, nB, n_AandB, nAornB, n_AorB, nAandnB;

  demorgan dut(A, B, nA, nB, n_AandB, nAornB, n_AorB, nAandnB);

  initial begin
    $display("A B | ~A ~B | ~(AB) | ~A+~B | ~(A+B) | ~A~B ");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |     %b |     %b |      %b |    %b ", A,B, nA, nB, n_AandB, nAornB, n_AorB, nAandnB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |     %b |     %b |      %b |    %b ", A,B, nA, nB, n_AandB, nAornB, n_AorB, nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |     %b |     %b |      %b |    %b ", A,B, nA, nB, n_AandB, nAornB, n_AorB, nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |     %b |     %b |      %b |    %b ", A,B, nA, nB, n_AandB, nAornB, n_AorB, nAandnB);
  end
 endmodule
