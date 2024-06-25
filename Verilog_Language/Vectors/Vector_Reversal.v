// Given an 8-bit input vector [7:0], reverse its bit ordering.

module top_module( 
    input [0:7] in,
    output [0:7] out
);
    assign out[0:7]={in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};

endmodule
