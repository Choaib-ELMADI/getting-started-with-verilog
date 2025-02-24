module four_bits_adder
    (
        input  [3:0] a, b,
        output       c, o,
        output [4:0] s
    );

    wire [3:0] cout;

    one_bit_full_adder obfa_0 (.a(a[0]), .b(b[0]), .c_in(1'b0),    .s(s[0]), .c_out(cout[0]));
    one_bit_full_adder obfa_1 (.a(a[1]), .b(b[1]), .c_in(cout[0]), .s(s[1]), .c_out(cout[1]));
    one_bit_full_adder obfa_2 (.a(a[2]), .b(b[2]), .c_in(cout[1]), .s(s[2]), .c_out(cout[2]));
    one_bit_full_adder obfa_3 (.a(a[3]), .b(b[3]), .c_in(cout[2]), .s(s[3]), .c_out(cout[3]));

    assign s[4] = cout[3];
    assign c    = cout[3];
    assign o    = cout[3] ^ cout[2];

endmodule
