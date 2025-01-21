`timescale 1ns/10ps
module two_s_complement_tb;

    reg [3:0] In;
    wire [3:0] Out;

    two_s_complement uut (.In(In), .Out(Out));

    integer i;

    initial begin
        $dumpfile("twos_complement.vcd");
        $dumpvars(0, two_s_complement_tb);

        for (i = 0; i < 16; i = i + 1) begin
            In = i;
            #10;
        end

        $finish;
    end
endmodule
