`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 22:56:53
// Design Name: 
// Module Name: TB_Full_Adder
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


module TB_Full_Adder();
 reg a;
 reg b;
 reg cin;
 wire sum;
 wire cout;
 Full_Adder_Data d0(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 Full_Adder_Behavirol d1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 Full_Adder_Gate d2(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 Full_Adder_using_HA d3(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 Full_Adder_if_else d4(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 initial begin
  a = 0; b = 0; cin = 0;
 #100; a = 0; b = 0; cin = 1;
 #100; a = 0; b = 1; cin = 0;
 #100; a = 0; b = 1; cin = 1;
 #100; a = 1; b = 0; cin = 0;
 #100; a = 1; b = 0; cin = 1;
 #100; a = 1; b = 1; cin = 0;
 #100; a = 1; b = 1; cin = 1;

 end
endmodule
