/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_2 (
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] result
  );
  
  
  
  wire [8-1:0] M_adder_sum;
  reg [8-1:0] M_adder_a;
  reg [8-1:0] M_adder_b;
  reg [6-1:0] M_adder_alufn;
  adder_3 adder (
    .a(M_adder_a),
    .b(M_adder_b),
    .alufn(M_adder_alufn),
    .sum(M_adder_sum)
  );
  
  wire [8-1:0] M_boole_boole;
  reg [6-1:0] M_boole_alufn;
  reg [8-1:0] M_boole_a;
  reg [8-1:0] M_boole_b;
  boole_4 boole (
    .alufn(M_boole_alufn),
    .a(M_boole_a),
    .b(M_boole_b),
    .boole(M_boole_boole)
  );
  
  wire [1-1:0] M_compare_cmp;
  reg [6-1:0] M_compare_alufn;
  reg [1-1:0] M_compare_z;
  reg [1-1:0] M_compare_v;
  reg [1-1:0] M_compare_n;
  compare_5 compare (
    .alufn(M_compare_alufn),
    .z(M_compare_z),
    .v(M_compare_v),
    .n(M_compare_n),
    .cmp(M_compare_cmp)
  );
  
  wire [8-1:0] M_shifter_shifter;
  reg [8-1:0] M_shifter_a;
  reg [8-1:0] M_shifter_b;
  reg [6-1:0] M_shifter_alufn;
  shifter_6 shifter (
    .a(M_shifter_a),
    .b(M_shifter_b),
    .alufn(M_shifter_alufn),
    .shifter(M_shifter_shifter)
  );
  
  wire [1-1:0] M_extra_z;
  wire [1-1:0] M_extra_v;
  wire [1-1:0] M_extra_n;
  reg [8-1:0] M_extra_sum;
  reg [8-1:0] M_extra_a;
  reg [8-1:0] M_extra_b;
  extra_7 extra (
    .sum(M_extra_sum),
    .a(M_extra_a),
    .b(M_extra_b),
    .z(M_extra_z),
    .v(M_extra_v),
    .n(M_extra_n)
  );
  
  reg z;
  
  reg v;
  
  reg n;
  
  always @* begin
    result = 1'h0;
    M_adder_a = a;
    M_adder_b = b;
    M_adder_alufn = alufn;
    z = M_extra_z;
    v = M_extra_v;
    n = M_extra_n;
    M_boole_a = a;
    M_boole_b = b;
    M_boole_alufn = alufn;
    M_compare_z = z;
    M_compare_v = v;
    M_compare_n = n;
    M_compare_alufn = alufn;
    M_shifter_a = a;
    M_shifter_b = b;
    M_shifter_alufn = alufn;
    M_extra_sum = M_adder_sum;
    M_extra_a = a;
    M_extra_b = b;
    
    case (alufn[4+1-:2])
      2'h0: begin
        result = M_adder_sum;
      end
      2'h1: begin
        result = M_boole_boole;
      end
      2'h2: begin
        result = M_shifter_shifter;
      end
      2'h3: begin
        result = M_compare_cmp;
      end
    endcase
  end
endmodule