/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_5 (
    input [5:0] alufn,
    input z,
    input v,
    input n,
    output reg cmp
  );
  
  
  
  always @* begin
    cmp = 8'h00;
    
    case (alufn[1+1-:2])
      2'h1: begin
        cmp = z;
      end
      2'h2: begin
        cmp = (n ^ v);
      end
      2'h3: begin
        cmp = z | (n ^ v);
      end
    endcase
  end
endmodule
