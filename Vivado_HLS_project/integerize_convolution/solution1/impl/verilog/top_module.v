// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top_module,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.429000,HLS_SYN_LAT=25033225,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=796,HLS_SYN_LUT=1202,HLS_VERSION=2019_1}" *)

module top_module (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        kernel_V_address0,
        kernel_V_ce0,
        kernel_V_q0,
        alpha_kernel,
        ap_return
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [7:0] output_r_d0;
output  [17:0] input_r_address0;
output   input_r_ce0;
input  [7:0] input_r_q0;
output  [4:0] kernel_V_address0;
output   kernel_V_ce0;
input  [3:0] kernel_V_q0;
input  [31:0] alpha_kernel;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg output_r_we0;
reg input_r_ce0;
reg kernel_V_ce0;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] zext_ln15_fu_219_p1;
reg   [9:0] zext_ln15_reg_529;
wire    ap_CS_fsm_state2;
wire   [8:0] i_fu_229_p2;
reg   [8:0] i_reg_537;
wire   [18:0] sub_ln30_fu_259_p2;
reg   [18:0] sub_ln30_reg_542;
wire   [0:0] icmp_ln11_fu_223_p2;
wire   [9:0] zext_ln16_fu_265_p1;
reg   [9:0] zext_ln16_reg_547;
wire    ap_CS_fsm_state3;
wire   [8:0] j_fu_275_p2;
reg   [8:0] j_reg_555;
wire   [2:0] k_fu_287_p2;
reg   [2:0] k_reg_563;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln215_fu_309_p2;
reg   [5:0] add_ln215_reg_568;
wire   [0:0] icmp_ln19_fu_281_p2;
wire   [19:0] zext_ln21_fu_323_p1;
reg   [19:0] zext_ln21_reg_573;
wire   [18:0] add_ln30_fu_331_p2;
reg   [18:0] add_ln30_reg_578;
wire   [2:0] l_fu_342_p2;
reg   [2:0] l_reg_586;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln21_fu_336_p2;
wire   [9:0] y_2_fu_376_p2;
reg   [9:0] y_2_reg_601;
wire   [9:0] x_1_fu_382_p2;
reg   [7:0] input_load_reg_611;
wire    ap_CS_fsm_state6;
reg  signed [3:0] kernel_V_load_reg_616;
wire  signed [31:0] grp_fu_516_p3;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_215_p1;
reg   [31:0] tmp_reg_626;
wire    ap_CS_fsm_state12;
wire   [22:0] tmp_V_1_fu_408_p1;
reg   [22:0] tmp_V_1_reg_631;
wire    ap_CS_fsm_state16;
wire   [8:0] add_ln339_fu_416_p2;
reg   [8:0] add_ln339_reg_636;
reg   [0:0] isNeg_reg_641;
wire   [7:0] sub_ln1311_fu_430_p2;
reg   [7:0] sub_ln1311_reg_647;
reg   [8:0] x_reg_123;
wire   [0:0] icmp_ln13_fu_269_p2;
reg   [8:0] y_reg_134;
wire    ap_CS_fsm_state17;
reg   [31:0] convolute_2_reg_146;
reg   [9:0] x_0_reg_158;
reg   [2:0] k_0_reg_168;
reg   [31:0] convolute_3_reg_179;
reg   [9:0] y_1_reg_191;
reg   [2:0] l_0_reg_200;
wire   [63:0] zext_ln215_3_fu_357_p1;
wire   [63:0] zext_ln24_1_fu_371_p1;
wire  signed [63:0] sext_ln30_fu_512_p1;
wire    ap_CS_fsm_state13;
wire   [17:0] tmp_1_fu_235_p3;
wire   [10:0] tmp_2_fu_247_p3;
wire   [18:0] zext_ln30_fu_243_p1;
wire   [18:0] zext_ln30_1_fu_255_p1;
wire   [4:0] tmp_5_fu_297_p3;
wire   [5:0] zext_ln215_fu_293_p1;
wire   [5:0] zext_ln215_1_fu_305_p1;
wire   [18:0] tmp_6_fu_315_p3;
wire   [18:0] zext_ln30_2_fu_327_p1;
wire   [5:0] zext_ln215_2_fu_348_p1;
wire   [5:0] add_ln215_1_fu_352_p2;
wire   [19:0] zext_ln24_fu_362_p1;
wire   [19:0] add_ln24_fu_366_p2;
wire   [31:0] grp_fu_211_p2;
wire   [31:0] p_Val2_s_fu_394_p1;
wire   [7:0] tmp_V_fu_398_p4;
wire   [8:0] zext_ln339_fu_412_p1;
wire   [24:0] mantissa_V_fu_436_p4;
wire  signed [8:0] sext_ln1311_fu_449_p1;
wire  signed [8:0] ush_fu_452_p3;
wire  signed [31:0] sext_ln1311_1_fu_458_p1;
wire  signed [24:0] sext_ln1311_2_fu_462_p1;
wire   [54:0] zext_ln682_fu_445_p1;
wire   [54:0] zext_ln1287_fu_466_p1;
wire   [24:0] r_V_fu_470_p2;
wire   [0:0] tmp_8_fu_482_p3;
wire   [54:0] r_V_1_fu_476_p2;
wire   [7:0] zext_ln662_fu_490_p1;
wire   [7:0] tmp_4_fu_494_p4;
wire   [7:0] grp_fu_516_p1;
reg   [16:0] ap_NS_fsm;
wire   [11:0] grp_fu_516_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
end

