module d_flip_flop_tb;
    reg  [3:0] data;
    reg        clk;
    reg        set, reset;      // SYNCHRONOUS
    reg        preset, clear;   // ASYNCHRONOUS
    wire [3:0] q, nq;

    localparam period = 50;

    initial clk = 1'b0;

    always #(period / 2) clk = ~clk;

    d_flip_flop d (.data(data), .clk(clk), .set(set), .reset(reset), .preset(preset), .clear(clear), .q(q), .nq(nq));

    always begin
        // PRESET ACTIVE
        data   = 4'b1010;
        preset = 1'b1; clear = 1'b0;
        set    = 1'b0; reset = 1'b0;
        #40;

        // CLEAR ACTIVE
        preset = 1'b0; clear = 1'b1;
        set    = 1'b0; reset = 1'b0;
        #40;

        // SET ACTIVE
        preset = 1'b0; clear = 1'b0;
        set    = 1'b1; reset = 1'b0;
        #110;

        // RESET ACTIVE
        preset = 1'b0; clear = 1'b0;
        set    = 1'b0; reset = 1'b1;
        #110;

        // DATA
        preset = 1'b0; clear = 1'b0;
        set    = 1'b0; reset = 1'b0;
        #100;

        $finish;
    end

endmodule
