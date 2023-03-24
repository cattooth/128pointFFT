// -------------------------------------------------------------
// 
// File Name: hdlsrc/FFTblock_FP_libblocks_full/Butterfly_Stage1_48.v
// Created: 2022-03-15 06:26:41
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Butterfly_Stage1_48
// Source Path: FFTblock_FP_libblocks_full/FFTblock_FP_libblocks/Butterfly_Stage1_48
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Butterfly_Stage1_48
          (clk,
           reset,

           A_m_re,
           A_m_im,
           W,
           B_m_N_2_re,
           B_m_N_2_im,
           X_m_re,
           X_m_im,
           X_m_N_2_re,
           X_m_N_2_im);


  input   clk;
  input   reset;

  input   signed [7:0] A_m_re;  // sfix8_En2
  input   signed [7:0] A_m_im;  // sfix8_En2
  input   W;  // ufix1
  input   signed [7:0] B_m_N_2_re;  // sfix8_En2
  input   signed [7:0] B_m_N_2_im;  // sfix8_En2
  output  signed [8:0] X_m_re;  // sfix9_En2
  output  signed [8:0] X_m_im;  // sfix9_En2
  output  signed [9:0] X_m_N_2_re;  // sfix10_En2
  output  signed [9:0] X_m_N_2_im;  // sfix10_En2


  wire signed [8:0] Subsystem_out1_re;  // sfix9_En2
  wire signed [8:0] Subsystem_out1_im;  // sfix9_En2
  wire signed [8:0] Sum_add_cast;  // sfix9_En2
  wire signed [8:0] Sum_add_cast_1;  // sfix9_En2
  wire signed [8:0] Sum_out1_re;  // sfix9_En2
  wire signed [8:0] Sum_out1_im;  // sfix9_En2
  reg signed [8:0] Delay_out1_re;  // sfix9_En2
  reg signed [8:0] Delay_out1_im;  // sfix9_En2
  wire signed [9:0] Sum1_sub_cast;  // sfix10_En2
  wire signed [9:0] Sum1_sub_cast_1;  // sfix10_En2
  wire signed [9:0] Sum1_sub_cast_2;  // sfix10_En2
  wire signed [9:0] Sum1_sub_cast_3;  // sfix10_En2
  wire signed [9:0] Sum1_out1_re;  // sfix10_En2
  wire signed [9:0] Sum1_out1_im;  // sfix10_En2
  reg signed [9:0] Delay1_out1_re;  // sfix10_En2
  reg signed [9:0] Delay1_out1_im;  // sfix10_En2


  Subsystem_block41 u_Subsystem (.In1(W),  // ufix1
                                 .In2_re(B_m_N_2_re),  // sfix8_En2
                                 .In2_im(B_m_N_2_im),  // sfix8_En2
                                 .Out1_re(Subsystem_out1_re),  // sfix9_En2
                                 .Out1_im(Subsystem_out1_im)  // sfix9_En2
                                 );

  assign Sum_add_cast = {A_m_re[7], A_m_re};
  assign Sum_out1_re = Sum_add_cast + Subsystem_out1_re;
  assign Sum_add_cast_1 = {A_m_im[7], A_m_im};
  assign Sum_out1_im = Sum_add_cast_1 + Subsystem_out1_im;



  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1_re <= 9'sb000000000;
        Delay_out1_im <= 9'sb000000000;
      end
      else begin

          Delay_out1_re <= Sum_out1_re;
          Delay_out1_im <= Sum_out1_im;

      end
    end



  assign X_m_re = Delay_out1_re;

  assign X_m_im = Delay_out1_im;

  assign Sum1_sub_cast = {{2{A_m_re[7]}}, A_m_re};
  assign Sum1_sub_cast_1 = {Subsystem_out1_re[8], Subsystem_out1_re};
  assign Sum1_out1_re = Sum1_sub_cast - Sum1_sub_cast_1;
  assign Sum1_sub_cast_2 = {{2{A_m_im[7]}}, A_m_im};
  assign Sum1_sub_cast_3 = {Subsystem_out1_im[8], Subsystem_out1_im};
  assign Sum1_out1_im = Sum1_sub_cast_2 - Sum1_sub_cast_3;



  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1_re <= 10'sb0000000000;
        Delay1_out1_im <= 10'sb0000000000;
      end
      else begin

          Delay1_out1_re <= Sum1_out1_re;
          Delay1_out1_im <= Sum1_out1_im;

      end
    end



  assign X_m_N_2_re = Delay1_out1_re;

  assign X_m_N_2_im = Delay1_out1_im;

endmodule  // Butterfly_Stage1_48

