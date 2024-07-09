// Write a Verilog module named top_module for one stage of this circuit, including both the flip-flop and multiplexers.

module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire w1;
    assign w1=(E)?w:Q; 
    
    always @(posedge clk) begin
        case (L)
            0: Q=w1;
                1: Q=R;
        endcase
    end

endmodule
