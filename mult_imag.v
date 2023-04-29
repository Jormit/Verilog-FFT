module mult_imag
#(parameter DATA_WIDTH = 64)
(a_r, a_i, b_r, b_i, y_r, y_i);

  input [DATA_WIDTH - 1: 0] a_r;
  input [DATA_WIDTH - 1: 0] a_i;
  input [DATA_WIDTH - 1: 0] b_r;
  input [DATA_WIDTH - 1: 0] b_i;

  output [DATA_WIDTH - 1: 0] y_r;
  output [DATA_WIDTH - 1: 0] y_i;

  assign y_r = a_r * b_r - a_i * b_i;
  assign y_i = a_r * b_i + a_i * b_r;

endmodule
