module johnson_tb;
reg clk, rst;
wire [4:0] count;
johnson_rtl uut (
    .clk(clk),
    .rst(rst),
    .count(count));
initial begin
    clk = 0;
    rst = 1;
    #10 
    rst = 0;
end
always #5 clk = ~clk;
endmodule
