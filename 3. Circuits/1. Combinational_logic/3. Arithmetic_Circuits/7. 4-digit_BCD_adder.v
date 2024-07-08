/* Instantiate 4 copies of bcd_fadd to create a 4-digit BCD ripple-carry adder. 
Your adder should add two 4-digit BCD numbers (packed into 16-bit vectors) and 
a carry-in to produce a 4-digit sum and carry out. */

module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [3:0] con1;
    
    bcd_fadd b1(a[3:0],b[3:0],cin,con1[0],sum[3:0]);
    bcd_fadd b2(a[7:4],b[7:4],con1[0],con1[1],sum[7:4]);
    bcd_fadd b3(a[11:8],b[11:8],con1[1],con1[2],sum[11:8]);
    bcd_fadd b4(a[15:12],b[15:12],con1[2],cout,sum[15:12]);

endmodule
