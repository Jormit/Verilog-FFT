module fft_4_tb;
  parameter DATA_WIDTH = 64;

  reg [DATA_WIDTH - 1: 0] x1_r = 1;
  reg [DATA_WIDTH - 1: 0] x1_i = 0;
  reg [DATA_WIDTH - 1: 0] x2_r = 2;
  reg [DATA_WIDTH - 1: 0] x2_i = 0;
  reg [DATA_WIDTH - 1: 0] x3_r = 3;
  reg [DATA_WIDTH - 1: 0] x3_i = 0;
  reg [DATA_WIDTH - 1: 0] x4_r = 4;
  reg [DATA_WIDTH - 1: 0] x4_i = 0;

  wire [DATA_WIDTH - 1: 0] y1_r;
  wire [DATA_WIDTH - 1: 0] y1_i;
  wire [DATA_WIDTH - 1: 0] y2_r;
  wire [DATA_WIDTH - 1: 0] y2_i;
  wire [DATA_WIDTH - 1: 0] y3_r;
  wire [DATA_WIDTH - 1: 0] y3_i;
  wire [DATA_WIDTH - 1: 0] y4_r;
  wire [DATA_WIDTH - 1: 0] y4_i;

  fft_4 #(.DATA_WIDTH(DATA_WIDTH)) fft
(x1_r, x1_i, x2_r, x2_i, x3_r, x3_i, x4_r, x4_i,
 y1_r, y1_i, y2_r, y2_i, y3_r, y3_i, y4_r, y4_i);

endmodule
