module mux(input [7:0][7:0] A,output reg [7:0] out,input [2:0] select);
always@(*)
case(select)
3'b000:out=A[0];
3'b001:out=A[1];
3'b010:out=A[2];
3'b011:out=A[3];
3'b100:out=A[4];
3'b101:out=A[5];
3'b110:out=A[6];
3'b111:out=A[7];
endcase


endmodule