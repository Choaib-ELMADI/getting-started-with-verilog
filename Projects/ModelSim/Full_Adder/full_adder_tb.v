module full_adder_tb;
    reg  a, b, c_in;
    wire s, c_out;

    full_adder dut (.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    initial begin
        a = 1'b0; b = 1'b0; c_in = 1'b0;
        #25;

        a = 1'b0; b = 1'b0; c_in = 1'b1;
        #25;

        a = 1'b1; b = 1'b0; c_in = 1'b0;
        #25;

        a = 1'b1; b = 1'b0; c_in = 1'b1;
        #25;

        a = 1'b0; b = 1'b1; c_in = 1'b0;
        #25;

        a = 1'b1; b = 1'b1; c_in = 1'b1;
        #25;

        $finish;
    end

endmodule
