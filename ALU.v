module ALU (
    input  wire [31:0] input1,
    input  wire [31:0] input2,
    input  wire [3:0]  ALUControl,
    output reg  [31:0] result,
    output wire        zero
);
endmodule
