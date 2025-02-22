module functional_counter
    (
        input            aclr, clk,
        input      [7:0] d,
        input      [1:0] op,                // Operation code
        output reg [7:0] q
    );

    always @ (posedge clk, posedge aclr)
        begin
            if (aclr) q <= 8'h00;
            else
                case (op)
                    2'b00: q <= d;          // Loads counter
                    2'b01: q <= q + 1;      // Counts up
                    2'b10: q <= q - 1;      // Counts down
                endcase
        end

endmodule
