module clock_signal_generator
    #(parameter period = 50) // 0.00000000005sec === 5x10e-11sec === 50x10e-12sec === 50psec
    (output reg clk);

    initial clk = 1'b0;

    always #(period / 2) clk = ~clk;

    initial #300 $finish;

endmodule
