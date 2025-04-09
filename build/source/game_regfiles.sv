/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module game_regfiles (
        input wire clk,
        input wire rst,
        input wire [3:0] wa,
        input wire we,
        input wire [31:0] data,
        input wire [3:0] ra1,
        input wire [3:0] ra2,
        output reg [31:0] rd1,
        output reg [31:0] rd2,
        output reg [31:0] p1l_score_out,
        output reg [31:0] p1r_score_out,
        output reg [31:0] p2l_score_out,
        output reg [31:0] p2r_score_out,
        output reg [31:0] p1l_avail_out,
        output reg [31:0] p1r_avail_out,
        output reg [31:0] p2l_avail_out,
        output reg [31:0] p2r_avail_out,
        output reg [31:0] timer_out
    );
    logic [31:0] D_p1l_score_d, D_p1l_score_q = 1'h1;
    logic [31:0] D_p1r_score_d, D_p1r_score_q = 1'h1;
    logic [31:0] D_p2l_score_d, D_p2l_score_q = 1'h1;
    logic [31:0] D_p2r_score_d, D_p2r_score_q = 1'h1;
    logic [31:0] D_p1l_avail_d, D_p1l_avail_q = 1'h1;
    logic [31:0] D_p1r_avail_d, D_p1r_avail_q = 1'h1;
    logic [31:0] D_p2l_avail_d, D_p2l_avail_q = 1'h1;
    logic [31:0] D_p2r_avail_d, D_p2r_avail_q = 1'h1;
    logic [31:0] D_timer_d, D_timer_q = 1'h0;
    logic [31:0] D_temp1_d, D_temp1_q = 1'h0;
    logic [31:0] D_temp2_d, D_temp2_q = 1'h0;
    logic [31:0] D_temp3_d, D_temp3_q = 1'h0;
    logic [31:0] D_temp4_d, D_temp4_q = 1'h0;
    logic [31:0] D_current_player_d, D_current_player_q = 1'h0;
    logic [31:0] D_timerLED_out_d, D_timerLED_out_q = 1'h0;
    always @* begin
        D_p1l_score_d = D_p1l_score_q;
        D_p1r_score_d = D_p1r_score_q;
        D_p2l_score_d = D_p2l_score_q;
        D_p2r_score_d = D_p2r_score_q;
        D_p1l_avail_d = D_p1l_avail_q;
        D_p1r_avail_d = D_p1r_avail_q;
        D_p2l_avail_d = D_p2l_avail_q;
        D_p2r_avail_d = D_p2r_avail_q;
        D_timer_d = D_timer_q;
        D_temp1_d = D_temp1_q;
        D_temp2_d = D_temp2_q;
        D_temp3_d = D_temp3_q;
        D_temp4_d = D_temp4_q;
        D_current_player_d = D_current_player_q;
        D_timerLED_out_d = D_timerLED_out_q;
        
        if (we) begin
            
            case (wa)
                1'h0: begin
                    D_p1l_score_d = data;
                end
                1'h1: begin
                    D_p1r_score_d = data;
                end
                2'h2: begin
                    D_p2l_score_d = data;
                end
                2'h3: begin
                    D_p2r_score_d = data;
                end
                3'h4: begin
                    D_p1l_avail_d = data;
                end
                3'h5: begin
                    D_p1r_avail_d = data;
                end
                3'h6: begin
                    D_p2l_avail_d = data;
                end
                3'h7: begin
                    D_p2r_avail_d = data;
                end
                4'h8: begin
                    D_timer_d = data;
                end
                4'h9: begin
                    D_temp1_d = data;
                end
                4'ha: begin
                    D_temp2_d = data;
                end
                4'hb: begin
                    D_temp3_d = data;
                end
                4'hc: begin
                    D_temp4_d = data;
                end
                4'hd: begin
                    D_current_player_d = data;
                end
                4'he: begin
                    D_timerLED_out_d = data;
                end
            endcase
        end
        
        case (ra1)
            1'h0: begin
                rd1 = D_p1l_score_q;
            end
            1'h1: begin
                rd1 = D_p1r_score_q;
            end
            2'h2: begin
                rd1 = D_p2l_score_q;
            end
            2'h3: begin
                rd1 = D_p2r_score_q;
            end
            3'h4: begin
                rd1 = D_p1l_avail_q;
            end
            3'h5: begin
                rd1 = D_p1r_avail_q;
            end
            3'h6: begin
                rd1 = D_p2l_avail_q;
            end
            3'h7: begin
                rd1 = D_p2r_avail_q;
            end
            4'h8: begin
                rd1 = D_timer_q;
            end
            4'h9: begin
                rd1 = D_temp1_q;
            end
            4'ha: begin
                rd1 = D_temp2_q;
            end
            4'hb: begin
                rd1 = D_temp3_q;
            end
            4'hc: begin
                rd1 = D_temp4_q;
            end
            4'hd: begin
                rd1 = D_current_player_q;
            end
            4'he: begin
                rd1 = D_timerLED_out_q;
            end
            default: begin
                rd1 = 1'h0;
            end
        endcase
        
        case (ra2)
            1'h0: begin
                rd2 = D_p1l_score_q;
            end
            1'h1: begin
                rd2 = D_p1r_score_q;
            end
            2'h2: begin
                rd2 = D_p2l_score_q;
            end
            2'h3: begin
                rd2 = D_p2r_score_q;
            end
            3'h4: begin
                rd2 = D_p1l_avail_q;
            end
            3'h5: begin
                rd2 = D_p1r_avail_q;
            end
            3'h6: begin
                rd2 = D_p2l_avail_q;
            end
            3'h7: begin
                rd2 = D_p2r_avail_q;
            end
            4'h8: begin
                rd2 = D_timer_q;
            end
            4'h9: begin
                rd2 = D_temp1_q;
            end
            4'ha: begin
                rd2 = D_temp2_q;
            end
            4'hb: begin
                rd2 = D_temp3_q;
            end
            4'hc: begin
                rd2 = D_temp4_q;
            end
            4'hd: begin
                rd2 = D_current_player_q;
            end
            4'he: begin
                rd2 = D_timerLED_out_q;
            end
            default: begin
                rd2 = 1'h0;
            end
        endcase
        p1l_score_out = D_p1l_score_q;
        p1r_score_out = D_p1r_score_q;
        p2l_score_out = D_p2l_score_q;
        p2r_score_out = D_p2r_score_q;
        p1l_avail_out = D_p1l_avail_q;
        p1r_avail_out = D_p1r_avail_q;
        p2l_avail_out = D_p2l_avail_q;
        p2r_avail_out = D_p2r_avail_q;
        timer_out = D_current_player_q;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_p1l_score_q <= 1'h1;
            D_p1r_score_q <= 1'h1;
            D_p2l_score_q <= 1'h1;
            D_p2r_score_q <= 1'h1;
            D_p1l_avail_q <= 1'h1;
            D_p1r_avail_q <= 1'h1;
            D_p2l_avail_q <= 1'h1;
            D_p2r_avail_q <= 1'h1;
            D_timer_q <= 1'h0;
            D_temp1_q <= 1'h0;
            D_temp2_q <= 1'h0;
            D_temp3_q <= 1'h0;
            D_temp4_q <= 1'h0;
            D_current_player_q <= 1'h0;
            D_timerLED_out_q <= 1'h0;
        end else begin
            D_p1l_score_q <= D_p1l_score_d;
            D_p1r_score_q <= D_p1r_score_d;
            D_p2l_score_q <= D_p2l_score_d;
            D_p2r_score_q <= D_p2r_score_d;
            D_p1l_avail_q <= D_p1l_avail_d;
            D_p1r_avail_q <= D_p1r_avail_d;
            D_p2l_avail_q <= D_p2l_avail_d;
            D_p2r_avail_q <= D_p2r_avail_d;
            D_timer_q <= D_timer_d;
            D_temp1_q <= D_temp1_d;
            D_temp2_q <= D_temp2_d;
            D_temp3_q <= D_temp3_d;
            D_temp4_q <= D_temp4_d;
            D_current_player_q <= D_current_player_d;
            D_timerLED_out_q <= D_timerLED_out_d;
        end
    end
endmodule