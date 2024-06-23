module adder1 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    output reg [15:0] sum // Output sum (16 bits)
);

always @* begin
    sum = a + b; // Addition operation
end

endmodule

module adder2 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    output reg [15:0] sum // Output sum (16 bits)
);

always @* begin
    sum = a + b + c; // Addition operation
end

endmodule

module adder3 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    input [15:0] d,
    output  [15:0] sum // Output sum (16 bits)
);


 assign    sum = a + b + c + d; // Addition operation
endmodule

module adder4 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    input [15:0] d,
    input [15:0] e,
    output [15:0] sum // Output sum (16 bits)
);


   assign  sum = a + b + c + d + e; // Addition operation


endmodule

module adder5 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    input [15:0] d,
    input [15:0] e,
     input [15:0] f,
    output  [15:0] sum // Output sum (16 bits)
);


  assign   sum = a + b + c + d + e + f; // Addition operation


endmodule

module adder6 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    input [15:0] d,
    input [15:0] e,
    input [15:0] f,
    input [15:0] g,
    output [15:0] sum // Output sum (16 bits)
);

 assign    sum = a + b + c + d + e + f + g; // Addition operation


endmodule

module adder7 (
    input [15:0] a, // Input A (16 bits)
    input [15:0] b, // Input B (16 bits)
    input [15:0] c,
    input [15:0] d,
    input [15:0] e,
    input [15:0] f,
    input [15:0] g,
    input [15:0] h,
    output  [15:0] sum // Output sum (16 bits)
);


  assign   sum = a + b + c + d + e + f + g + h; // Addition operation

endmodule