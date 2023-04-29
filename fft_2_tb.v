module fft_2_tb;
  parameter DATA_WIDTH = 64;

  reg [DATA_WIDTH - 1: 0] x1_r = 1;
  reg [DATA_WIDTH - 1: 0] x1_i = 0;
  reg [DATA_WIDTH - 1: 0] x2_r = 1;
  reg [DATA_WIDTH - 1: 0] x2_i = 0;

  wire [DATA_WIDTH - 1: 0] y1_r;
  wire [DATA_WIDTH - 1: 0] y1_i;
  wire [DATA_WIDTH - 1: 0] y2_r;
  wire [DATA_WIDTH - 1: 0] y2_i;

  fft_2 #(.DATA_WIDTH(DATA_WIDTH)) fft(x1_r, x1_i, x2_r, x2_i, y1_r, y1_i, y2_r, y2_i);

endmodule
