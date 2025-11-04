`timescale 1ns / 1ps

module TFF(
    input T,
    input clock,
    output Q,
    output NotQ
    );
    
    JKFF JKFF_inst(
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
