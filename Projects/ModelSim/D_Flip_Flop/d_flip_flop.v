module d_flip_flop
    (
        input      [3:0] data,
        input            clk,
        input            set, reset,      // SYNCHRONOUS
        input            preset, clear,   // ASYNCHRONOUS
        output reg [3:0] q, nq
    );

    always @ (preset, clear)
        begin
            if      (preset) q = 4'b1111;
            else if  (clear) q = 4'b0000;
        end

    always @ (posedge clk)
        begin
            if (!preset && !clear) begin
                if        (set) q = 4'b1111;
                else if (reset) q = 4'b0000;
                else            q = data;
            end
        end

    always @ * nq = ~q;

endmodule
