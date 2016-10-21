/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_6 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] shifter
  );
  
  
  
  always @* begin
    shifter = a;
    
    case (alufn[0+1-:2])
      2'h0: begin
        shifter = a << b;
      end
      2'h1: begin
        shifter = a >> b;
      end
      2'h3: begin
        shifter = $signed(a) >>> b;
      end
    endcase
  end
endmodule
