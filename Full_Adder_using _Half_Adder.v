`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2023 14:05:13
// Design Name: 
// Module Name: Full_Adder_using _Half_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder_using_HA(
input a,
input b,
input cin,
output sum,
output cout
);
wire s1,s2,s3;
HA d0(.a(a),.b(b),.sum(s1),.carry(s2));
HA d1(.a(s1),.b(cin),.sum(sum),.carry(s3));
assign cout = s2|s3;

endmodule


module HA(
input a,
input b,
output sum,
output carry
);
assign sum = a^b;
assign carry = a&b;
endmodule

