`timescale 1ns / 1ps

module top(
  input            clk_100MHz,
  input      [3:0] sw,
  output reg [3:0] led
);

wire [6:0] duty_cycle = sw[0] ? 7'd50 : 7'd0;
wire       pwm;
pwm(
  .clk(clk_100MHz),
  .rst(1'b0),
  .duty_cycle(duty_cycle),
  .driver(pwm)
);

always@(posedge clk_100MHz) begin
led[0] <= pwm;
led[1] <= pwm;
led[2] <= pwm;
led[3] <= pwm;
end


endmodule
