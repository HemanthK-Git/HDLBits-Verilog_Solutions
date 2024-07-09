/* Given the finite state machine circuit as shown, 
assume that the D flip-flops are initially reset to zero before the machine begins.
Build this circuit. */

module top_module (
    input clk,
    input x,
    output z
); 
    wire w1,w2,w3;
    reg q1,q2,q3;
        
    dflip(.D(w1),.clk(clk),.Q(q1));
    dflip(.D(w2),.clk(clk),.Q(q2));
    dflip(.D(w3),.clk(clk),.Q(q3));
    
    assign w1=q1^x;
    assign w2=x&~q2;
    assign w3=x|~q3;
    assign z=~(q1|q2|q3);
    

endmodule

module dflip(
    input D,
    input clk,
    output Q );
    
    always @(posedge clk) Q=D;
endmodule
