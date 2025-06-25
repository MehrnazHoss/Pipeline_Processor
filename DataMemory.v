module DataMemory (
    input  wire        clk,
    input  wire        MemRead,
    input  wire        MemWrite,
    input  wire [31:0] address,
    input  wire [31:0] writeData,
    output reg [31:0] readData
);
    reg [31:0] mem[0:1023]; 
    
    always @(posedge clk) begin
        if (MemWrite) 
            mem[address[11:2]] <= writeData;
    end
    
    always @(*) begin
        if (MemRead) 
            readData <= mem[address[11:2]];
        else
            readData <= 32'b0;
    end
endmodule
