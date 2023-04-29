module butterfly
#(parameter DATA_WIDTH = 64)
(x1_r, x1_i, x2_r, x2_i, twiddle_r, twiddle_i, y1_r, y1_i, y2_r, y2_i);

  input [DATA_WIDTH - 1: 0] x1_r;
  input [DATA_WIDTH - 1: 0] x1_i;
  input [DATA_WIDTH - 1: 0] x2_r;
  input [DATA_WIDTH - 1: 0] x2_i;
  input [DATA_WIDTH - 1: 0] twiddle_r;
  input [DATA_WIDTH - 1: 0] twiddle_i;

  output [DATA_WIDTH - 1: 0] y1_r;
  output [DATA_WIDTH - 1: 0] y1_i;
  output [DATA_WIDTH - 1: 0] y2_r;
  output [DATA_WIDTH - 1: 0] y2_i;

  wire [DATA_WIDTH - 1: 0] tx_r;
  wire [DATA_WIDTH - 1: 0] tx_i;
  mult_imag #(.DATA_WIDTH(DATA_WIDTH)) mult (twiddle_r, twiddle_i, x2_r, x2_i, tx_r, tx_i);
  add_imag  #(.DATA_WIDTH(DATA_WIDTH)) add  (x1_r, x1_i, tx_r, tx_i, y1_r, y1_i);
  sub_imag  #(.DATA_WIDTH(DATA_WIDTH)) sub  (x1_r, x1_i, tx_r, tx_i, y2_r, y2_i);

endmodule
