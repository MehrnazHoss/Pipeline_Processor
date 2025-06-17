module DataMemory (
    input  wire        clk,
    input  wire        MemRead,
    input  wire        MemWrite,
    input  wire [31:0] address,
    input  wire [31:0] writeData,
    output wire [31:0] readData
);
endmodule
