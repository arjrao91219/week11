`timescale 1ns / 1ps

module D_FlipFlop(
    input D,
    input clock,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge clock)
        Q <= D;
        
    assign NotQ = ~Q;
    
endmodule
