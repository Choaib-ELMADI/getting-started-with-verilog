module four_bits_counter_tb;
    reg        reset;
    reg        clk1, clk2, clk3;
    wire [3:0] counter1, counter2, counter3;
    wire       overflow1, overflow2, overflow3;

    localparam period1 = 25;
    localparam period2 = 50;
    localparam period3 = 100;

    initial begin
        clk1 = 1'b0; clk2 = 1'b0; clk3 = 1'b0;
    end

    always #(period1 / 2) clk1 = ~clk1;
    always #(period2 / 2) clk2 = ~clk2;
    always #(period3 / 2) clk3 = ~clk3;

    four_bits_counter c1 (.reset(reset), .clk(clk1), .counter(counter1), .overflow(overflow1));
    four_bits_counter c2 (.reset(reset), .clk(clk2), .counter(counter2), .overflow(overflow2));
    four_bits_counter c3 (.reset(reset), .clk(clk3), .counter(counter3), .overflow(overflow3));

    always begin
        reset = 1'b1;
        #50;

        reset = 1'b0;
        #200;

        reset = 1'b1;
        #50;

        $finish;
    end

endmodule
