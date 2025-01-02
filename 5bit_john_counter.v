module johnson_rtl(
    input wire clk,
    input wire rst,
    output reg [4:0] count);
    reg [4:0] temp;
always @(posedge clk or posedge rst) begin
if (rst) 
begin
 count <= 5'b10000;
 temp <= 5'b00000;
 end 
else 
begin
  temp <= {count[0], count[4:1]};
  count <= ~temp;
  end
 end
endmodule
