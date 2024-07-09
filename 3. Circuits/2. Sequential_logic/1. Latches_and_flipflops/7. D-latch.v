// Note that this is a latch, so a Quartus warning about having inferred a latch is expected.

module top_module (
    input d, 
    input ena,
    output q);
    
    always @(ena or d) begin
        if (ena)
            q=d;
       
    end

endmodule
