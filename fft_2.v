module fft_2
#(parameter DATA_WIDTH = 64)
(x1_r, x1_i, x2_r, x2_i, y1_r, y1_i, y2_r, y2_i);

  input [DATA_WIDTH - 1: 0] x1_r;
  input [DATA_WIDTH - 1: 0] x1_i;
  input [DATA_WIDTH - 1: 0] x2_r;
  input [DATA_WIDTH - 1: 0] x2_i;

  output [DATA_WIDTH - 1: 0] y1_r;
  output [DATA_WIDTH - 1: 0] y1_i;
  output [DATA_WIDTH - 1: 0] y2_r;
  output [DATA_WIDTH - 1: 0] y2_i;

  reg [DATA_WIDTH - 1: 0] t_r = 1;
  reg [DATA_WIDTH - 1: 0] t_i = 0;
  
  butterfly #(.DATA_WIDTH(DATA_WIDTH)) b(x1_r, x1_i, x2_r, x2_i, t_r, t_i, y1_r, y1_i, y2_r, y2_i);

endmodule
