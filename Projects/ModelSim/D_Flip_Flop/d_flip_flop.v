module d_flip_flop
    (
        input      [3:0] data,
        input            clk,
        input            set, reset,      // SYNCHRONOUS
        input            preset, clear,   // ASYNCHRONOUS
        output reg [3:0] q, nq
    );

    always @ (negedge clk, preset, clear)
        begin
            if (preset) begin
                q  = 4'b1111;
                nq = 4'b0000;
            end
            else if (clear) begin
                q  = 4'b0000;
                nq = 4'b1111;
            end
            else begin
                if (set) begin
                    q  = 4'b0110;
                    nq = 4'b1001;
                end
                else if (reset) begin
                    q  = 4'b0011;
                    nq = 4'b1100;
                end
                else begin
                    q  = data;
                    nq = ~data;
                end
            end
        end

endmodule
