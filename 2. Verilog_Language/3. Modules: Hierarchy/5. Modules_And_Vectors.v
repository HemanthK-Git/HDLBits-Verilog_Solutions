/* You are given a module my_dff8 with two inputs and one output (that implements a set of 8 D flip-flops). 
    Instantiate three of them, then chain them together to make a 8-bit wide shift register of length 3. 
    In addition, create a 4-to-1 multiplexer (not provided) that chooses what to output depending on sel[1:0]: 
    The value at the input d, after the first, after the second, or after the third D flip-flop. 
    (Essentially, sel selects how many cycles to delay the input, from zero to three clock cycles.) */

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] w1,w2,w3;
    my_dff8 inst1(.clk(clk),.d(d),.q(w1));
    my_dff8 inst2(.clk(clk),.d(w1),.q(w2));
    my_dff8 inst3(.clk(clk),.d(w2),.q(w3));

        always@ (*) 
            begin
                case (sel)
                    3 : q=w3;
                    2 : q=w2;
                    1 : q=w1;
                    0 : q=d;
                 endcase
            end
 endmodule
