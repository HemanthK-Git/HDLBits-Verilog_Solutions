/* Now that you know how to build a full adder, make 3 instances of it to create a 3-bit binary ripple-carry adder. 
The adder adds two 3-bit numbers and a carry-in to produce a 3-bit sum and carry out.
To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
cout[2] is the final carry-out from the last full adder, and is the carry-out you usually see. */

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire c1,c2;
    fulladder fa0(.A(a[0]),.B(b[0]),.CIN(cin),.SUM(sum[0]),.COUT(c1));
    fulladder fa1(.A(a[1]),.B(b[1]),.CIN(c1),.SUM(sum[1]),.COUT(c2));
    fulladder fa2(.A(a[2]),.B(b[2]),.CIN(c2),.SUM(sum[2]),.COUT(cout[2]));
    
    assign cout[0]=c1;
    assign cout[1]=c2;

endmodule

module fulladder(input A,input B,input CIN,output SUM,output COUT);
    assign COUT=A*B|B*CIN|CIN*A;
    assign SUM=A^B^CIN;
endmodule
