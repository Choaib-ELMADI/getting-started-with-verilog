module half_adder
    (
        input      a, b,
        output reg s, c
    );

    always @ (a, b) begin
        s = a ^ b; // XOR
        c = a & b; // AND
    end

endmodule
