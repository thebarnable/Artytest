`timescale 1ns / 1ps

module top(
  input            clk_100MHz,
  input      [3:0] sw,
  output reg [3:0] led
);

wire clk_50MHz, clk_200MHz;
clk_wiz(
  .clk_in(clk_100MHz),
  .clk_50MHz(clk_50MHz),
  .clk_200MHz(clk_200MHz)
);

wire [6:0] duty_cycle = sw[0] ? 7'd50 : 7'd0;
wire       pwm;
pwm(
  .clk(clk_50MHz),
  .rst(1'b0),
  .duty_cycle(duty_cycle),
  .driver(pwm)
);

always@(posedge clk_200MHz) begin
led[0] <= pwm;
led[1] <= pwm;
led[2] <= pwm;
led[3] <= pwm;
end


endmodule
