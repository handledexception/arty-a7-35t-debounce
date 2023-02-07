`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Paul Hindt
// 
// Create Date: 10/22/2022 05:01:13 PM
// Design Name: Arty A7 Button Debouncer
// Module Name: top
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
module top(
    input clk,
    input btn_1,
    output led_1
    );

    clocked_logic cl(
        .i_clk(clk),
        .i_btn(btn_1),
        .o_led(led_1)
    );
endmodule
