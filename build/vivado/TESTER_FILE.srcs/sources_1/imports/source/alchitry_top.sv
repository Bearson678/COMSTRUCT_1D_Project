/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alchitry_top (
        input wire clk,
        input wire rst_n,
        output reg [7:0] led,
        input wire usb_rx,
        output reg usb_tx,
        output reg [2:0][7:0] io_led,
        output reg [7:0] io_segment,
        output reg [3:0] io_select,
        input wire [4:0] io_button,
        input wire [2:0][7:0] io_dip
    );
    logic rst;
    localparam CLOCK_DIVIDER = 5'h1a;
    localparam SLOW_CLOCK_DIV = 5'h15;
    localparam CLK_FREQ = 24'h989680;
    localparam SEVEN_SEG_DIV = 5'h10;
    localparam _MP_STAGES_1368340901 = 3'h4;
    logic M_reset_cond_in;
    logic M_reset_cond_out;
    
    reset_conditioner #(
        .STAGES(_MP_STAGES_1368340901)
    ) reset_cond (
        .clk(clk),
        .in(M_reset_cond_in),
        .out(M_reset_cond_out)
    );
    
    
    localparam _MP_RISE_1134254558 = 1'h1;
    localparam _MP_FALL_1134254558 = 1'h0;
    logic M_p1l_button_edge_detector_in;
    logic M_p1l_button_edge_detector_out;
    
    edge_detector #(
        .RISE(_MP_RISE_1134254558),
        .FALL(_MP_FALL_1134254558)
    ) p1l_button_edge_detector (
        .clk(clk),
        .in(M_p1l_button_edge_detector_in),
        .out(M_p1l_button_edge_detector_out)
    );
    
    
    localparam _MP_RISE_351008374 = 1'h1;
    localparam _MP_FALL_351008374 = 1'h0;
    logic M_p1r_button_edge_detector_in;
    logic M_p1r_button_edge_detector_out;
    
    edge_detector #(
        .RISE(_MP_RISE_351008374),
        .FALL(_MP_FALL_351008374)
    ) p1r_button_edge_detector (
        .clk(clk),
        .in(M_p1r_button_edge_detector_in),
        .out(M_p1r_button_edge_detector_out)
    );
    
    
    localparam _MP_RISE_525717633 = 1'h1;
    localparam _MP_FALL_525717633 = 1'h0;
    logic M_p2l_button_edge_detector_in;
    logic M_p2l_button_edge_detector_out;
    
    edge_detector #(
        .RISE(_MP_RISE_525717633),
        .FALL(_MP_FALL_525717633)
    ) p2l_button_edge_detector (
        .clk(clk),
        .in(M_p2l_button_edge_detector_in),
        .out(M_p2l_button_edge_detector_out)
    );
    
    
    localparam _MP_RISE_1596066828 = 1'h1;
    localparam _MP_FALL_1596066828 = 1'h0;
    logic M_p2r_button_edge_detector_in;
    logic M_p2r_button_edge_detector_out;
    
    edge_detector #(
        .RISE(_MP_RISE_1596066828),
        .FALL(_MP_FALL_1596066828)
    ) p2r_button_edge_detector (
        .clk(clk),
        .in(M_p2r_button_edge_detector_in),
        .out(M_p2r_button_edge_detector_out)
    );
    
    
    localparam _MP_RISE_1554635206 = 1'h1;
    localparam _MP_FALL_1554635206 = 1'h0;
    logic M_p1split_button_edge_detector_in;
    logic M_p1split_button_edge_detector_out;
    
    edge_detector #(
        .RISE(_MP_RISE_1554635206),
        .FALL(_MP_FALL_1554635206)
    ) p1split_button_edge_detector (
        .clk(clk),
        .in(M_p1split_button_edge_detector_in),
        .out(M_p1split_button_edge_detector_out)
    );
    
    
    localparam _MP_CLK_FREQ_682617392 = 24'h989680;
    localparam _MP_MIN_DELAY_682617392 = 5'h14;
    localparam _MP_NUM_SYNC_682617392 = 2'h2;
    logic M_p1l_button_cond_in;
    logic M_p1l_button_cond_out;
    
    button_conditioner #(
        .CLK_FREQ(_MP_CLK_FREQ_682617392),
        .MIN_DELAY(_MP_MIN_DELAY_682617392),
        .NUM_SYNC(_MP_NUM_SYNC_682617392)
    ) p1l_button_cond (
        .clk(clk),
        .in(M_p1l_button_cond_in),
        .out(M_p1l_button_cond_out)
    );
    
    
    localparam _MP_CLK_FREQ_784626054 = 24'h989680;
    localparam _MP_MIN_DELAY_784626054 = 5'h14;
    localparam _MP_NUM_SYNC_784626054 = 2'h2;
    logic M_p1r_button_cond_in;
    logic M_p1r_button_cond_out;
    
    button_conditioner #(
        .CLK_FREQ(_MP_CLK_FREQ_784626054),
        .MIN_DELAY(_MP_MIN_DELAY_784626054),
        .NUM_SYNC(_MP_NUM_SYNC_784626054)
    ) p1r_button_cond (
        .clk(clk),
        .in(M_p1r_button_cond_in),
        .out(M_p1r_button_cond_out)
    );
    
    
    localparam _MP_CLK_FREQ_855771786 = 24'h989680;
    localparam _MP_MIN_DELAY_855771786 = 5'h14;
    localparam _MP_NUM_SYNC_855771786 = 2'h2;
    logic M_p2l_button_cond_in;
    logic M_p2l_button_cond_out;
    
    button_conditioner #(
        .CLK_FREQ(_MP_CLK_FREQ_855771786),
        .MIN_DELAY(_MP_MIN_DELAY_855771786),
        .NUM_SYNC(_MP_NUM_SYNC_855771786)
    ) p2l_button_cond (
        .clk(clk),
        .in(M_p2l_button_cond_in),
        .out(M_p2l_button_cond_out)
    );
    
    
    localparam _MP_CLK_FREQ_386938596 = 24'h989680;
    localparam _MP_MIN_DELAY_386938596 = 5'h14;
    localparam _MP_NUM_SYNC_386938596 = 2'h2;
    logic M_p2r_button_cond_in;
    logic M_p2r_button_cond_out;
    
    button_conditioner #(
        .CLK_FREQ(_MP_CLK_FREQ_386938596),
        .MIN_DELAY(_MP_MIN_DELAY_386938596),
        .NUM_SYNC(_MP_NUM_SYNC_386938596)
    ) p2r_button_cond (
        .clk(clk),
        .in(M_p2r_button_cond_in),
        .out(M_p2r_button_cond_out)
    );
    
    
    localparam _MP_CLK_FREQ_679646046 = 24'h989680;
    localparam _MP_MIN_DELAY_679646046 = 5'h14;
    localparam _MP_NUM_SYNC_679646046 = 2'h2;
    logic M_p1split_button_cond_in;
    logic M_p1split_button_cond_out;
    
    button_conditioner #(
        .CLK_FREQ(_MP_CLK_FREQ_679646046),
        .MIN_DELAY(_MP_MIN_DELAY_679646046),
        .NUM_SYNC(_MP_NUM_SYNC_679646046)
    ) p1split_button_cond (
        .clk(clk),
        .in(M_p1split_button_cond_in),
        .out(M_p1split_button_cond_out)
    );
    
    
    localparam _MP_SLOW_CLOCK_DIV_625446793 = 5'h15;
    localparam _MP_CLOCK_DIVIDER_625446793 = 5'h1a;
    logic M_cd_p1l_button;
    logic M_cd_p1r_button;
    logic M_cd_p2r_button;
    logic M_cd_p2l_button;
    logic M_cd_blackoutbutton;
    logic M_cd_start;
    logic M_cd_p1split;
    logic M_cd_p2split;
    logic [31:0] M_cd_p1l_score_out;
    logic [31:0] M_cd_p1r_score_out;
    logic [31:0] M_cd_p2l_score_out;
    logic [31:0] M_cd_p2r_score_out;
    logic [31:0] M_cd_p1l_avail;
    logic [31:0] M_cd_p1r_avail;
    logic [31:0] M_cd_p2l_avail;
    logic [31:0] M_cd_p2r_avail;
    logic [31:0] M_cd_timer_led_out;
    logic [3:0] M_cd_debugging;
    logic [3:0] M_cd_slow_clock_out;
    logic [31:0] M_cd_curr_player;
    logic M_cd_change_mode;
    
    chopsticks_datapath #(
        .SLOW_CLOCK_DIV(_MP_SLOW_CLOCK_DIV_625446793),
        .CLOCK_DIVIDER(_MP_CLOCK_DIVIDER_625446793)
    ) cd (
        .clk(clk),
        .rst(rst),
        .p1l_button(M_cd_p1l_button),
        .p1r_button(M_cd_p1r_button),
        .p2r_button(M_cd_p2r_button),
        .p2l_button(M_cd_p2l_button),
        .blackoutbutton(M_cd_blackoutbutton),
        .start(M_cd_start),
        .p1split(M_cd_p1split),
        .p2split(M_cd_p2split),
        .p1l_score_out(M_cd_p1l_score_out),
        .p1r_score_out(M_cd_p1r_score_out),
        .p2l_score_out(M_cd_p2l_score_out),
        .p2r_score_out(M_cd_p2r_score_out),
        .p1l_avail(M_cd_p1l_avail),
        .p1r_avail(M_cd_p1r_avail),
        .p2l_avail(M_cd_p2l_avail),
        .p2r_avail(M_cd_p2r_avail),
        .timer_led_out(M_cd_timer_led_out),
        .debugging(M_cd_debugging),
        .slow_clock_out(M_cd_slow_clock_out),
        .curr_player(M_cd_curr_player),
        .change_mode(M_cd_change_mode)
    );
    
    
    localparam _MP_DIGITS_112363505 = 3'h4;
    localparam _MP_DIV_112363505 = 5'h10;
    logic [3:0][3:0] M_seg_values;
    logic [6:0] M_seg_seg;
    logic [3:0] M_seg_sel;
    
    multi_seven_seg #(
        .DIGITS(_MP_DIGITS_112363505),
        .DIV(_MP_DIV_112363505)
    ) seg (
        .clk(clk),
        .rst(rst),
        .values(M_seg_values),
        .seg(M_seg_seg),
        .sel(M_seg_sel)
    );
    
    
    localparam _MP_DIGITS_656028284 = 3'h4;
    localparam _MP_LEADING_ZEROS_656028284 = 1'h0;
    logic [13:0] M_bin_to_dec_converter_value;
    logic [3:0][3:0] M_bin_to_dec_converter_digits;
    
    bin_to_dec #(
        .DIGITS(_MP_DIGITS_656028284),
        .LEADING_ZEROS(_MP_LEADING_ZEROS_656028284)
    ) bin_to_dec_converter (
        .value(M_bin_to_dec_converter_value),
        .digits(M_bin_to_dec_converter_digits)
    );
    
    
    always @* begin
        M_reset_cond_in = ~rst_n;
        rst = M_reset_cond_out;
        usb_tx = usb_rx;
        led = 8'h0;
        io_led = {{8'h0, 8'h0, 8'h0}};
        io_segment = 8'hff;
        io_select = 4'hf;
        M_p1l_button_cond_in = io_button[1'h0];
        M_p1r_button_cond_in = io_button[1'h1];
        M_p2l_button_cond_in = io_button[2'h2];
        M_p2r_button_cond_in = io_button[2'h3];
        M_p1split_button_cond_in = io_button[3'h4];
        M_p1l_button_edge_detector_in = M_p1l_button_cond_out;
        M_p1r_button_edge_detector_in = M_p1r_button_cond_out;
        M_p2l_button_edge_detector_in = M_p2l_button_cond_out;
        M_p2r_button_edge_detector_in = M_p2r_button_cond_out;
        M_p1split_button_edge_detector_in = M_p1split_button_cond_out;
        M_cd_p1l_button = M_p1l_button_edge_detector_out;
        M_cd_p1r_button = M_p1r_button_edge_detector_out;
        M_cd_p2l_button = M_p2l_button_edge_detector_out;
        M_cd_p2r_button = M_p2r_button_edge_detector_out;
        M_cd_p1split = M_p1split_button_edge_detector_out;
        M_cd_p2split = io_dip[1'h0][1'h0];
        M_cd_blackoutbutton = io_dip[1'h1][1'h0];
        M_cd_start = io_dip[2'h2][1'h0];
        rst = io_dip[2'h2][3'h7];
        io_led[2'h2][3'h7:3'h4] = M_cd_p1l_score_out[2'h3:1'h0];
        io_led[2'h2][2'h3:1'h0] = M_cd_p1r_score_out[2'h3:1'h0];
        io_led[1'h1][3'h7:3'h4] = M_cd_p2l_score_out[2'h3:1'h0];
        io_led[1'h1][2'h3:1'h0] = M_cd_p2r_score_out[2'h3:1'h0];
        io_led[1'h0][3'h7] = M_cd_p1l_avail[1'h0];
        io_led[1'h0][3'h6] = M_cd_p1r_avail[1'h0];
        io_led[1'h0][3'h5] = M_cd_p2l_avail[1'h0];
        io_led[1'h0][3'h4] = M_cd_p2r_avail[1'h0];
        io_led[1'h0][2'h3] = M_cd_p1l_score_out[3'h4];
        io_led[1'h0][2'h2] = M_cd_p1r_score_out[3'h4];
        io_led[1'h0][1'h1] = M_cd_p2l_score_out[3'h4];
        io_led[1'h0][1'h0] = M_cd_p2r_score_out[3'h4];
        led[3'h7:3'h4] = M_cd_debugging;
        led[2'h2:1'h0] = M_cd_slow_clock_out[2'h2:1'h0];
        led[2'h3] = M_cd_change_mode;
        M_seg_values = {{4'h0, 4'h0, 4'h0, 4'h0}};
        M_bin_to_dec_converter_value = M_cd_timer_led_out[2'h3:1'h0];
        M_seg_values = M_bin_to_dec_converter_digits;
        io_segment = ~M_seg_seg;
        io_select = ~M_seg_sel;
    end
    
    
endmodule