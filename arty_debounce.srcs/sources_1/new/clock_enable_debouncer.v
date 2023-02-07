`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Paul Hindt
// 
// Create Date: 10/22/2022 08:22:27 PM
// Design Name: Arty A7 Button Debouncer 
// Module Name: clock_enable
// Project Name: arty_debounce 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module clock_enable(
    input i_clk,
    output o_slow_clk
    );

    reg [26:0]counter=0;
    always @(posedge i_clk)
    begin
       counter <= (counter>=249999)?0:counter+1;
    end
    assign o_slow_clk = (counter == 249999)?1'b1:1'b0;
endmodule