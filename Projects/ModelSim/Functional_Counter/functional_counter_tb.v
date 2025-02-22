module functional_counter_tb;
    // Input ports as registers (variables) AND Output ports as wires (nets)
    reg        aclr, clk;
    reg  [7:0] d;
    reg  [1:0] op;
    wire [7:0] q;

    localparam period = 100;

    functional_counter dut
        (.aclr(aclr), .clk(clk), .d(d), .op(op), .q(q));

    initial clk = 1'b0;

    always #(period / 2) clk = ~clk;

    initial
        begin
            aclr = 1;       // A. CLEAR    ==> q  = 00000000
            op = 2'b00;     //             ==> op = 00
            d = 8'hFF;      //             ==> d  = 11111111

            op = #25 2'b01; //             ==> op = 01
            d = 8'h0F;      //             ==> d  = 00001111

            aclr = #25 0;   // NO A. CLEAR ==> q  = 00000001

            op = #25 2'b10; //             ==> op = 10
            d = 8'hFF;      //             ==> d  = 11111111
                            //             ==> q  = 00000000

            #25;
            $finish;
        end

endmodule
