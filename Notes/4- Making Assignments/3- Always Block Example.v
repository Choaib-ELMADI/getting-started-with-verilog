module always_block_example
    #(parameter period = 50)
    (output reg clk);

    initial clk = 1'b0;

    always #(period / 2) clk = ~clk;

    initial #100 $finish;

endmodule
