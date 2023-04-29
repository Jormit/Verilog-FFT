`timescale 1 ns/10 ps

module butterfly_tb;
  parameter DATA_WIDTH = 64;

  localparam period = 10; 

  reg [DATA_WIDTH - 1: 0] x1_r = 10;
  reg [DATA_WIDTH - 1: 0] x1_i = 33;
  reg [DATA_WIDTH - 1: 0] x2_r = 45;
  reg [DATA_WIDTH - 1: 0] x2_i = -24;
  reg [DATA_WIDTH - 1: 0] twiddle_r = 1;
  reg [DATA_WIDTH - 1: 0] twiddle_i = 0;

  wire [DATA_WIDTH - 1: 0] y1_r;
  wire [DATA_WIDTH - 1: 0] y1_i;
  wire [DATA_WIDTH - 1: 0] y2_r;
  wire [DATA_WIDTH - 1: 0] y2_i;

  butterfly #(.DATA_WIDTH(DATA_WIDTH)) butter(x1_r, x1_i, x2_r, x2_i, twiddle_r, twiddle_i, y1_r, y1_i, y2_r, y2_i);

endmodule
