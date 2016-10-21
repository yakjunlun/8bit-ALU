/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_3 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] sum
  );
  
  
  
  always @* begin
    sum = a - b;
    
    case (alufn[0+1-:2])
      1'h0: begin
        sum = a + b;
      end
      1'h1: begin
        sum = a - b;
      end
    endcase
  end
endmodule
