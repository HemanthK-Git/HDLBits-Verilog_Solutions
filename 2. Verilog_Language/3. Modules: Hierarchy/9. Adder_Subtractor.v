/* Build the adder-subtractor below.
You are provided with a 16-bit adder module, which you need to instantiate twice: */

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] w2;
    wire [31:0] w1;
    assign w1=b^{32{sub}};
   
    add16 add_1(a[15:0],w1[15:0],sub,sum[15:0],w2);
    add16 add_2(a[31:16],w1[31:16],w2,sum[31:16]);

endmodule
