module before_verilog_2001 (out, ina, inb, clk, aclr);

    // Port declarations before Verilog-2001
    input   [7:0] ina, inb;
    input         clk, aclr;
    output [15:0] out;

endmodule

/* ---- */

module after_verilog_2001
    (
        output [15:0] out,
        input         clk, aclr,
        input   [7:0] ina, inb
    );

    // Module and Port declarations can be combined after Verilog-2001
    // Parameters #() may also be included

endmodule
