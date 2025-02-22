function [15:0] mult;
    input    [7:0] a, b;
    reg     [15:0] r;
    integer        i;

    begin
        if (a[0] == 1) r = b;
        else           r = 0;

        for (i=1; i<=7; i=i+1) begin
            if (a[i] == 1)
                r = r + b << i;
        end

        mult = r;
    end

endfunction
