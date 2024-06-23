module demux (
    input [15:0] data_in, // Input data (16 bits)
    input [5:0] sel,      // Selection lines (6 bits)
    output reg [63:0][15:0] out // 64 output lines (16 bits each)
);

always @* begin
    case(sel)
        6'b000000: out[0] = data_in;
        6'b000001: out[1] = data_in;
        6'b000010: out[2] = data_in;
        6'b000011: out[3] = data_in;
        6'b000100: out[4] = data_in;
        6'b000101: out[5] = data_in;
        6'b000110: out[6] = data_in;
        6'b000111: out[7] = data_in;
        6'b001000: out[8] = data_in;
        6'b001001: out[9] = data_in;
        6'b001010: out[10] = data_in;
        6'b001011: out[11] = data_in;
        6'b001100: out[12] = data_in;
        6'b001101: out[13] = data_in;
        6'b001110: out[14] = data_in;
        6'b001111: out[15] = data_in;
        6'b010000: out[16] = data_in;
        6'b010001: out[17] = data_in;
        6'b010010: out[18] = data_in;
        6'b010011: out[19] = data_in;
        6'b010100: out[20] = data_in;
        6'b010101: out[21] = data_in;
        6'b010110: out[22] = data_in;
        6'b010111: out[23] = data_in;
        6'b011000: out[24] = data_in;
        6'b011001: out[25] = data_in;
        6'b011010: out[26] = data_in;
        6'b011011: out[27] = data_in;
        6'b011100: out[28] = data_in;
        6'b011101: out[29] = data_in;
        6'b011110: out[30] = data_in;
        6'b011111: out[31] = data_in;
        6'b100000: out[32] = data_in;
        6'b100001: out[33] = data_in;
        6'b100010: out[34] = data_in;
        6'b100011: out[35] = data_in;
        6'b100100: out[36] = data_in;
        6'b100101: out[37] = data_in;
        6'b100110: out[38] = data_in;
        6'b100111: out[39] = data_in;
        6'b101000: out[40] = data_in;
        6'b101001: out[41] = data_in;
        6'b101010: out[42] = data_in;
        6'b101011: out[43] = data_in;
        6'b101100: out[44] = data_in;
        6'b101101: out[45] = data_in;
        6'b101110: out[46] = data_in;
        6'b101111: out[47] = data_in;
        6'b110000: out[48] = data_in;
        6'b110001: out[49] = data_in;
        6'b110010: out[50] = data_in;
        6'b110011: out[51] = data_in;
        6'b110100: out[52] = data_in;
        6'b110101: out[53] = data_in;
        6'b110110: out[54] = data_in;
        6'b110111: out[55] = data_in;
        6'b111000: out[56] = data_in;
        6'b111001: out[57] = data_in;
        6'b111010: out[58] = data_in;
        6'b111011: out[59] = data_in;
        6'b111100: out[60] = data_in;
        6'b111101: out[61] = data_in;
        6'b111110: out[62] = data_in;
        6'b111111: out[63] = data_in;
        // Add cases for remaining outputs up to 63...
        default: out[0] = 16'b0000000000000000; // Default case
    endcase
end

endmodule