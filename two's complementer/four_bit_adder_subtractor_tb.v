`timescale 1ns/1ps
module four_bit_adder_subtractor_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg subtract;
    wire [3:0] Result;
    wire Cout;

    four_bit_adder_subtractor uut (.A(A), .B(B), .subtract(subtract), .Result(Result), .Cout(Cout));

    initial begin
        $dumpfile("four_bit_adder_subtractor.vcd");
        $dumpvars(0, four_bit_adder_subtractor_tb);

        subtract = 0;
        for (A = 0; A < 16; A = A + 1) begin
            for (B = 0; B < 16; B = B + 1) begin
                #10;
                $display("A = %b, B = %b, subtract = %b, Result = %b, Cout = %b", A, B, subtract, Result, Cout);
            end
        end

        subtract = 1;
        for (A = 0; A < 16; A = A + 1) begin
            for (B = 0; B < 16; B = B + 1) begin
                #10;
                $display("A = %b, B = %b, subtract = %b, Result = %b, Cout = %b", A, B, subtract, Result, Cout);
            end
        end

        $finish;
    end
endmodule