top_module_fmul_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_module_fmul_3bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_reg_626),
    .din1(alpha_kernel),
    .ce(1'b1),
    .dout(grp_fu_211_p2)
);

top_module_sitofpcud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_module_sitofpcud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(convolute_2_reg_146),
    .ce(1'b1),
    .dout(grp_fu_215_p1)
);

top_module_mac_mudEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 4 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_module_mac_mudEe_U3(
    .din0(kernel_V_load_reg_616),
    .din1(grp_fu_516_p1),
    .din2(convolute_3_reg_179),
    .dout(grp_fu_516_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln13_fu_269_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        convolute_2_reg_146 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln21_fu_336_p2 == 1'd1))) begin
        convolute_2_reg_146 <= convolute_3_reg_179;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_281_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        convolute_3_reg_179 <= convolute_2_reg_146;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        convolute_3_reg_179 <= grp_fu_516_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln13_fu_269_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_0_reg_168 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln21_fu_336_p2 == 1'd1))) begin
        k_0_reg_168 <= k_reg_563;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_281_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        l_0_reg_200 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        l_0_reg_200 <= l_reg_586;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln13_fu_269_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        x_0_reg_158 <= zext_ln15_reg_529;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln21_fu_336_p2 == 1'd1))) begin
        x_0_reg_158 <= x_1_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln13_fu_269_p2 == 1'd1))) begin
        x_reg_123 <= i_reg_537;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_reg_123 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_281_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        y_1_reg_191 <= zext_ln16_reg_547;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        y_1_reg_191 <= y_2_reg_601;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        y_reg_134 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        y_reg_134 <= j_reg_555;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_281_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln215_reg_568 <= add_ln215_fu_309_p2;
        zext_ln21_reg_573[18 : 9] <= zext_ln21_fu_323_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_281_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln30_reg_578 <= add_ln30_fu_331_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln339_reg_636 <= add_ln339_fu_416_p2;
        isNeg_reg_641 <= add_ln339_fu_416_p2[32'd8];
        sub_ln1311_reg_647 <= sub_ln1311_fu_430_p2;
        tmp_V_1_reg_631 <= tmp_V_1_fu_408_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_537 <= i_fu_229_p2;
        zext_ln15_reg_529[8 : 0] <= zext_ln15_fu_219_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_load_reg_611 <= input_r_q0;
        kernel_V_load_reg_616 <= kernel_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_555 <= j_fu_275_p2;
        zext_ln16_reg_547[8 : 0] <= zext_ln16_fu_265_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_reg_563 <= k_fu_287_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_reg_586 <= l_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln30_reg_542[18 : 2] <= sub_ln30_fu_259_p2[18 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_reg_626 <= grp_fu_215_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_336_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        y_2_reg_601 <= y_2_fu_376_p2;
    end
end

always @ (*) begin
    if (((icmp_ln11_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln11_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        kernel_V_ce0 = 1'b1;
    end else begin
        kernel_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln11_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln13_fu_269_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln19_fu_281_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln21_fu_336_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln215_1_fu_352_p2 = (add_ln215_reg_568 + zext_ln215_2_fu_348_p1);

assign add_ln215_fu_309_p2 = (zext_ln215_fu_293_p1 + zext_ln215_1_fu_305_p1);

assign add_ln24_fu_366_p2 = (zext_ln21_reg_573 + zext_ln24_fu_362_p1);

assign add_ln30_fu_331_p2 = (zext_ln30_2_fu_327_p1 + sub_ln30_reg_542);

assign add_ln339_fu_416_p2 = ($signed(9'd385) + $signed(zext_ln339_fu_412_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_return = 32'd0;

assign grp_fu_516_p1 = grp_fu_516_p10;

assign grp_fu_516_p10 = input_load_reg_611;

assign i_fu_229_p2 = (x_reg_123 + 9'd1);

assign icmp_ln11_fu_223_p2 = ((x_reg_123 == 9'd508) ? 1'b1 : 1'b0);

assign icmp_ln13_fu_269_p2 = ((y_reg_134 == 9'd508) ? 1'b1 : 1'b0);

assign icmp_ln19_fu_281_p2 = ((k_0_reg_168 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln21_fu_336_p2 = ((l_0_reg_200 == 3'd5) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln24_1_fu_371_p1;

assign j_fu_275_p2 = (y_reg_134 + 9'd1);

assign k_fu_287_p2 = (k_0_reg_168 + 3'd1);

assign kernel_V_address0 = zext_ln215_3_fu_357_p1;

assign l_fu_342_p2 = (l_0_reg_200 + 3'd1);

assign mantissa_V_fu_436_p4 = {{{{1'd1}, {tmp_V_1_reg_631}}}, {1'd0}};

assign output_r_address0 = sext_ln30_fu_512_p1;

assign output_r_d0 = ((isNeg_reg_641[0:0] === 1'b1) ? zext_ln662_fu_490_p1 : tmp_4_fu_494_p4);

assign p_Val2_s_fu_394_p1 = grp_fu_211_p2;

assign r_V_1_fu_476_p2 = zext_ln682_fu_445_p1 << zext_ln1287_fu_466_p1;

assign r_V_fu_470_p2 = mantissa_V_fu_436_p4 >> sext_ln1311_2_fu_462_p1;

assign sext_ln1311_1_fu_458_p1 = ush_fu_452_p3;

assign sext_ln1311_2_fu_462_p1 = ush_fu_452_p3;

assign sext_ln1311_fu_449_p1 = $signed(sub_ln1311_reg_647);

assign sext_ln30_fu_512_p1 = $signed(add_ln30_reg_578);

assign sub_ln1311_fu_430_p2 = (8'd127 - tmp_V_fu_398_p4);

assign sub_ln30_fu_259_p2 = (zext_ln30_fu_243_p1 - zext_ln30_1_fu_255_p1);

assign tmp_1_fu_235_p3 = {{x_reg_123}, {9'd0}};

assign tmp_2_fu_247_p3 = {{x_reg_123}, {2'd0}};

assign tmp_4_fu_494_p4 = {{r_V_1_fu_476_p2[31:24]}};

assign tmp_5_fu_297_p3 = {{k_0_reg_168}, {2'd0}};

assign tmp_6_fu_315_p3 = {{x_0_reg_158}, {9'd0}};

assign tmp_8_fu_482_p3 = r_V_fu_470_p2[32'd24];

assign tmp_V_1_fu_408_p1 = p_Val2_s_fu_394_p1[22:0];

assign tmp_V_fu_398_p4 = {{p_Val2_s_fu_394_p1[30:23]}};

assign ush_fu_452_p3 = ((isNeg_reg_641[0:0] === 1'b1) ? sext_ln1311_fu_449_p1 : add_ln339_reg_636);

assign x_1_fu_382_p2 = (x_0_reg_158 + 10'd1);

assign y_2_fu_376_p2 = (y_1_reg_191 + 10'd1);

assign zext_ln1287_fu_466_p1 = $unsigned(sext_ln1311_1_fu_458_p1);

assign zext_ln15_fu_219_p1 = x_reg_123;

assign zext_ln16_fu_265_p1 = y_reg_134;

assign zext_ln215_1_fu_305_p1 = tmp_5_fu_297_p3;

assign zext_ln215_2_fu_348_p1 = l_0_reg_200;

assign zext_ln215_3_fu_357_p1 = add_ln215_1_fu_352_p2;

assign zext_ln215_fu_293_p1 = k_0_reg_168;

assign zext_ln21_fu_323_p1 = tmp_6_fu_315_p3;

assign zext_ln24_1_fu_371_p1 = add_ln24_fu_366_p2;

assign zext_ln24_fu_362_p1 = y_1_reg_191;

assign zext_ln30_1_fu_255_p1 = tmp_2_fu_247_p3;

assign zext_ln30_2_fu_327_p1 = y_reg_134;

assign zext_ln30_fu_243_p1 = tmp_1_fu_235_p3;

assign zext_ln339_fu_412_p1 = tmp_V_fu_398_p4;

assign zext_ln662_fu_490_p1 = tmp_8_fu_482_p3;

assign zext_ln682_fu_445_p1 = mantissa_V_fu_436_p4;

always @ (posedge ap_clk) begin
    zext_ln15_reg_529[9] <= 1'b0;
    sub_ln30_reg_542[1:0] <= 2'b00;
    zext_ln16_reg_547[9] <= 1'b0;
    zext_ln21_reg_573[8:0] <= 9'b000000000;
    zext_ln21_reg_573[19] <= 1'b0;
end

endmodule //top_module
