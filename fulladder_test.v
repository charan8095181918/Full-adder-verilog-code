`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//

// Design Name:   fulladder
// Module Name:   D:/exp/dsd/Charan/fulladder_test.v
// Project Name:  Charan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/10 ps

module fulladder(a,b,c,sum,carry);

   input a,b,c;
   output wire sum,carry;


assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule

module fulladder_test;
reg a,b,c;
wire sum,carry;

fulladder UUT(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
$monitor($time,"a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);
a=0;
b=0;
c=0;
#10
a=0;
b=0;
c=1;
#10
a=0;
b=1;
c=0;
#10
a=0;
b=1;
c=1;
#10
a=1;
b=0;
c=0;
#10
a=1;
b=0;
c=1;
#10
a=1;
b=1;
c=0;
#10
a=1;
b=1;
c=1;
end
endmodule