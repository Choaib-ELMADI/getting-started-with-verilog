module blocking_vs_nonblocking ();

    // BLOCKING
    initial
        begin
            // Assuming initially a=1 and b=2
            a = #5 b;
            c = #10 a;
        end

    // Here, the assignment of 'c' doesn't get evaluated until the assignment of 'a' completes executing!

    /* ----- */

    // NON-BLOCKING
    initial
        begin
            // Assuming initially a=1 and b=2
            a <= #5 b;
            c <= #10 a;
        end

    // Here, the compiler schedules the assignment of 'a' at time step #5!
    // Then, it moves on to the next statement which schedules the assignment of 'c' at time step #10!

endmodule
