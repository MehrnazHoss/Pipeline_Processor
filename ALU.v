module ALU (
    input  wire [31:0] input1,
    input  wire [31:0] input2,
    input  wire [3:0]  ALUControl,
    output reg  [31:0] result,
    output reg         zero
);

    always @(*) begin
        case(ALUControl)
            4'b0000: result = input1 & input2; // AND
            4'b0001: result = input1 | input2; // OR
            4'b0010: result = input1 + input2; // ADD
            4'b0110: result = input1 - input2; // SUB
            4'b0111: result = (input1 < input2) ? 1 : 0; // SLT
            default: result = 32'b0;
        endcase
        zero = (result == 32'b0);
    end

endmodule
