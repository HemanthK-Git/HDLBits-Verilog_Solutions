/* Your circuit has one 16-bit input, and four outputs. 
Build this circuit that recognizes these four scancodes and asserts the correct output. */

module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always @(scancode) begin
        left=0; right=0; down=0; up=0;
        case (scancode)
            16'he06b:	left = 1;
			16'he072 : down =1;
            16'he074 :	right = 1;
			16'he075 :	up =1;
        endcase
       
    end

endmodule
