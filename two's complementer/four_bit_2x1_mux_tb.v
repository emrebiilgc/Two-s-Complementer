`timescale 1ns/10ps
module four_bit_2x1_mux_tb;

    reg [3:0] In_1;
    reg [3:0] In_0;
    reg Select;
    wire [3:0] Out;

    four_bit_2x1_mux uut (.In_1(In_1), .In_0(In_0), .Select(Select), .Out(Out));

    initial begin
        $dumpfile("four_bit_2x1_mux.vcd");
        $dumpvars(0, four_bit_2x1_mux_tb);

        Select = 0;
        In_0 = 4'b0000; In_1 = 4'b1111; #10;
        In_0 = 4'b1010; In_1 = 4'b0101; #10;
        In_0 = 4'b0011; In_1 = 4'b1100; #10;
        In_0 = 4'b1111; In_1 = 4'b0000; #10;

        Select = 1;
        In_0 = 4'b0000; In_1 = 4'b1111; #10;
        In_0 = 4'b1010; In_1 = 4'b0101; #10;
        In_0 = 4'b0011; In_1 = 4'b1100; #10;
        In_0 = 4'b1111; In_1 = 4'b0000; #10;

        $finish;
    end
endmodule
