`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Paul Hindt
// 
// Create Date: 10/22/2022 05:02:20 PM
// Design Name: Arty A7 Button Debouncer
// Module Name: clocked_logic
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
module clocked_logic(
    input i_clk,
    input i_btn,
    output o_led
    );
    
    wire btn_debounced;
    reg r_led_1 = 1'b0;
    reg r_btn_1 = 1'b0;
 
    debouncer db(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .o_btn(btn_debounced)
    );

    always @(posedge i_clk)
        begin
            r_btn_1 <= btn_debounced; // create a register
            if (btn_debounced == 1'b0 && r_btn_1 == 1'b1) // falling btn_1
                begin
                    r_led_1 <= ~r_led_1;
                end
        end
    
    assign o_led = r_led_1;
endmodule
