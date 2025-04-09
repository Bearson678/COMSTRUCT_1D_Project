/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bin_to_dec #(
        parameter DIGITS = 3'h4,
        parameter LEADING_ZEROS = 1'h0
    ) (
        input wire [($clog2((64'(4'ha) ** (DIGITS))))-1:0] value,
        output reg [(DIGITS)-1:0][3:0] digits
    );
    logic [31:0] R_34073bc0_j;
    logic [31:0] RR_34073bc0_j;
    logic [31:0] R_23866920_i;
    logic [31:0] RR_23866920_i;
    logic [($bits(value))-1:0] L_4b06f5b3_remainder;
    logic L_4b06f5b3_blank;
    logic [($bits(value))-1:0] L_6436e456_scale;
    logic [($bits(value))-1:0] L_7441e599_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_4b06f5b3_remainder = value;
        L_4b06f5b3_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_34073bc0_j = 0; RR_34073bc0_j < DIGITS; RR_34073bc0_j = RR_34073bc0_j + 1) begin
        R_34073bc0_j = (DIGITS - 1'h1) + RR_34073bc0_j * (-2'sh1);
                L_6436e456_scale = (64'(4'ha) ** (R_34073bc0_j));
                if (L_4b06f5b3_remainder < L_6436e456_scale) begin
                    if (R_34073bc0_j != 1'h0 && L_4b06f5b3_blank) begin
                        digits[R_34073bc0_j] = 4'ha;
                    end else begin
                        digits[R_34073bc0_j] = 1'h0;
                    end
                end else begin
                    L_4b06f5b3_blank = 1'h0;
                    L_7441e599_sub_value = 1'h0;
                    for (RR_23866920_i = 0; RR_23866920_i < 4'h9; RR_23866920_i = RR_23866920_i + 1) begin
            R_23866920_i = (4'h9) + RR_23866920_i * (-2'sh1);
                        if (L_4b06f5b3_remainder < (R_23866920_i + 1'h1) * L_6436e456_scale) begin
                            digits[R_34073bc0_j] = R_23866920_i;
                            L_7441e599_sub_value = R_23866920_i * L_6436e456_scale;
                        end
                    end
                    L_4b06f5b3_remainder = L_4b06f5b3_remainder - L_7441e599_sub_value;
                end
            end
        end
    end
    
    
endmodule