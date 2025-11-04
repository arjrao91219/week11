`timescale 1ns / 1ps

module JKFF(
    input J, K,
    input clock,
    output Q,
    output NotQ
    );
    
    wire d_input;
    
    assign d_input = (~K & Q) | (J & NotQ);
    
    D_FlipFlop DFF_inst(
        .D(d_input),
        .clock(clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
