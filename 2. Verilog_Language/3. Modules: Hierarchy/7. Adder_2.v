/* In this exercise, you will create a circuit with two levels of hierarchy. 
    Your top_module will instantiate two copies of add16 (provided), 
    each of which will instantiate 16 copies of add1 (which you must write). 
    Thus, you must write two modules: top_module and add1. */

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1,w2;
    add16 add_1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 add_2(a[31:16],b[31:16],w1,sum[31:16],w2);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum=a^b^cin;
    assign cout=a&b|b&cin|cin&a;

endmodule
