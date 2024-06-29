/* The above truth table is for a three-input, one-output function. 
It has 8 rows for each of the 8 possible input combinations, 
and one output column. There are four inputs combinations where the output is 1, 
and four where the output is 0. */

module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f= (~x3&x2) | (x3&x1);

endmodule
