/* Implement the following circuit. 
Create two intermediate wires (named anything you want) to connect the AND and OR gates together. 
Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to declare a third wire here. 
Notice how wires are driven by exactly one source (output of a gate), but can feed multiple inputs. */

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire w1,w2,w3;
    
    assign w1=a&b, w2=c&d, w3=w1|w2;
    assign out=w3, out_n=~w3;
    

endmodule

