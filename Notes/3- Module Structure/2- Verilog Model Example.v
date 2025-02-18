module mult_acc (out, ina, inb, clk, aclr);

    // Port declarations
    input   [7:0] ina, inb;
    input         clk, aclr;
    output [15:0] out;

    // Data type declarations
    wire   [15:0] mult_out, adder_out;
    reg    [15:0] out;

    // Circuit functionality
    assign adder_out = mult_out + out;

    always @(posedge clk or posedge aclr)
        if (aclr) out <= 16'h0000;
        else      out <= adder_out;

    multa u1(.in_a(ina), .in_b(inb), .m_out(mult_out));

    // Timing specifications

endmodule
