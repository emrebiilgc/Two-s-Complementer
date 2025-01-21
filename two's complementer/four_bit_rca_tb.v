module four_bit_rca_tb;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] S;
    wire Cout;

    four_bit_rca UUT (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0000; B = 4'b0000; Cin = 1; #10;
        A = 4'b1100; B = 4'b0011; Cin = 0; #10;
        A = 4'b1100; B = 4'b0011; Cin = 1; #10;
        A = 4'b1110; B = 4'b0001; Cin = 1; #10;
        A = 4'b1100; B = 4'b0011; Cin = 1; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;

        $finish;
    end

endmodule
