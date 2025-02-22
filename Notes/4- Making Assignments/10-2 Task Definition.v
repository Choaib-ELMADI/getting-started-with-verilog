task add_sub;
    input  a, b;    // Input argument ports
    output c, d;    // Output argument ports

    begin
        c = a + b;
        d = a - b;
    end
endtask
