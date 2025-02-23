module one_bit_full_adder
    (
        input      a, b, c_in,
        output reg s, c_out
    );

    always @ (a, b, c_in) begin
        s     <= a ^ b ^ c_in;
        c_out <= (a & b) | (c_in & (a ^ b));
    end

endmodule
