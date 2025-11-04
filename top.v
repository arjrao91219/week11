`timescale 1ns / 1ps

module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
    );
    
    D_FlipFlop DFF_top(
        .D(sw[0]),
        .clock(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    JKFF JKFF_top(
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );
    
    TFF TFF_top(
        .T(sw[3]),
        .clock(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );
    
endmodule
