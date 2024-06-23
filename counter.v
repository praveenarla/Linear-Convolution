//module clock();
//output reg clk;
//initial begin
//    clk <= 1'b0;
//end
//always #5 clk = ~clk;
//initial #500 $finish;
//endmodule
module counter1 ( input clk, 
input rstn, 
output reg[2:0] out); 
initial out<=0;
always @ (posedge clk) begin
if (! rstn) begin
  out<=0;
end
else begin
  out <= out+1;
end
end
endmodule

module counter2(input clk,input rstn,output reg[2:0]out);
reg[2:0]temp;
initial begin
  temp<=0;
  out<=0;
end
always @(posedge clk) begin
  if(!rstn) begin
    temp<=out<=0;
  end
  else begin
    temp<=temp+1;
    if(temp==3'b111) begin
      out<=out+1;
    end
  end
end

endmodule

module counter3(input clk,input rstn,output reg[5:0] out);
initial out<=0;
always @(posedge clk) begin
  if(!rstn) begin
    out<=0;
  end
  else begin
    out<=out+1;
  end
end

endmodule