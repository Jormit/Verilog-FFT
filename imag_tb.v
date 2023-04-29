`timescale 1 ns/10 ps

module imag_tb;
  parameter DATA_WIDTH = 64;

  reg [DATA_WIDTH - 1: 0] a_r = 10;
  reg [DATA_WIDTH - 1: 0] a_i = 33;
  reg [DATA_WIDTH - 1: 0] b_r = 45;
  reg [DATA_WIDTH - 1: 0] b_i = -24;

  wire [DATA_WIDTH - 1: 0] y_add_r;
  wire [DATA_WIDTH - 1: 0] y_add_i;
  wire [DATA_WIDTH - 1: 0] y_sub_r;
  wire [DATA_WIDTH - 1: 0] y_sub_i;
  wire [DATA_WIDTH - 1: 0] y_mult_r;
  wire [DATA_WIDTH - 1: 0] y_mult_i;

  add_imag  #(.DATA_WIDTH(DATA_WIDTH)) add  (a_r, a_i, b_r, b_i, y_add_r, y_add_i);
  sub_imag  #(.DATA_WIDTH(DATA_WIDTH)) sub  (a_r, a_i, b_r, b_i, y_sub_r, y_sub_i);
  mult_imag #(.DATA_WIDTH(DATA_WIDTH)) mult (a_r, a_i, b_r, b_i, y_mult_r, y_mult_i);

endmodule
