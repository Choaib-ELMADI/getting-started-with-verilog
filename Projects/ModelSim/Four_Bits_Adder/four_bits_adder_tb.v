module four_bits_adder_tb;
    reg  [3:0] a, b;
    wire       c, o;
    wire [4:0] s;

    four_bits_adder dut (.a(a), .b(b), .c(c), .o(o), .s(s));

    initial begin
        a = 4'b0000; b = 4'b0000;   // s = 0000, c = 0, o = 0
        #25;

        a = 4'b0000; b = 4'b0001;   // s = 0001, c = 0, o = 0
        #25;

        a = 4'b1010; b = 4'b0101;   // s = 1111, c = 0, o = 0
        #25;

        a = 4'b1100; b = 4'b1101;   // s = 1001, c = 1, o = 0
        #25;

        a = 4'b0111; b = 4'b0010;   // s = 1001, c = 0, o = 1
        #25;

        a = 4'b0111; b = 4'b0101;   // s = 1100, c = 0, o = 1
        #25;

        $finish;
    end

endmodule
