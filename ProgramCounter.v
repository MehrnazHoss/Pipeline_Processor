module ProgramCounter (
    input  wire        clk,
    input  wire        reset,
    input  wire        stall,
    input  wire [31:0] nextPC,
    output reg  [31:0] PC
);
endmodule
