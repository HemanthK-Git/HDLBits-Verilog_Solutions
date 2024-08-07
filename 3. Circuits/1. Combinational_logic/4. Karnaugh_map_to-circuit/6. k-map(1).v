// Consider the function f shown in the Karnaugh map below.

module top_module (
    input [4:1] x, 
    output f );
    
    assign f=(x[3]&~x[1])|(x[1]&x[2]&~x[3]);

endmodule
