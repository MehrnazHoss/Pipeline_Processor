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

    reg [31:0] regs[0:31];

    initial regs[0] = 32'b0;

    always @(*) begin
        readData1 = regs[readReg1];
        readData2 = regs[readReg2];
    end
    
    always @(posedge clk) begin
        if (RegWrite && writeReg != 0)
            regs[writeReg] <= writeData;
    end

endmodule
