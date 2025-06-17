module RegisterFile (
    input  wire        clk,
    input  wire        RegWrite,
    input  wire [4:0]  readReg1,
    input  wire [4:0]  readReg2,
    input  wire [4:0]  writeReg,
    input  wire [31:0] writeData,
    output reg  [31:0] readData1,
    output reg  [31:0] readData2
);
endmodule
