`timescale 1ns/1ps

module mux_tb;

    reg A, B, S;
    wire Y;

    // Instantiate the MUX
    mux_2to1 uut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux.vcd");
        $dumpvars(0, mux_tb);

        $monitor("Time=%0t A=%b B=%b S=%b Y=%b",
                  $time, A, B, S, Y);

        // Test 1
        S=0; A=0; B=0;
        #10;

        // Test 2
        S=0; A=1; B=0;
        #10;

        // Test 3
        S=1; A=0; B=1;
        #10;

        // Test 4
        S=1; A=1; B=0;
        #10;

        $finish;

    end

endmodule