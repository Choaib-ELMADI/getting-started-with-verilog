/*

    . Signals being synchronous or asynchronous is controlled by the way they are included in the sensitivity list.
    . Asynchronous signals are included in the sensitivity list.

*/

// SYNCHRONOUS PRESET AND CLEAR
module dff_sync
    (
        input      d, clk, sclr, spre,
        output reg q
    );

    always @ (posedge clk)
        begin
            if (sclr)      q <= 1'b0;
            else if (spre) q <= 1'b1;
            else           q <= d;
        end

endmodule

// ASYNCHRONOUS CLEAR
module dff_async
    (
        input      d, clk, aclr,
        output reg q
    );

    always @ (posedge clk, posedge aclr)
        begin
            if (aclr) q <= 1'b0;
            else      q <= d;
        end

endmodule
