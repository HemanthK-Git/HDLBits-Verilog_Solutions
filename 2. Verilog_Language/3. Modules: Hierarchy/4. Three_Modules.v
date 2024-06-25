/* You are given a module my_dff with two inputs and one output (that implements a D flip-flop). 
    Instantiate three of them, then chain them together to make a shift register of length 3. 
    The clk port needs to be connected to all instances. */

module top_module ( input clk, input d, output q );
    wire w1,w2;
    my_dff inst1(.clk(clk),.d(d),.q(w1));
    my_dff inst2(.clk(clk),.d(w1),.q(w2));
    my_dff inst3(.clk(clk),.d(w2),.q(q));

endmodule
