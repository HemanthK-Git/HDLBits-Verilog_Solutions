// Implement the circuit described by the Karnaugh map below.

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out=((~a)&b&c)|(a&c&d)|((~a)&(~d))|((~c)&(~b));

endmodule
