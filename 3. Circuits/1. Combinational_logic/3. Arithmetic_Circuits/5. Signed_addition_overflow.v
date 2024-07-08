/* Assume that you have two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 
These numbers are added to produce s[7:0]. 
Also compute whether a (signed) overflow has occurred. */

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
    wire a_sign=a[7];
    wire b_sign=b[7];
    wire s_sign=s[7];
    assign s=a+b;
    assign overflow=(a_sign==b_sign)&&(a_sign!=s_sign);

endmodule
