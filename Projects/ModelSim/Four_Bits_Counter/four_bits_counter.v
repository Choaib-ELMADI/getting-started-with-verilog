module four_bits_counter
    (
        input            reset,
        input            clk,
        output reg [3:0] counter,
        output reg       overflow
    );

    initial begin
        counter  = 4'b0000;
        overflow = 1'b0;
    end

    always @ (posedge clk)
        begin
            if (reset) begin
                counter  = 4'b0000;
                overflow = 1'b0;
            end
            else if (counter === 4'b1111) begin
                counter  = 4'b0000;
                overflow = 1'b1;
            end
            else begin
                counter  = counter + 1;
            end
        end

endmodule
