`include "mux8.v"
`include "multiplier.v"
`include "counter.v"
`include "demux.v"
`include "adder.v"
module main(input [7:0][7:0]S,H,input rstn,input clk,output  [14:0][15:0]out);
wire rstn=1'b1;
wire [2:0] out1;
wire [2:0] out2;
wire [5:0] out3;
wire [7:0]l1;
wire [7:0]l2;
wire [15:0] r1;
wire [63:0][15:0]D1;
//wire [14:0][15:0]out;
// reg clk;
counter1 c1(clk,rstn,out1[2 :0]);
counter2 c2(clk,rstn,out2[2:0]);
mux m1(S,l1,out2);
mux m2(H,l2,out1);
multiplier M1(l1,l2,r1);
counter3 c3(clk,rstn,out3[5:0]);
demux d1(r1,out3,D1);
adder1 a0(D1[0],16'b0000000000000000,out[0]);
adder1 a1(D1[1],D1[8],out[1]);
adder2 a2(D1[2],D1[9],D1[16],out[2]);
adder3 a3(D1[3],D1[10],D1[17],D1[24],out[3]);
adder4 a4(D1[4],D1[11],D1[18],D1[25],D1[32],out[4]);
adder5 a5(D1[5],D1[12],D1[19],D1[26],D1[33],D1[40],out[5]);
adder6 a6(D1[6],D1[13],D1[20],D1[27],D1[34],D1[41],D1[48],out[6]);
adder7 a7(D1[7],D1[14],D1[21],D1[28],D1[35],D1[42],D1[49],D1[56],out[7]);
adder6 a8(D1[15],D1[22],D1[29],D1[36],D1[43],D1[50],D1[57],out[8]);
adder5 a9(D1[23],D1[30],D1[37],D1[44],D1[51],D1[58],out[9]);
adder4 a10(D1[31],D1[38],D1[45],D1[52],D1[59],out[10]);
adder3 a11(D1[39],D1[46],D1[53],D1[60],out[11]);
adder2 a12(D1[47],D1[54],D1[61],out[12]);
adder1 a13(D1[55],D1[62],out[13]);
adder1 a14(D1[63],16'b0000000000000000,out[14]);

//out[14]=D1[63];
//initial clk=1'b0;
//always #5 clk =~clk;

endmodule