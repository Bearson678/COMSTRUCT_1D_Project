/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module shifter (
        input wire [31:0] a,
        input wire [4:0] b,
        input wire [5:0] alufn,
        output reg [31:0] shift
    );
    logic [31:0] R_20258114_i;
    logic [31:0] RR_20258114_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1940514007 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitleftshift_a;
    logic [4:0] M_xbitleftshift_shift;
    logic [4:0] M_xbitleftshift_pad;
    logic [4:0][31:0] M_xbitleftshift_out;
    
    genvar idx_0_1940514007;
    
    generate
        for (idx_0_1940514007 = 0; idx_0_1940514007 < 5; idx_0_1940514007 = idx_0_1940514007 + 1) begin: forLoop_idx_0_1940514007
            x_bitshiftleft #(
                .SHIFT(_MP_SHIFT_1940514007[idx_0_1940514007])
            ) xbitleftshift (
                .a(M_xbitleftshift_a[idx_0_1940514007]),
                .shift(M_xbitleftshift_shift[idx_0_1940514007]),
                .pad(M_xbitleftshift_pad[idx_0_1940514007]),
                .out(M_xbitleftshift_out[idx_0_1940514007])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1677778671 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitrightshift_a;
    logic [4:0] M_xbitrightshift_shift;
    logic [4:0] M_xbitrightshift_pad;
    logic [4:0][31:0] M_xbitrightshift_out;
    
    genvar idx_0_1677778671;
    
    generate
        for (idx_0_1677778671 = 0; idx_0_1677778671 < 5; idx_0_1677778671 = idx_0_1677778671 + 1) begin: forLoop_idx_0_1677778671
            x_bitshiftright #(
                .SHIFT(_MP_SHIFT_1677778671[idx_0_1677778671])
            ) xbitrightshift (
                .a(M_xbitrightshift_a[idx_0_1677778671]),
                .shift(M_xbitrightshift_shift[idx_0_1677778671]),
                .pad(M_xbitrightshift_pad[idx_0_1677778671]),
                .out(M_xbitrightshift_out[idx_0_1677778671])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_2003431455 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitrightsignshift_a;
    logic [4:0] M_xbitrightsignshift_shift;
    logic [4:0] M_xbitrightsignshift_pad;
    logic [4:0][31:0] M_xbitrightsignshift_out;
    
    genvar idx_0_2003431455;
    
    generate
        for (idx_0_2003431455 = 0; idx_0_2003431455 < 5; idx_0_2003431455 = idx_0_2003431455 + 1) begin: forLoop_idx_0_2003431455
            x_bitshiftrightsigned #(
                .SHIFT(_MP_SHIFT_2003431455[idx_0_2003431455])
            ) xbitrightsignshift (
                .a(M_xbitrightsignshift_a[idx_0_2003431455]),
                .shift(M_xbitrightsignshift_shift[idx_0_2003431455]),
                .pad(M_xbitrightsignshift_pad[idx_0_2003431455]),
                .out(M_xbitrightsignshift_out[idx_0_2003431455])
            );
        end
    endgenerate
    
    
    always @* begin
        M_xbitleftshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitleftshift_shift = 1'h0;
        M_xbitleftshift_pad = 1'h0;
        shift = M_xbitleftshift_out[1'h0];
        M_xbitrightshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitrightshift_shift = 1'h0;
        M_xbitrightshift_pad = 1'h0;
        M_xbitrightsignshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitrightsignshift_pad = 1'h0;
        M_xbitrightsignshift_shift = 1'h0;
        for (RR_20258114_i = 0; RR_20258114_i < 3'h5; RR_20258114_i = RR_20258114_i + 1) begin
      R_20258114_i = (0) + RR_20258114_i * (1);
            if (R_20258114_i == 1'h0) begin
                M_xbitleftshift_a[R_20258114_i] = a;
                M_xbitleftshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitleftshift_pad[R_20258114_i] = 1'h0;
                M_xbitrightshift_a[R_20258114_i] = a;
                M_xbitrightshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitrightshift_pad[R_20258114_i] = 1'h0;
                M_xbitrightsignshift_a[R_20258114_i] = a;
                M_xbitrightsignshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitrightsignshift_pad[R_20258114_i] = a[5'h1f];
            end else begin
                M_xbitleftshift_a[R_20258114_i] = M_xbitleftshift_out[R_20258114_i - 1'h1];
                M_xbitleftshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitleftshift_pad[R_20258114_i] = 1'h0;
                M_xbitrightshift_a[R_20258114_i] = M_xbitrightshift_out[R_20258114_i - 1'h1];
                M_xbitrightshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitrightshift_pad[R_20258114_i] = 1'h0;
                M_xbitrightsignshift_a[R_20258114_i] = M_xbitrightsignshift_out[R_20258114_i - 1'h1];
                M_xbitrightsignshift_shift[R_20258114_i] = b[3'h4 - R_20258114_i];
                M_xbitrightsignshift_pad[R_20258114_i] = a[5'h1f];
            end
        end
        
        case (alufn[1'h1:1'h0])
            2'h0: begin
                shift = M_xbitleftshift_out[3'h4];
            end
            2'h1: begin
                shift = M_xbitrightshift_out[3'h4];
            end
            2'h3: begin
                shift = M_xbitrightsignshift_out[3'h4];
            end
            default: begin
                shift = 1'h0;
            end
        endcase
    end
    
    
endmodule