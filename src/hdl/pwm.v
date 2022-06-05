module pwm(
  input       clk,
  input       rst,
  input [6:0] duty_cycle,
  output      driver
);

reg [6:0] cnt;
always@(posedge clk) begin
  if(rst || (cnt >= 7'd100)) begin
    cnt <= 0;
  end else begin
    cnt <= cnt + 1;
  end
end

assign driver = cnt < duty_cycle;

endmodule
