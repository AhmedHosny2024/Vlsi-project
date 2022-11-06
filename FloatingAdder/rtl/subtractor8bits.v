module subtractor8bits (a,b,out,borrow);
input [7:0] a,b;
output [7:0] out;
wire [7:0] w1; 
output borrow;
halfsubtractor half_subtractor1(.a(a[0]),.b(b[0]),.sub(out[0]),.cout(w1[0]));
genvar i;
generate
for (i=1;i<8;i=i+1)
subtractor full_subtractor (.a(a[i]),.b(b[i]),.cin(w1[i-1]),.sub(out[i]),.cout(w1[i]));
endgenerate
assign borrow = w1[7]; 
endmodule

