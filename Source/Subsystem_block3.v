// -------------------------------------------------------------
// 
// File Name: hdlsrc/FFTblock_FP_libblocks_full/Subsystem_block3.v
// Created: 2022-03-15 06:26:41
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem_block3
// Source Path: FFTblock_FP_libblocks_full/FFTblock_FP_libblocks/Butterfly_Stage1_13/Subsystem
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem_block3
          (In1,
           In2_re,
           In2_im,
           Out1_re,
           Out1_im);


  input   In1;  // ufix1
  input   signed [7:0] In2_re;  // sfix8_En2
  input   signed [7:0] In2_im;  // sfix8_En2
  output  signed [8:0] Out1_re;  // sfix9_En2
  output  signed [8:0] Out1_im;  // sfix9_En2


  wire Complex_to_Real_Imag1_out1;  // ufix1
  wire Complex_to_Real_Imag1_out2;  // ufix1
  wire signed [8:0] Sum5_add_cast;  // sfix9_En2
  wire signed [8:0] Sum5_add_cast_1;  // sfix9_En2
  wire signed [8:0] Sum5_out1;  // sfix9_En2
  wire signed [8:0] Product_in0;  // sfix9_En2
  wire signed [9:0] Product_cast;  // sfix10_En2
  wire signed [8:0] k1;  // sfix9_En2
  wire signed [1:0] Sum6_1;  // sfix2
  wire signed [1:0] Sum6_2;  // sfix2
  wire signed [1:0] Sum6_out1;  // sfix2
  wire signed [9:0] Product1_mul_temp;  // sfix10_En2
  wire signed [8:0] k2;  // sfix9_En2
  wire signed [8:0] Sum4_out1;  // sfix9_En2
  wire signed [1:0] Sum3_1;  // sfix2
  wire signed [1:0] Sum3_2;  // sfix2
  wire signed [1:0] Sum3_out1;  // sfix2
  wire signed [9:0] Product2_mul_temp;  // sfix10_En2
  wire signed [8:0] k3;  // sfix9_En2
  wire signed [8:0] Sum2_out1;  // sfix9_En2


  assign Complex_to_Real_Imag1_out1 = In1;
  assign Complex_to_Real_Imag1_out2 = 1'b0;



  assign Sum5_add_cast = {In2_re[7], In2_re};
  assign Sum5_add_cast_1 = {In2_im[7], In2_im};
  assign Sum5_out1 = Sum5_add_cast + Sum5_add_cast_1;



  assign Product_in0 = (Complex_to_Real_Imag1_out1 == 1'b1 ? Sum5_out1 :
              9'sb000000000);
  assign Product_cast = {Product_in0[8], Product_in0};
  assign k1 = Product_cast[8:0];



  assign Sum6_1 = {1'b0, Complex_to_Real_Imag1_out1};
  assign Sum6_2 = {1'b0, Complex_to_Real_Imag1_out2};
  assign Sum6_out1 = Sum6_1 + Sum6_2;



  assign Product1_mul_temp = Sum6_out1 * In2_im;
  assign k2 = Product1_mul_temp[8:0];



  assign Sum4_out1 = k1 - k2;



  assign Out1_re = Sum4_out1;

  assign Sum3_1 = {1'b0, Complex_to_Real_Imag1_out2};
  assign Sum3_2 = {1'b0, Complex_to_Real_Imag1_out1};
  assign Sum3_out1 = Sum3_1 - Sum3_2;



  assign Product2_mul_temp = Sum3_out1 * In2_re;
  assign k3 = Product2_mul_temp[8:0];



  assign Sum2_out1 = k3 + k1;



  assign Out1_im = Sum2_out1;

endmodule  // Subsystem_block3

