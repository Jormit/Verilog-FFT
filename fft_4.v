module fft_4
#(parameter DATA_WIDTH = 64)
(x1_r, x1_i, x2_r, x2_i, x3_r, x3_i, x4_r, x4_i,
 y1_r, y1_i, y2_r, y2_i, y3_r, y3_i, y4_r, y4_i);

  input [DATA_WIDTH - 1: 0] x1_r;
  input [DATA_WIDTH - 1: 0] x1_i;
  input [DATA_WIDTH - 1: 0] x2_r;
  input [DATA_WIDTH - 1: 0] x2_i;
  input [DATA_WIDTH - 1: 0] x3_r;
  input [DATA_WIDTH - 1: 0] x3_i;
  input [DATA_WIDTH - 1: 0] x4_r;
  input [DATA_WIDTH - 1: 0] x4_i;

  output [DATA_WIDTH - 1: 0] y1_r;
  output [DATA_WIDTH - 1: 0] y1_i;
  output [DATA_WIDTH - 1: 0] y2_r;
  output [DATA_WIDTH - 1: 0] y2_i;
  output [DATA_WIDTH - 1: 0] y3_r;
  output [DATA_WIDTH - 1: 0] y3_i;
  output [DATA_WIDTH - 1: 0] y4_r;
  output [DATA_WIDTH - 1: 0] y4_i;

  wire [DATA_WIDTH - 1: 0] e1_r;
  wire [DATA_WIDTH - 1: 0] e1_i;
  wire [DATA_WIDTH - 1: 0] e2_r;
  wire [DATA_WIDTH - 1: 0] e2_i;
  wire [DATA_WIDTH - 1: 0] o1_r;
  wire [DATA_WIDTH - 1: 0] o1_i;
  wire [DATA_WIDTH - 1: 0] o2_r;
  wire [DATA_WIDTH - 1: 0] o2_i;

  fft_2 #(.DATA_WIDTH(DATA_WIDTH)) f1(x1_r, x1_i, x3_r, x3_i, e1_r, e1_i, e2_r, e2_i);
  fft_2 #(.DATA_WIDTH(DATA_WIDTH)) f2(x2_r, x2_i, x4_r, x4_i, o1_r, o1_i, o2_r, o2_i);

  reg [DATA_WIDTH - 1: 0] t1_r =  1;
  reg [DATA_WIDTH - 1: 0] t1_i =  0;
  reg [DATA_WIDTH - 1: 0] t2_r = -1;
  reg [DATA_WIDTH - 1: 0] t2_i =  0;
  
  butterfly #(.DATA_WIDTH(DATA_WIDTH)) b1(e1_r, e1_i, o1_r, o1_i, t1_r, t1_i, y1_r, y1_i, y3_r, y3_i);
  butterfly #(.DATA_WIDTH(DATA_WIDTH)) b2(e2_r, e2_i, o2_r, o2_i, t2_r, t2_i, y2_r, y2_i, y4_r, y4_i);

endmodule
