// Create a 100-bit binary adder. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out.

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [100:0] fullsum;
    assign fullsum ={1'b0,a}+{1'b0,b}+cin;
    assign sum=fullsum[99:0];
    assign cout=fullsum[100];
       
    
endmodule
