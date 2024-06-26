/* In this exercise, you are provided with the same module add16 as the previous exercise, 
    which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. 
    You must instantiate three of these to build the carry-select adder, 
    using your own 16-bit 2-to-1 multiplexer. */

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2,w3;
    wire [15:0] sum_1,sum_2;
    add16 add_1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 add_2(a[31:16],b[31:16],0,sum_1,w2);
    add16 add_3(a[31:16],b[31:16],1,sum_2,w3);
    
    always@ (w1,sum_1,sum_2)
        begin
            case (w1)
                0: sum[31:16]=sum_1;
                1: sum[31:16]=sum_2;
            endcase
            
        end

endmodule
