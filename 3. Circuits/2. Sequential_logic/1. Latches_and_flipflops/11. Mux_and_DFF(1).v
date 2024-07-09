// Write a Verilog module (containing one flip-flop and multiplexer) named top_module for this submodule.

module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
    always @(posedge clk) begin
        case (L)
            1:Q=r_in;
            0:Q=q_in;
        endcase
    end

endmodule
