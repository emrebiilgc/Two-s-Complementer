module four_bit_adder_subtractor(A, B, subtract, Result, Cout);
    input [3:0] A;
    input [3:0] B;
    input subtract;
    output [3:0] Result;
    output Cout;

    wire [3:0] B_negated, B_selected;

    two_s_complement neg_B (.In(B), .Out(B_negated));
    four_bit_2x1_mux mux (.In_1(B_negated), .In_0(B), .Select(subtract), .Out(B_selected));
    four_bit_rca rca (.A(A), .B(B_selected), .Cin(0), .S(Result), .Cout(Cout));
endmodule
