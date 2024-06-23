`timescale 1s/1ms
`include "main.v"
module tb_main;
reg clk;
reg rstn;
reg [7:0][7:0] A;
reg [7:0][7:0] B;
wire  [14:0][15:0] Y;
main z1
(.S(A),.H(B),.clk(clk),.rstn(rstn),.out(Y)
);
initial begin
    clk<=1'b0;
    rstn<=1'b1;
  end
  always #5 clk=~clk;
  initial  #5000 $finish;
// initial begin clk = 1'b0; repeat(30) #5 clk= ~clk;end

//clock c1();
//localparam CLK_PERIOD = 10;
//always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
    $display($time,"A=%b B=%b Y=%b",A,B,Y);
    #5 A[0]=8'b00000001;B[0]=8'b00000011;
    #5 A[1]=8'b00000010;B[1]=8'b00000011;
    #5 A[2]=8'b00000011;B[2]=8'b00000011;
    #5 A[3]=8'b00000100;B[3]=8'b00000011;
    #5 A[4]=8'b00000101;B[4]=8'b00000011;
    #5 A[5]=8'b00000110;B[5]=8'b00000011;
    #5 A[6]=8'b00000111;B[6]=8'b00000011;
    #5 A[7]=8'b00001000;B[7]=8'b00000011;
    
    
end

// initial begin
//     #1 rst_n<=1'bx;clk<=1'bx;
//     #(CLK_PERIOD*3) rst_n<=1;
//     #(CLK_PERIOD*3) rst_n<=0;clk<=0;
//     repeat(5) @(posedge clk);
//     rst_n<=1;
//     @(posedge clk);
//     repeat(2) @(posedge clk);
//     $finish(2);
// end

endmodule
