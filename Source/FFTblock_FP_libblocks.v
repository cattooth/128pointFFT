// Project Name:		"N-point FFT"
// Author:				"N. V. Kvashina"
//
// File Description:	"HDL description of a main module for N-point FFT (N=128)"
//

`timescale 1 ns / 1 ns

module FFTblock_FP_libblocks
          (clk,
           reset,

           In1_re_0,
           In1_re_1,
           In1_re_2,
           In1_re_3,
           In1_re_4,
           In1_re_5,
           In1_re_6,
           In1_re_7,
           In1_re_8,
           In1_re_9,
           In1_re_10,
           In1_re_11,
           In1_re_12,
           In1_re_13,
           In1_re_14,
           In1_re_15,
           In1_re_16,
           In1_re_17,
           In1_re_18,
           In1_re_19,
           In1_re_20,
           In1_re_21,
           In1_re_22,
           In1_re_23,
           In1_re_24,
           In1_re_25,
           In1_re_26,
           In1_re_27,
           In1_re_28,
           In1_re_29,
           In1_re_30,
           In1_re_31,
           In1_re_32,
           In1_re_33,
           In1_re_34,
           In1_re_35,
           In1_re_36,
           In1_re_37,
           In1_re_38,
           In1_re_39,
           In1_re_40,
           In1_re_41,
           In1_re_42,
           In1_re_43,
           In1_re_44,
           In1_re_45,
           In1_re_46,
           In1_re_47,
           In1_re_48,
           In1_re_49,
           In1_re_50,
           In1_re_51,
           In1_re_52,
           In1_re_53,
           In1_re_54,
           In1_re_55,
           In1_re_56,
           In1_re_57,
           In1_re_58,
           In1_re_59,
           In1_re_60,
           In1_re_61,
           In1_re_62,
           In1_re_63,
           In1_re_64,
           In1_re_65,
           In1_re_66,
           In1_re_67,
           In1_re_68,
           In1_re_69,
           In1_re_70,
           In1_re_71,
           In1_re_72,
           In1_re_73,
           In1_re_74,
           In1_re_75,
           In1_re_76,
           In1_re_77,
           In1_re_78,
           In1_re_79,
           In1_re_80,
           In1_re_81,
           In1_re_82,
           In1_re_83,
           In1_re_84,
           In1_re_85,
           In1_re_86,
           In1_re_87,
           In1_re_88,
           In1_re_89,
           In1_re_90,
           In1_re_91,
           In1_re_92,
           In1_re_93,
           In1_re_94,
           In1_re_95,
           In1_re_96,
           In1_re_97,
           In1_re_98,
           In1_re_99,
           In1_re_100,
           In1_re_101,
           In1_re_102,
           In1_re_103,
           In1_re_104,
           In1_re_105,
           In1_re_106,
           In1_re_107,
           In1_re_108,
           In1_re_109,
           In1_re_110,
           In1_re_111,
           In1_re_112,
           In1_re_113,
           In1_re_114,
           In1_re_115,
           In1_re_116,
           In1_re_117,
           In1_re_118,
           In1_re_119,
           In1_re_120,
           In1_re_121,
           In1_re_122,
           In1_re_123,
           In1_re_124,
           In1_re_125,
           In1_re_126,
           In1_re_127,
           In1_im_0,
           In1_im_1,
           In1_im_2,
           In1_im_3,
           In1_im_4,
           In1_im_5,
           In1_im_6,
           In1_im_7,
           In1_im_8,
           In1_im_9,
           In1_im_10,
           In1_im_11,
           In1_im_12,
           In1_im_13,
           In1_im_14,
           In1_im_15,
           In1_im_16,
           In1_im_17,
           In1_im_18,
           In1_im_19,
           In1_im_20,
           In1_im_21,
           In1_im_22,
           In1_im_23,
           In1_im_24,
           In1_im_25,
           In1_im_26,
           In1_im_27,
           In1_im_28,
           In1_im_29,
           In1_im_30,
           In1_im_31,
           In1_im_32,
           In1_im_33,
           In1_im_34,
           In1_im_35,
           In1_im_36,
           In1_im_37,
           In1_im_38,
           In1_im_39,
           In1_im_40,
           In1_im_41,
           In1_im_42,
           In1_im_43,
           In1_im_44,
           In1_im_45,
           In1_im_46,
           In1_im_47,
           In1_im_48,
           In1_im_49,
           In1_im_50,
           In1_im_51,
           In1_im_52,
           In1_im_53,
           In1_im_54,
           In1_im_55,
           In1_im_56,
           In1_im_57,
           In1_im_58,
           In1_im_59,
           In1_im_60,
           In1_im_61,
           In1_im_62,
           In1_im_63,
           In1_im_64,
           In1_im_65,
           In1_im_66,
           In1_im_67,
           In1_im_68,
           In1_im_69,
           In1_im_70,
           In1_im_71,
           In1_im_72,
           In1_im_73,
           In1_im_74,
           In1_im_75,
           In1_im_76,
           In1_im_77,
           In1_im_78,
           In1_im_79,
           In1_im_80,
           In1_im_81,
           In1_im_82,
           In1_im_83,
           In1_im_84,
           In1_im_85,
           In1_im_86,
           In1_im_87,
           In1_im_88,
           In1_im_89,
           In1_im_90,
           In1_im_91,
           In1_im_92,
           In1_im_93,
           In1_im_94,
           In1_im_95,
           In1_im_96,
           In1_im_97,
           In1_im_98,
           In1_im_99,
           In1_im_100,
           In1_im_101,
           In1_im_102,
           In1_im_103,
           In1_im_104,
           In1_im_105,
           In1_im_106,
           In1_im_107,
           In1_im_108,
           In1_im_109,
           In1_im_110,
           In1_im_111,
           In1_im_112,
           In1_im_113,
           In1_im_114,
           In1_im_115,
           In1_im_116,
           In1_im_117,
           In1_im_118,
           In1_im_119,
           In1_im_120,
           In1_im_121,
           In1_im_122,
           In1_im_123,
           In1_im_124,
           In1_im_125,
           In1_im_126,
           In1_im_127,

           Out1_re_0,
           Out1_re_1,
           Out1_re_2,
           Out1_re_3,
           Out1_re_4,
           Out1_re_5,
           Out1_re_6,
           Out1_re_7,
           Out1_re_8,
           Out1_re_9,
           Out1_re_10,
           Out1_re_11,
           Out1_re_12,
           Out1_re_13,
           Out1_re_14,
           Out1_re_15,
           Out1_re_16,
           Out1_re_17,
           Out1_re_18,
           Out1_re_19,
           Out1_re_20,
           Out1_re_21,
           Out1_re_22,
           Out1_re_23,
           Out1_re_24,
           Out1_re_25,
           Out1_re_26,
           Out1_re_27,
           Out1_re_28,
           Out1_re_29,
           Out1_re_30,
           Out1_re_31,
           Out1_re_32,
           Out1_re_33,
           Out1_re_34,
           Out1_re_35,
           Out1_re_36,
           Out1_re_37,
           Out1_re_38,
           Out1_re_39,
           Out1_re_40,
           Out1_re_41,
           Out1_re_42,
           Out1_re_43,
           Out1_re_44,
           Out1_re_45,
           Out1_re_46,
           Out1_re_47,
           Out1_re_48,
           Out1_re_49,
           Out1_re_50,
           Out1_re_51,
           Out1_re_52,
           Out1_re_53,
           Out1_re_54,
           Out1_re_55,
           Out1_re_56,
           Out1_re_57,
           Out1_re_58,
           Out1_re_59,
           Out1_re_60,
           Out1_re_61,
           Out1_re_62,
           Out1_re_63,
           Out1_re_64,
           Out1_re_65,
           Out1_re_66,
           Out1_re_67,
           Out1_re_68,
           Out1_re_69,
           Out1_re_70,
           Out1_re_71,
           Out1_re_72,
           Out1_re_73,
           Out1_re_74,
           Out1_re_75,
           Out1_re_76,
           Out1_re_77,
           Out1_re_78,
           Out1_re_79,
           Out1_re_80,
           Out1_re_81,
           Out1_re_82,
           Out1_re_83,
           Out1_re_84,
           Out1_re_85,
           Out1_re_86,
           Out1_re_87,
           Out1_re_88,
           Out1_re_89,
           Out1_re_90,
           Out1_re_91,
           Out1_re_92,
           Out1_re_93,
           Out1_re_94,
           Out1_re_95,
           Out1_re_96,
           Out1_re_97,
           Out1_re_98,
           Out1_re_99,
           Out1_re_100,
           Out1_re_101,
           Out1_re_102,
           Out1_re_103,
           Out1_re_104,
           Out1_re_105,
           Out1_re_106,
           Out1_re_107,
           Out1_re_108,
           Out1_re_109,
           Out1_re_110,
           Out1_re_111,
           Out1_re_112,
           Out1_re_113,
           Out1_re_114,
           Out1_re_115,
           Out1_re_116,
           Out1_re_117,
           Out1_re_118,
           Out1_re_119,
           Out1_re_120,
           Out1_re_121,
           Out1_re_122,
           Out1_re_123,
           Out1_re_124,
           Out1_re_125,
           Out1_re_126,
           Out1_re_127,
           Out1_im_0,
           Out1_im_1,
           Out1_im_2,
           Out1_im_3,
           Out1_im_4,
           Out1_im_5,
           Out1_im_6,
           Out1_im_7,
           Out1_im_8,
           Out1_im_9,
           Out1_im_10,
           Out1_im_11,
           Out1_im_12,
           Out1_im_13,
           Out1_im_14,
           Out1_im_15,
           Out1_im_16,
           Out1_im_17,
           Out1_im_18,
           Out1_im_19,
           Out1_im_20,
           Out1_im_21,
           Out1_im_22,
           Out1_im_23,
           Out1_im_24,
           Out1_im_25,
           Out1_im_26,
           Out1_im_27,
           Out1_im_28,
           Out1_im_29,
           Out1_im_30,
           Out1_im_31,
           Out1_im_32,
           Out1_im_33,
           Out1_im_34,
           Out1_im_35,
           Out1_im_36,
           Out1_im_37,
           Out1_im_38,
           Out1_im_39,
           Out1_im_40,
           Out1_im_41,
           Out1_im_42,
           Out1_im_43,
           Out1_im_44,
           Out1_im_45,
           Out1_im_46,
           Out1_im_47,
           Out1_im_48,
           Out1_im_49,
           Out1_im_50,
           Out1_im_51,
           Out1_im_52,
           Out1_im_53,
           Out1_im_54,
           Out1_im_55,
           Out1_im_56,
           Out1_im_57,
           Out1_im_58,
           Out1_im_59,
           Out1_im_60,
           Out1_im_61,
           Out1_im_62,
           Out1_im_63,
           Out1_im_64,
           Out1_im_65,
           Out1_im_66,
           Out1_im_67,
           Out1_im_68,
           Out1_im_69,
           Out1_im_70,
           Out1_im_71,
           Out1_im_72,
           Out1_im_73,
           Out1_im_74,
           Out1_im_75,
           Out1_im_76,
           Out1_im_77,
           Out1_im_78,
           Out1_im_79,
           Out1_im_80,
           Out1_im_81,
           Out1_im_82,
           Out1_im_83,
           Out1_im_84,
           Out1_im_85,
           Out1_im_86,
           Out1_im_87,
           Out1_im_88,
           Out1_im_89,
           Out1_im_90,
           Out1_im_91,
           Out1_im_92,
           Out1_im_93,
           Out1_im_94,
           Out1_im_95,
           Out1_im_96,
           Out1_im_97,
           Out1_im_98,
           Out1_im_99,
           Out1_im_100,
           Out1_im_101,
           Out1_im_102,
           Out1_im_103,
           Out1_im_104,
           Out1_im_105,
           Out1_im_106,
           Out1_im_107,
           Out1_im_108,
           Out1_im_109,
           Out1_im_110,
           Out1_im_111,
           Out1_im_112,
           Out1_im_113,
           Out1_im_114,
           Out1_im_115,
           Out1_im_116,
           Out1_im_117,
           Out1_im_118,
           Out1_im_119,
           Out1_im_120,
           Out1_im_121,
           Out1_im_122,
           Out1_im_123,
           Out1_im_124,
           Out1_im_125,
           Out1_im_126,
           Out1_im_127);


  input   clk;
  input   reset;

  input   signed [7:0] In1_re_0;  // sfix8_En2
  input   signed [7:0] In1_re_1;  // sfix8_En2
  input   signed [7:0] In1_re_2;  // sfix8_En2
  input   signed [7:0] In1_re_3;  // sfix8_En2
  input   signed [7:0] In1_re_4;  // sfix8_En2
  input   signed [7:0] In1_re_5;  // sfix8_En2
  input   signed [7:0] In1_re_6;  // sfix8_En2
  input   signed [7:0] In1_re_7;  // sfix8_En2
  input   signed [7:0] In1_re_8;  // sfix8_En2
  input   signed [7:0] In1_re_9;  // sfix8_En2
  input   signed [7:0] In1_re_10;  // sfix8_En2
  input   signed [7:0] In1_re_11;  // sfix8_En2
  input   signed [7:0] In1_re_12;  // sfix8_En2
  input   signed [7:0] In1_re_13;  // sfix8_En2
  input   signed [7:0] In1_re_14;  // sfix8_En2
  input   signed [7:0] In1_re_15;  // sfix8_En2
  input   signed [7:0] In1_re_16;  // sfix8_En2
  input   signed [7:0] In1_re_17;  // sfix8_En2
  input   signed [7:0] In1_re_18;  // sfix8_En2
  input   signed [7:0] In1_re_19;  // sfix8_En2
  input   signed [7:0] In1_re_20;  // sfix8_En2
  input   signed [7:0] In1_re_21;  // sfix8_En2
  input   signed [7:0] In1_re_22;  // sfix8_En2
  input   signed [7:0] In1_re_23;  // sfix8_En2
  input   signed [7:0] In1_re_24;  // sfix8_En2
  input   signed [7:0] In1_re_25;  // sfix8_En2
  input   signed [7:0] In1_re_26;  // sfix8_En2
  input   signed [7:0] In1_re_27;  // sfix8_En2
  input   signed [7:0] In1_re_28;  // sfix8_En2
  input   signed [7:0] In1_re_29;  // sfix8_En2
  input   signed [7:0] In1_re_30;  // sfix8_En2
  input   signed [7:0] In1_re_31;  // sfix8_En2
  input   signed [7:0] In1_re_32;  // sfix8_En2
  input   signed [7:0] In1_re_33;  // sfix8_En2
  input   signed [7:0] In1_re_34;  // sfix8_En2
  input   signed [7:0] In1_re_35;  // sfix8_En2
  input   signed [7:0] In1_re_36;  // sfix8_En2
  input   signed [7:0] In1_re_37;  // sfix8_En2
  input   signed [7:0] In1_re_38;  // sfix8_En2
  input   signed [7:0] In1_re_39;  // sfix8_En2
  input   signed [7:0] In1_re_40;  // sfix8_En2
  input   signed [7:0] In1_re_41;  // sfix8_En2
  input   signed [7:0] In1_re_42;  // sfix8_En2
  input   signed [7:0] In1_re_43;  // sfix8_En2
  input   signed [7:0] In1_re_44;  // sfix8_En2
  input   signed [7:0] In1_re_45;  // sfix8_En2
  input   signed [7:0] In1_re_46;  // sfix8_En2
  input   signed [7:0] In1_re_47;  // sfix8_En2
  input   signed [7:0] In1_re_48;  // sfix8_En2
  input   signed [7:0] In1_re_49;  // sfix8_En2
  input   signed [7:0] In1_re_50;  // sfix8_En2
  input   signed [7:0] In1_re_51;  // sfix8_En2
  input   signed [7:0] In1_re_52;  // sfix8_En2
  input   signed [7:0] In1_re_53;  // sfix8_En2
  input   signed [7:0] In1_re_54;  // sfix8_En2
  input   signed [7:0] In1_re_55;  // sfix8_En2
  input   signed [7:0] In1_re_56;  // sfix8_En2
  input   signed [7:0] In1_re_57;  // sfix8_En2
  input   signed [7:0] In1_re_58;  // sfix8_En2
  input   signed [7:0] In1_re_59;  // sfix8_En2
  input   signed [7:0] In1_re_60;  // sfix8_En2
  input   signed [7:0] In1_re_61;  // sfix8_En2
  input   signed [7:0] In1_re_62;  // sfix8_En2
  input   signed [7:0] In1_re_63;  // sfix8_En2
  input   signed [7:0] In1_re_64;  // sfix8_En2
  input   signed [7:0] In1_re_65;  // sfix8_En2
  input   signed [7:0] In1_re_66;  // sfix8_En2
  input   signed [7:0] In1_re_67;  // sfix8_En2
  input   signed [7:0] In1_re_68;  // sfix8_En2
  input   signed [7:0] In1_re_69;  // sfix8_En2
  input   signed [7:0] In1_re_70;  // sfix8_En2
  input   signed [7:0] In1_re_71;  // sfix8_En2
  input   signed [7:0] In1_re_72;  // sfix8_En2
  input   signed [7:0] In1_re_73;  // sfix8_En2
  input   signed [7:0] In1_re_74;  // sfix8_En2
  input   signed [7:0] In1_re_75;  // sfix8_En2
  input   signed [7:0] In1_re_76;  // sfix8_En2
  input   signed [7:0] In1_re_77;  // sfix8_En2
  input   signed [7:0] In1_re_78;  // sfix8_En2
  input   signed [7:0] In1_re_79;  // sfix8_En2
  input   signed [7:0] In1_re_80;  // sfix8_En2
  input   signed [7:0] In1_re_81;  // sfix8_En2
  input   signed [7:0] In1_re_82;  // sfix8_En2
  input   signed [7:0] In1_re_83;  // sfix8_En2
  input   signed [7:0] In1_re_84;  // sfix8_En2
  input   signed [7:0] In1_re_85;  // sfix8_En2
  input   signed [7:0] In1_re_86;  // sfix8_En2
  input   signed [7:0] In1_re_87;  // sfix8_En2
  input   signed [7:0] In1_re_88;  // sfix8_En2
  input   signed [7:0] In1_re_89;  // sfix8_En2
  input   signed [7:0] In1_re_90;  // sfix8_En2
  input   signed [7:0] In1_re_91;  // sfix8_En2
  input   signed [7:0] In1_re_92;  // sfix8_En2
  input   signed [7:0] In1_re_93;  // sfix8_En2
  input   signed [7:0] In1_re_94;  // sfix8_En2
  input   signed [7:0] In1_re_95;  // sfix8_En2
  input   signed [7:0] In1_re_96;  // sfix8_En2
  input   signed [7:0] In1_re_97;  // sfix8_En2
  input   signed [7:0] In1_re_98;  // sfix8_En2
  input   signed [7:0] In1_re_99;  // sfix8_En2
  input   signed [7:0] In1_re_100;  // sfix8_En2
  input   signed [7:0] In1_re_101;  // sfix8_En2
  input   signed [7:0] In1_re_102;  // sfix8_En2
  input   signed [7:0] In1_re_103;  // sfix8_En2
  input   signed [7:0] In1_re_104;  // sfix8_En2
  input   signed [7:0] In1_re_105;  // sfix8_En2
  input   signed [7:0] In1_re_106;  // sfix8_En2
  input   signed [7:0] In1_re_107;  // sfix8_En2
  input   signed [7:0] In1_re_108;  // sfix8_En2
  input   signed [7:0] In1_re_109;  // sfix8_En2
  input   signed [7:0] In1_re_110;  // sfix8_En2
  input   signed [7:0] In1_re_111;  // sfix8_En2
  input   signed [7:0] In1_re_112;  // sfix8_En2
  input   signed [7:0] In1_re_113;  // sfix8_En2
  input   signed [7:0] In1_re_114;  // sfix8_En2
  input   signed [7:0] In1_re_115;  // sfix8_En2
  input   signed [7:0] In1_re_116;  // sfix8_En2
  input   signed [7:0] In1_re_117;  // sfix8_En2
  input   signed [7:0] In1_re_118;  // sfix8_En2
  input   signed [7:0] In1_re_119;  // sfix8_En2
  input   signed [7:0] In1_re_120;  // sfix8_En2
  input   signed [7:0] In1_re_121;  // sfix8_En2
  input   signed [7:0] In1_re_122;  // sfix8_En2
  input   signed [7:0] In1_re_123;  // sfix8_En2
  input   signed [7:0] In1_re_124;  // sfix8_En2
  input   signed [7:0] In1_re_125;  // sfix8_En2
  input   signed [7:0] In1_re_126;  // sfix8_En2
  input   signed [7:0] In1_re_127;  // sfix8_En2
  input   signed [7:0] In1_im_0;  // sfix8_En2
  input   signed [7:0] In1_im_1;  // sfix8_En2
  input   signed [7:0] In1_im_2;  // sfix8_En2
  input   signed [7:0] In1_im_3;  // sfix8_En2
  input   signed [7:0] In1_im_4;  // sfix8_En2
  input   signed [7:0] In1_im_5;  // sfix8_En2
  input   signed [7:0] In1_im_6;  // sfix8_En2
  input   signed [7:0] In1_im_7;  // sfix8_En2
  input   signed [7:0] In1_im_8;  // sfix8_En2
  input   signed [7:0] In1_im_9;  // sfix8_En2
  input   signed [7:0] In1_im_10;  // sfix8_En2
  input   signed [7:0] In1_im_11;  // sfix8_En2
  input   signed [7:0] In1_im_12;  // sfix8_En2
  input   signed [7:0] In1_im_13;  // sfix8_En2
  input   signed [7:0] In1_im_14;  // sfix8_En2
  input   signed [7:0] In1_im_15;  // sfix8_En2
  input   signed [7:0] In1_im_16;  // sfix8_En2
  input   signed [7:0] In1_im_17;  // sfix8_En2
  input   signed [7:0] In1_im_18;  // sfix8_En2
  input   signed [7:0] In1_im_19;  // sfix8_En2
  input   signed [7:0] In1_im_20;  // sfix8_En2
  input   signed [7:0] In1_im_21;  // sfix8_En2
  input   signed [7:0] In1_im_22;  // sfix8_En2
  input   signed [7:0] In1_im_23;  // sfix8_En2
  input   signed [7:0] In1_im_24;  // sfix8_En2
  input   signed [7:0] In1_im_25;  // sfix8_En2
  input   signed [7:0] In1_im_26;  // sfix8_En2
  input   signed [7:0] In1_im_27;  // sfix8_En2
  input   signed [7:0] In1_im_28;  // sfix8_En2
  input   signed [7:0] In1_im_29;  // sfix8_En2
  input   signed [7:0] In1_im_30;  // sfix8_En2
  input   signed [7:0] In1_im_31;  // sfix8_En2
  input   signed [7:0] In1_im_32;  // sfix8_En2
  input   signed [7:0] In1_im_33;  // sfix8_En2
  input   signed [7:0] In1_im_34;  // sfix8_En2
  input   signed [7:0] In1_im_35;  // sfix8_En2
  input   signed [7:0] In1_im_36;  // sfix8_En2
  input   signed [7:0] In1_im_37;  // sfix8_En2
  input   signed [7:0] In1_im_38;  // sfix8_En2
  input   signed [7:0] In1_im_39;  // sfix8_En2
  input   signed [7:0] In1_im_40;  // sfix8_En2
  input   signed [7:0] In1_im_41;  // sfix8_En2
  input   signed [7:0] In1_im_42;  // sfix8_En2
  input   signed [7:0] In1_im_43;  // sfix8_En2
  input   signed [7:0] In1_im_44;  // sfix8_En2
  input   signed [7:0] In1_im_45;  // sfix8_En2
  input   signed [7:0] In1_im_46;  // sfix8_En2
  input   signed [7:0] In1_im_47;  // sfix8_En2
  input   signed [7:0] In1_im_48;  // sfix8_En2
  input   signed [7:0] In1_im_49;  // sfix8_En2
  input   signed [7:0] In1_im_50;  // sfix8_En2
  input   signed [7:0] In1_im_51;  // sfix8_En2
  input   signed [7:0] In1_im_52;  // sfix8_En2
  input   signed [7:0] In1_im_53;  // sfix8_En2
  input   signed [7:0] In1_im_54;  // sfix8_En2
  input   signed [7:0] In1_im_55;  // sfix8_En2
  input   signed [7:0] In1_im_56;  // sfix8_En2
  input   signed [7:0] In1_im_57;  // sfix8_En2
  input   signed [7:0] In1_im_58;  // sfix8_En2
  input   signed [7:0] In1_im_59;  // sfix8_En2
  input   signed [7:0] In1_im_60;  // sfix8_En2
  input   signed [7:0] In1_im_61;  // sfix8_En2
  input   signed [7:0] In1_im_62;  // sfix8_En2
  input   signed [7:0] In1_im_63;  // sfix8_En2
  input   signed [7:0] In1_im_64;  // sfix8_En2
  input   signed [7:0] In1_im_65;  // sfix8_En2
  input   signed [7:0] In1_im_66;  // sfix8_En2
  input   signed [7:0] In1_im_67;  // sfix8_En2
  input   signed [7:0] In1_im_68;  // sfix8_En2
  input   signed [7:0] In1_im_69;  // sfix8_En2
  input   signed [7:0] In1_im_70;  // sfix8_En2
  input   signed [7:0] In1_im_71;  // sfix8_En2
  input   signed [7:0] In1_im_72;  // sfix8_En2
  input   signed [7:0] In1_im_73;  // sfix8_En2
  input   signed [7:0] In1_im_74;  // sfix8_En2
  input   signed [7:0] In1_im_75;  // sfix8_En2
  input   signed [7:0] In1_im_76;  // sfix8_En2
  input   signed [7:0] In1_im_77;  // sfix8_En2
  input   signed [7:0] In1_im_78;  // sfix8_En2
  input   signed [7:0] In1_im_79;  // sfix8_En2
  input   signed [7:0] In1_im_80;  // sfix8_En2
  input   signed [7:0] In1_im_81;  // sfix8_En2
  input   signed [7:0] In1_im_82;  // sfix8_En2
  input   signed [7:0] In1_im_83;  // sfix8_En2
  input   signed [7:0] In1_im_84;  // sfix8_En2
  input   signed [7:0] In1_im_85;  // sfix8_En2
  input   signed [7:0] In1_im_86;  // sfix8_En2
  input   signed [7:0] In1_im_87;  // sfix8_En2
  input   signed [7:0] In1_im_88;  // sfix8_En2
  input   signed [7:0] In1_im_89;  // sfix8_En2
  input   signed [7:0] In1_im_90;  // sfix8_En2
  input   signed [7:0] In1_im_91;  // sfix8_En2
  input   signed [7:0] In1_im_92;  // sfix8_En2
  input   signed [7:0] In1_im_93;  // sfix8_En2
  input   signed [7:0] In1_im_94;  // sfix8_En2
  input   signed [7:0] In1_im_95;  // sfix8_En2
  input   signed [7:0] In1_im_96;  // sfix8_En2
  input   signed [7:0] In1_im_97;  // sfix8_En2
  input   signed [7:0] In1_im_98;  // sfix8_En2
  input   signed [7:0] In1_im_99;  // sfix8_En2
  input   signed [7:0] In1_im_100;  // sfix8_En2
  input   signed [7:0] In1_im_101;  // sfix8_En2
  input   signed [7:0] In1_im_102;  // sfix8_En2
  input   signed [7:0] In1_im_103;  // sfix8_En2
  input   signed [7:0] In1_im_104;  // sfix8_En2
  input   signed [7:0] In1_im_105;  // sfix8_En2
  input   signed [7:0] In1_im_106;  // sfix8_En2
  input   signed [7:0] In1_im_107;  // sfix8_En2
  input   signed [7:0] In1_im_108;  // sfix8_En2
  input   signed [7:0] In1_im_109;  // sfix8_En2
  input   signed [7:0] In1_im_110;  // sfix8_En2
  input   signed [7:0] In1_im_111;  // sfix8_En2
  input   signed [7:0] In1_im_112;  // sfix8_En2
  input   signed [7:0] In1_im_113;  // sfix8_En2
  input   signed [7:0] In1_im_114;  // sfix8_En2
  input   signed [7:0] In1_im_115;  // sfix8_En2
  input   signed [7:0] In1_im_116;  // sfix8_En2
  input   signed [7:0] In1_im_117;  // sfix8_En2
  input   signed [7:0] In1_im_118;  // sfix8_En2
  input   signed [7:0] In1_im_119;  // sfix8_En2
  input   signed [7:0] In1_im_120;  // sfix8_En2
  input   signed [7:0] In1_im_121;  // sfix8_En2
  input   signed [7:0] In1_im_122;  // sfix8_En2
  input   signed [7:0] In1_im_123;  // sfix8_En2
  input   signed [7:0] In1_im_124;  // sfix8_En2
  input   signed [7:0] In1_im_125;  // sfix8_En2
  input   signed [7:0] In1_im_126;  // sfix8_En2
  input   signed [7:0] In1_im_127;  // sfix8_En2

  output  signed [28:0] Out1_re_0;  // sfix29_En17
  output  signed [28:0] Out1_re_1;  // sfix29_En17
  output  signed [28:0] Out1_re_2;  // sfix29_En17
  output  signed [28:0] Out1_re_3;  // sfix29_En17
  output  signed [28:0] Out1_re_4;  // sfix29_En17
  output  signed [28:0] Out1_re_5;  // sfix29_En17
  output  signed [28:0] Out1_re_6;  // sfix29_En17
  output  signed [28:0] Out1_re_7;  // sfix29_En17
  output  signed [28:0] Out1_re_8;  // sfix29_En17
  output  signed [28:0] Out1_re_9;  // sfix29_En17
  output  signed [28:0] Out1_re_10;  // sfix29_En17
  output  signed [28:0] Out1_re_11;  // sfix29_En17
  output  signed [28:0] Out1_re_12;  // sfix29_En17
  output  signed [28:0] Out1_re_13;  // sfix29_En17
  output  signed [28:0] Out1_re_14;  // sfix29_En17
  output  signed [28:0] Out1_re_15;  // sfix29_En17
  output  signed [28:0] Out1_re_16;  // sfix29_En17
  output  signed [28:0] Out1_re_17;  // sfix29_En17
  output  signed [28:0] Out1_re_18;  // sfix29_En17
  output  signed [28:0] Out1_re_19;  // sfix29_En17
  output  signed [28:0] Out1_re_20;  // sfix29_En17
  output  signed [28:0] Out1_re_21;  // sfix29_En17
  output  signed [28:0] Out1_re_22;  // sfix29_En17
  output  signed [28:0] Out1_re_23;  // sfix29_En17
  output  signed [28:0] Out1_re_24;  // sfix29_En17
  output  signed [28:0] Out1_re_25;  // sfix29_En17
  output  signed [28:0] Out1_re_26;  // sfix29_En17
  output  signed [28:0] Out1_re_27;  // sfix29_En17
  output  signed [28:0] Out1_re_28;  // sfix29_En17
  output  signed [28:0] Out1_re_29;  // sfix29_En17
  output  signed [28:0] Out1_re_30;  // sfix29_En17
  output  signed [28:0] Out1_re_31;  // sfix29_En17
  output  signed [28:0] Out1_re_32;  // sfix29_En17
  output  signed [28:0] Out1_re_33;  // sfix29_En17
  output  signed [28:0] Out1_re_34;  // sfix29_En17
  output  signed [28:0] Out1_re_35;  // sfix29_En17
  output  signed [28:0] Out1_re_36;  // sfix29_En17
  output  signed [28:0] Out1_re_37;  // sfix29_En17
  output  signed [28:0] Out1_re_38;  // sfix29_En17
  output  signed [28:0] Out1_re_39;  // sfix29_En17
  output  signed [28:0] Out1_re_40;  // sfix29_En17
  output  signed [28:0] Out1_re_41;  // sfix29_En17
  output  signed [28:0] Out1_re_42;  // sfix29_En17
  output  signed [28:0] Out1_re_43;  // sfix29_En17
  output  signed [28:0] Out1_re_44;  // sfix29_En17
  output  signed [28:0] Out1_re_45;  // sfix29_En17
  output  signed [28:0] Out1_re_46;  // sfix29_En17
  output  signed [28:0] Out1_re_47;  // sfix29_En17
  output  signed [28:0] Out1_re_48;  // sfix29_En17
  output  signed [28:0] Out1_re_49;  // sfix29_En17
  output  signed [28:0] Out1_re_50;  // sfix29_En17
  output  signed [28:0] Out1_re_51;  // sfix29_En17
  output  signed [28:0] Out1_re_52;  // sfix29_En17
  output  signed [28:0] Out1_re_53;  // sfix29_En17
  output  signed [28:0] Out1_re_54;  // sfix29_En17
  output  signed [28:0] Out1_re_55;  // sfix29_En17
  output  signed [28:0] Out1_re_56;  // sfix29_En17
  output  signed [28:0] Out1_re_57;  // sfix29_En17
  output  signed [28:0] Out1_re_58;  // sfix29_En17
  output  signed [28:0] Out1_re_59;  // sfix29_En17
  output  signed [28:0] Out1_re_60;  // sfix29_En17
  output  signed [28:0] Out1_re_61;  // sfix29_En17
  output  signed [28:0] Out1_re_62;  // sfix29_En17
  output  signed [28:0] Out1_re_63;  // sfix29_En17
  output  signed [28:0] Out1_re_64;  // sfix29_En17
  output  signed [28:0] Out1_re_65;  // sfix29_En17
  output  signed [28:0] Out1_re_66;  // sfix29_En17
  output  signed [28:0] Out1_re_67;  // sfix29_En17
  output  signed [28:0] Out1_re_68;  // sfix29_En17
  output  signed [28:0] Out1_re_69;  // sfix29_En17
  output  signed [28:0] Out1_re_70;  // sfix29_En17
  output  signed [28:0] Out1_re_71;  // sfix29_En17
  output  signed [28:0] Out1_re_72;  // sfix29_En17
  output  signed [28:0] Out1_re_73;  // sfix29_En17
  output  signed [28:0] Out1_re_74;  // sfix29_En17
  output  signed [28:0] Out1_re_75;  // sfix29_En17
  output  signed [28:0] Out1_re_76;  // sfix29_En17
  output  signed [28:0] Out1_re_77;  // sfix29_En17
  output  signed [28:0] Out1_re_78;  // sfix29_En17
  output  signed [28:0] Out1_re_79;  // sfix29_En17
  output  signed [28:0] Out1_re_80;  // sfix29_En17
  output  signed [28:0] Out1_re_81;  // sfix29_En17
  output  signed [28:0] Out1_re_82;  // sfix29_En17
  output  signed [28:0] Out1_re_83;  // sfix29_En17
  output  signed [28:0] Out1_re_84;  // sfix29_En17
  output  signed [28:0] Out1_re_85;  // sfix29_En17
  output  signed [28:0] Out1_re_86;  // sfix29_En17
  output  signed [28:0] Out1_re_87;  // sfix29_En17
  output  signed [28:0] Out1_re_88;  // sfix29_En17
  output  signed [28:0] Out1_re_89;  // sfix29_En17
  output  signed [28:0] Out1_re_90;  // sfix29_En17
  output  signed [28:0] Out1_re_91;  // sfix29_En17
  output  signed [28:0] Out1_re_92;  // sfix29_En17
  output  signed [28:0] Out1_re_93;  // sfix29_En17
  output  signed [28:0] Out1_re_94;  // sfix29_En17
  output  signed [28:0] Out1_re_95;  // sfix29_En17
  output  signed [28:0] Out1_re_96;  // sfix29_En17
  output  signed [28:0] Out1_re_97;  // sfix29_En17
  output  signed [28:0] Out1_re_98;  // sfix29_En17
  output  signed [28:0] Out1_re_99;  // sfix29_En17
  output  signed [28:0] Out1_re_100;  // sfix29_En17
  output  signed [28:0] Out1_re_101;  // sfix29_En17
  output  signed [28:0] Out1_re_102;  // sfix29_En17
  output  signed [28:0] Out1_re_103;  // sfix29_En17
  output  signed [28:0] Out1_re_104;  // sfix29_En17
  output  signed [28:0] Out1_re_105;  // sfix29_En17
  output  signed [28:0] Out1_re_106;  // sfix29_En17
  output  signed [28:0] Out1_re_107;  // sfix29_En17
  output  signed [28:0] Out1_re_108;  // sfix29_En17
  output  signed [28:0] Out1_re_109;  // sfix29_En17
  output  signed [28:0] Out1_re_110;  // sfix29_En17
  output  signed [28:0] Out1_re_111;  // sfix29_En17
  output  signed [28:0] Out1_re_112;  // sfix29_En17
  output  signed [28:0] Out1_re_113;  // sfix29_En17
  output  signed [28:0] Out1_re_114;  // sfix29_En17
  output  signed [28:0] Out1_re_115;  // sfix29_En17
  output  signed [28:0] Out1_re_116;  // sfix29_En17
  output  signed [28:0] Out1_re_117;  // sfix29_En17
  output  signed [28:0] Out1_re_118;  // sfix29_En17
  output  signed [28:0] Out1_re_119;  // sfix29_En17
  output  signed [28:0] Out1_re_120;  // sfix29_En17
  output  signed [28:0] Out1_re_121;  // sfix29_En17
  output  signed [28:0] Out1_re_122;  // sfix29_En17
  output  signed [28:0] Out1_re_123;  // sfix29_En17
  output  signed [28:0] Out1_re_124;  // sfix29_En17
  output  signed [28:0] Out1_re_125;  // sfix29_En17
  output  signed [28:0] Out1_re_126;  // sfix29_En17
  output  signed [28:0] Out1_re_127;  // sfix29_En17
  output  signed [28:0] Out1_im_0;  // sfix29_En17
  output  signed [28:0] Out1_im_1;  // sfix29_En17
  output  signed [28:0] Out1_im_2;  // sfix29_En17
  output  signed [28:0] Out1_im_3;  // sfix29_En17
  output  signed [28:0] Out1_im_4;  // sfix29_En17
  output  signed [28:0] Out1_im_5;  // sfix29_En17
  output  signed [28:0] Out1_im_6;  // sfix29_En17
  output  signed [28:0] Out1_im_7;  // sfix29_En17
  output  signed [28:0] Out1_im_8;  // sfix29_En17
  output  signed [28:0] Out1_im_9;  // sfix29_En17
  output  signed [28:0] Out1_im_10;  // sfix29_En17
  output  signed [28:0] Out1_im_11;  // sfix29_En17
  output  signed [28:0] Out1_im_12;  // sfix29_En17
  output  signed [28:0] Out1_im_13;  // sfix29_En17
  output  signed [28:0] Out1_im_14;  // sfix29_En17
  output  signed [28:0] Out1_im_15;  // sfix29_En17
  output  signed [28:0] Out1_im_16;  // sfix29_En17
  output  signed [28:0] Out1_im_17;  // sfix29_En17
  output  signed [28:0] Out1_im_18;  // sfix29_En17
  output  signed [28:0] Out1_im_19;  // sfix29_En17
  output  signed [28:0] Out1_im_20;  // sfix29_En17
  output  signed [28:0] Out1_im_21;  // sfix29_En17
  output  signed [28:0] Out1_im_22;  // sfix29_En17
  output  signed [28:0] Out1_im_23;  // sfix29_En17
  output  signed [28:0] Out1_im_24;  // sfix29_En17
  output  signed [28:0] Out1_im_25;  // sfix29_En17
  output  signed [28:0] Out1_im_26;  // sfix29_En17
  output  signed [28:0] Out1_im_27;  // sfix29_En17
  output  signed [28:0] Out1_im_28;  // sfix29_En17
  output  signed [28:0] Out1_im_29;  // sfix29_En17
  output  signed [28:0] Out1_im_30;  // sfix29_En17
  output  signed [28:0] Out1_im_31;  // sfix29_En17
  output  signed [28:0] Out1_im_32;  // sfix29_En17
  output  signed [28:0] Out1_im_33;  // sfix29_En17
  output  signed [28:0] Out1_im_34;  // sfix29_En17
  output  signed [28:0] Out1_im_35;  // sfix29_En17
  output  signed [28:0] Out1_im_36;  // sfix29_En17
  output  signed [28:0] Out1_im_37;  // sfix29_En17
  output  signed [28:0] Out1_im_38;  // sfix29_En17
  output  signed [28:0] Out1_im_39;  // sfix29_En17
  output  signed [28:0] Out1_im_40;  // sfix29_En17
  output  signed [28:0] Out1_im_41;  // sfix29_En17
  output  signed [28:0] Out1_im_42;  // sfix29_En17
  output  signed [28:0] Out1_im_43;  // sfix29_En17
  output  signed [28:0] Out1_im_44;  // sfix29_En17
  output  signed [28:0] Out1_im_45;  // sfix29_En17
  output  signed [28:0] Out1_im_46;  // sfix29_En17
  output  signed [28:0] Out1_im_47;  // sfix29_En17
  output  signed [28:0] Out1_im_48;  // sfix29_En17
  output  signed [28:0] Out1_im_49;  // sfix29_En17
  output  signed [28:0] Out1_im_50;  // sfix29_En17
  output  signed [28:0] Out1_im_51;  // sfix29_En17
  output  signed [28:0] Out1_im_52;  // sfix29_En17
  output  signed [28:0] Out1_im_53;  // sfix29_En17
  output  signed [28:0] Out1_im_54;  // sfix29_En17
  output  signed [28:0] Out1_im_55;  // sfix29_En17
  output  signed [28:0] Out1_im_56;  // sfix29_En17
  output  signed [28:0] Out1_im_57;  // sfix29_En17
  output  signed [28:0] Out1_im_58;  // sfix29_En17
  output  signed [28:0] Out1_im_59;  // sfix29_En17
  output  signed [28:0] Out1_im_60;  // sfix29_En17
  output  signed [28:0] Out1_im_61;  // sfix29_En17
  output  signed [28:0] Out1_im_62;  // sfix29_En17
  output  signed [28:0] Out1_im_63;  // sfix29_En17
  output  signed [28:0] Out1_im_64;  // sfix29_En17
  output  signed [28:0] Out1_im_65;  // sfix29_En17
  output  signed [28:0] Out1_im_66;  // sfix29_En17
  output  signed [28:0] Out1_im_67;  // sfix29_En17
  output  signed [28:0] Out1_im_68;  // sfix29_En17
  output  signed [28:0] Out1_im_69;  // sfix29_En17
  output  signed [28:0] Out1_im_70;  // sfix29_En17
  output  signed [28:0] Out1_im_71;  // sfix29_En17
  output  signed [28:0] Out1_im_72;  // sfix29_En17
  output  signed [28:0] Out1_im_73;  // sfix29_En17
  output  signed [28:0] Out1_im_74;  // sfix29_En17
  output  signed [28:0] Out1_im_75;  // sfix29_En17
  output  signed [28:0] Out1_im_76;  // sfix29_En17
  output  signed [28:0] Out1_im_77;  // sfix29_En17
  output  signed [28:0] Out1_im_78;  // sfix29_En17
  output  signed [28:0] Out1_im_79;  // sfix29_En17
  output  signed [28:0] Out1_im_80;  // sfix29_En17
  output  signed [28:0] Out1_im_81;  // sfix29_En17
  output  signed [28:0] Out1_im_82;  // sfix29_En17
  output  signed [28:0] Out1_im_83;  // sfix29_En17
  output  signed [28:0] Out1_im_84;  // sfix29_En17
  output  signed [28:0] Out1_im_85;  // sfix29_En17
  output  signed [28:0] Out1_im_86;  // sfix29_En17
  output  signed [28:0] Out1_im_87;  // sfix29_En17
  output  signed [28:0] Out1_im_88;  // sfix29_En17
  output  signed [28:0] Out1_im_89;  // sfix29_En17
  output  signed [28:0] Out1_im_90;  // sfix29_En17
  output  signed [28:0] Out1_im_91;  // sfix29_En17
  output  signed [28:0] Out1_im_92;  // sfix29_En17
  output  signed [28:0] Out1_im_93;  // sfix29_En17
  output  signed [28:0] Out1_im_94;  // sfix29_En17
  output  signed [28:0] Out1_im_95;  // sfix29_En17
  output  signed [28:0] Out1_im_96;  // sfix29_En17
  output  signed [28:0] Out1_im_97;  // sfix29_En17
  output  signed [28:0] Out1_im_98;  // sfix29_En17
  output  signed [28:0] Out1_im_99;  // sfix29_En17
  output  signed [28:0] Out1_im_100;  // sfix29_En17
  output  signed [28:0] Out1_im_101;  // sfix29_En17
  output  signed [28:0] Out1_im_102;  // sfix29_En17
  output  signed [28:0] Out1_im_103;  // sfix29_En17
  output  signed [28:0] Out1_im_104;  // sfix29_En17
  output  signed [28:0] Out1_im_105;  // sfix29_En17
  output  signed [28:0] Out1_im_106;  // sfix29_En17
  output  signed [28:0] Out1_im_107;  // sfix29_En17
  output  signed [28:0] Out1_im_108;  // sfix29_En17
  output  signed [28:0] Out1_im_109;  // sfix29_En17
  output  signed [28:0] Out1_im_110;  // sfix29_En17
  output  signed [28:0] Out1_im_111;  // sfix29_En17
  output  signed [28:0] Out1_im_112;  // sfix29_En17
  output  signed [28:0] Out1_im_113;  // sfix29_En17
  output  signed [28:0] Out1_im_114;  // sfix29_En17
  output  signed [28:0] Out1_im_115;  // sfix29_En17
  output  signed [28:0] Out1_im_116;  // sfix29_En17
  output  signed [28:0] Out1_im_117;  // sfix29_En17
  output  signed [28:0] Out1_im_118;  // sfix29_En17
  output  signed [28:0] Out1_im_119;  // sfix29_En17
  output  signed [28:0] Out1_im_120;  // sfix29_En17
  output  signed [28:0] Out1_im_121;  // sfix29_En17
  output  signed [28:0] Out1_im_122;  // sfix29_En17
  output  signed [28:0] Out1_im_123;  // sfix29_En17
  output  signed [28:0] Out1_im_124;  // sfix29_En17
  output  signed [28:0] Out1_im_125;  // sfix29_En17
  output  signed [28:0] Out1_im_126;  // sfix29_En17
  output  signed [28:0] Out1_im_127;  // sfix29_En17


  wire [0:63] Constant_out1;  // ufix1 [64]
  wire [0:63] Data_Type_Conversion_out1;  // ufix1 [64]
  wire signed [8:0] Butterfly_Stage1_1_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_1_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_1_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_1_out2_im;  // sfix10_En2
  wire signed [1:0] Constant1_out1_re [0:63];  // sfix2 [64]
  wire signed [1:0] Constant1_out1_im [0:63];  // sfix2 [64]
  wire signed [1:0] Data_Type_Conversion1_out1_re [0:63];  // sfix2 [64]
  wire signed [1:0] Data_Type_Conversion1_out1_im [0:63];  // sfix2 [64]
  wire signed [8:0] Butterfly_Stage1_2_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_2_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_2_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_2_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_1_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_1_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_1_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_1_out2_im;  // sfix10_En2
  wire signed [9:0] Constant2_out1_re [0:63];  // sfix10_En8 [64]
  wire signed [9:0] Constant2_out1_im [0:63];  // sfix10_En8 [64]
  wire signed [9:0] Data_Type_Conversion2_out1_re [0:63];  // sfix10_En8 [64]
  wire signed [9:0] Data_Type_Conversion2_out1_im [0:63];  // sfix10_En8 [64]
  wire signed [8:0] Butterfly_Stage1_3_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_3_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_3_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_3_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_4_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_4_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_4_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_4_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_3_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_3_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_3_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_3_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_1_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_1_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_1_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_1_out2_im;  // sfix19_En10
  wire signed [15:0] Constant3_out1_re [0:63];  // sfix16_En14 [64]
  wire signed [15:0] Constant3_out1_im [0:63];  // sfix16_En14 [64]
  wire signed [15:0] Data_Type_Conversion3_out1_re [0:63];  // sfix16_En14 [64]
  wire signed [15:0] Data_Type_Conversion3_out1_im [0:63];  // sfix16_En14 [64]
  wire signed [8:0] Butterfly_Stage1_5_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_5_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_5_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_5_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_6_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_6_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_6_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_6_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_5_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_5_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_5_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_5_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_7_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_7_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_7_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_7_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_8_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_8_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_8_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_8_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_7_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_7_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_7_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_7_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_5_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_5_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_5_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_5_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_1_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_1_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_1_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_1_out2_im;  // sfix30_En20
  wire signed [14:0] Constant4_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Constant4_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion4_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion4_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [8:0] Butterfly_Stage1_9_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_9_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_9_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_9_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_10_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_10_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_10_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_10_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_9_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_9_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_9_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_9_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_11_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_11_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_11_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_11_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_12_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_12_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_12_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_12_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_11_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_11_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_11_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_11_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_9_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_9_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_9_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_9_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_13_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_13_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_13_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_13_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_14_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_14_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_14_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_14_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_13_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_13_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_13_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_13_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_15_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_15_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_15_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_15_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_16_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_16_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_16_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_16_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_15_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_15_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_15_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_15_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_13_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_13_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_13_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_13_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_9_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_9_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_9_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_9_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_1_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_1_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_1_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_1_out2_im;  // sfix33_En22
  wire signed [14:0] Constant5_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Constant5_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion5_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion5_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [8:0] Butterfly_Stage1_17_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_17_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_17_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_17_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_18_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_18_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_18_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_18_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_17_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_17_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_17_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_17_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_19_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_19_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_19_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_19_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_20_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_20_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_20_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_20_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_19_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_19_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_19_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_19_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_17_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_17_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_17_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_17_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_21_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_21_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_21_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_21_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_22_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_22_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_22_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_22_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_21_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_21_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_21_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_21_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_23_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_23_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_23_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_23_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_24_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_24_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_24_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_24_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_23_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_23_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_23_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_23_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_21_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_21_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_21_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_21_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_17_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_17_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_17_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_17_out2_im;  // sfix30_En20
  wire signed [8:0] Butterfly_Stage1_25_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_25_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_25_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_25_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_26_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_26_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_26_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_26_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_25_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_25_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_25_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_25_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_27_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_27_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_27_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_27_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_28_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_28_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_28_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_28_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_27_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_27_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_27_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_27_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_25_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_25_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_25_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_25_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_29_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_29_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_29_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_29_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_30_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_30_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_30_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_30_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_29_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_29_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_29_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_29_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_31_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_31_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_31_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_31_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_32_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_32_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_32_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_32_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_31_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_31_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_31_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_31_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_29_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_29_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_29_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_29_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_25_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_25_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_25_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_25_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_17_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_17_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_17_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_17_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_1_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_1_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_1_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_1_out2_im;  // sfix31_En19
  wire signed [14:0] Constant6_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Constant6_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion6_out1_re [0:63];  // sfix15_En13 [64]
  wire signed [14:0] Data_Type_Conversion6_out1_im [0:63];  // sfix15_En13 [64]
  wire signed [8:0] Butterfly_Stage1_33_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_33_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_33_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_33_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_34_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_34_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_34_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_34_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_33_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_33_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_33_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_33_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_35_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_35_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_35_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_35_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_36_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_36_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_36_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_36_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_35_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_35_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_35_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_35_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_33_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_33_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_33_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_33_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_37_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_37_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_37_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_37_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_38_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_38_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_38_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_38_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_37_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_37_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_37_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_37_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_39_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_39_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_39_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_39_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_40_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_40_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_40_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_40_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_39_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_39_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_39_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_39_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_37_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_37_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_37_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_37_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_33_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_33_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_33_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_33_out2_im;  // sfix30_En20
  wire signed [8:0] Butterfly_Stage1_41_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_41_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_41_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_41_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_42_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_42_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_42_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_42_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_41_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_41_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_41_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_41_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_43_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_43_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_43_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_43_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_44_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_44_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_44_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_44_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_43_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_43_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_43_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_43_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_41_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_41_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_41_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_41_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_45_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_45_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_45_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_45_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_46_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_46_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_46_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_46_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_45_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_45_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_45_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_45_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_47_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_47_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_47_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_47_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_48_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_48_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_48_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_48_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_47_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_47_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_47_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_47_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_45_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_45_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_45_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_45_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_41_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_41_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_41_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_41_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_33_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_33_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_33_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_33_out2_im;  // sfix33_En22
  wire signed [8:0] Butterfly_Stage1_49_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_49_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_49_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_49_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_50_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_50_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_50_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_50_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_49_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_49_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_49_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_49_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_51_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_51_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_51_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_51_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_52_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_52_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_52_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_52_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_51_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_51_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_51_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_51_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_49_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_49_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_49_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_49_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_53_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_53_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_53_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_53_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_54_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_54_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_54_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_54_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_53_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_53_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_53_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_53_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_55_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_55_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_55_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_55_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_56_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_56_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_56_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_56_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_55_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_55_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_55_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_55_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_53_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_53_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_53_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_53_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_49_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_49_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_49_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_49_out2_im;  // sfix30_En20
  wire signed [8:0] Butterfly_Stage1_57_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_57_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_57_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_57_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_58_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_58_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_58_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_58_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_57_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_57_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_57_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_57_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_59_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_59_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_59_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_59_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_60_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_60_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_60_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_60_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_59_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_59_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_59_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_59_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_57_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_57_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_57_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_57_out2_im;  // sfix19_En10
  wire signed [8:0] Butterfly_Stage1_61_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_61_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_61_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_61_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_62_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_62_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_62_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_62_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_61_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_61_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_61_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_61_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_63_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_63_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_63_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_63_out2_im;  // sfix10_En2
  wire signed [8:0] Butterfly_Stage1_64_out1_re;  // sfix9_En2
  wire signed [8:0] Butterfly_Stage1_64_out1_im;  // sfix9_En2
  wire signed [9:0] Butterfly_Stage1_64_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage1_64_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_63_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_63_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_63_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_63_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_61_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_61_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_61_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_61_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_57_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_57_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_57_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_57_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_49_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_49_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_49_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_49_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_33_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_33_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_33_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_33_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_1_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_1_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_1_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_1_out2_im;  // sfix29_En17
  wire signed [9:0] Butterfly_Stage2_2_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_2_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_2_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_2_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_4_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_4_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_4_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_4_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_2_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_2_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_2_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_2_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_6_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_6_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_6_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_6_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_8_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_8_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_8_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_8_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_6_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_6_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_6_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_6_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_2_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_2_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_2_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_2_out2_im;  // sfix30_En20
  wire signed [9:0] Butterfly_Stage2_10_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_10_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_10_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_10_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_12_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_12_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_12_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_12_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_10_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_10_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_10_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_10_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_14_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_14_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_14_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_14_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_16_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_16_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_16_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_16_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_14_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_14_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_14_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_14_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_10_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_10_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_10_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_10_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_2_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_2_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_2_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_2_out2_im;  // sfix33_En22
  wire signed [9:0] Butterfly_Stage2_18_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_18_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_18_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_18_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_20_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_20_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_20_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_20_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_18_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_18_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_18_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_18_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_22_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_22_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_22_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_22_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_24_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_24_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_24_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_24_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_22_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_22_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_22_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_22_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_18_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_18_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_18_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_18_out2_im;  // sfix30_En20
  wire signed [9:0] Butterfly_Stage2_26_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_26_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_26_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_26_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_28_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_28_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_28_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_28_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_26_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_26_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_26_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_26_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_30_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_30_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_30_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_30_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_32_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_32_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_32_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_32_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_30_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_30_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_30_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_30_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_26_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_26_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_26_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_26_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_18_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_18_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_18_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_18_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_2_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_2_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_2_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_2_out2_im;  // sfix31_En19
  wire signed [9:0] Butterfly_Stage2_34_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_34_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_34_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_34_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_36_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_36_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_36_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_36_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_34_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_34_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_34_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_34_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_38_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_38_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_38_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_38_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_40_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_40_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_40_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_40_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_38_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_38_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_38_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_38_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_34_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_34_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_34_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_34_out2_im;  // sfix30_En20
  wire signed [9:0] Butterfly_Stage2_42_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_42_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_42_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_42_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_44_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_44_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_44_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_44_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_42_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_42_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_42_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_42_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_46_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_46_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_46_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_46_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_48_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_48_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_48_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_48_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_46_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_46_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_46_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_46_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_42_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_42_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_42_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_42_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_34_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_34_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_34_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_34_out2_im;  // sfix33_En22
  wire signed [9:0] Butterfly_Stage2_50_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_50_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_50_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_50_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_52_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_52_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_52_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_52_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_50_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_50_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_50_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_50_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_54_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_54_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_54_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_54_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_56_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_56_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_56_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_56_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_54_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_54_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_54_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_54_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_50_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_50_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_50_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_50_out2_im;  // sfix30_En20
  wire signed [9:0] Butterfly_Stage2_58_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_58_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_58_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_58_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_60_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_60_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_60_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_60_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_58_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_58_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_58_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_58_out2_im;  // sfix19_En10
  wire signed [9:0] Butterfly_Stage2_62_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_62_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_62_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_62_out2_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_64_out1_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_64_out1_im;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_64_out2_re;  // sfix10_En2
  wire signed [9:0] Butterfly_Stage2_64_out2_im;  // sfix10_En2
  wire signed [18:0] Butterfly_Stage3_62_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_62_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_62_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_62_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_58_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_58_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_58_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_58_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_50_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_50_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_50_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_50_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_34_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_34_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_34_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_34_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_2_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_2_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_2_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_2_out2_im;  // sfix29_En17
  wire signed [18:0] Butterfly_Stage3_3_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_3_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_3_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_3_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_7_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_7_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_7_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_7_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_3_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_3_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_3_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_3_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_11_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_11_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_11_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_11_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_15_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_15_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_15_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_15_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_11_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_11_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_11_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_11_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_3_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_3_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_3_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_3_out2_im;  // sfix33_En22
  wire signed [18:0] Butterfly_Stage3_19_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_19_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_19_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_19_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_23_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_23_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_23_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_23_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_19_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_19_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_19_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_19_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_27_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_27_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_27_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_27_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_31_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_31_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_31_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_31_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_27_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_27_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_27_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_27_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_19_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_19_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_19_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_19_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_3_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_3_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_3_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_3_out2_im;  // sfix31_En19
  wire signed [18:0] Butterfly_Stage3_35_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_35_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_35_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_35_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_39_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_39_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_39_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_39_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_35_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_35_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_35_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_35_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_43_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_43_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_43_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_43_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_47_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_47_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_47_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_47_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_43_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_43_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_43_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_43_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_35_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_35_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_35_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_35_out2_im;  // sfix33_En22
  wire signed [18:0] Butterfly_Stage3_51_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_51_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_51_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_51_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_55_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_55_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_55_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_55_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_51_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_51_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_51_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_51_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_59_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_59_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_59_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_59_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_63_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_63_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_63_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_63_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_59_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_59_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_59_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_59_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_51_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_51_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_51_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_51_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_35_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_35_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_35_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_35_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_3_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_3_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_3_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_3_out2_im;  // sfix29_En17
  wire signed [18:0] Butterfly_Stage3_4_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_4_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_4_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_4_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_8_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_8_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_8_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_8_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_4_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_4_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_4_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_4_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_12_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_12_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_12_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_12_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_16_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_16_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_16_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_16_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_12_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_12_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_12_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_12_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_4_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_4_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_4_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_4_out2_im;  // sfix33_En22
  wire signed [18:0] Butterfly_Stage3_20_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_20_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_20_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_20_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_24_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_24_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_24_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_24_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_20_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_20_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_20_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_20_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_28_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_28_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_28_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_28_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_32_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_32_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_32_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_32_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_28_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_28_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_28_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_28_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_20_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_20_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_20_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_20_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_4_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_4_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_4_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_4_out2_im;  // sfix31_En19
  wire signed [18:0] Butterfly_Stage3_36_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_36_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_36_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_36_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_40_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_40_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_40_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_40_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_36_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_36_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_36_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_36_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_44_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_44_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_44_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_44_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_48_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_48_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_48_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_48_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_44_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_44_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_44_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_44_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_36_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_36_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_36_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_36_out2_im;  // sfix33_En22
  wire signed [18:0] Butterfly_Stage3_52_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_52_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_52_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_52_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_56_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_56_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_56_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_56_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_52_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_52_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_52_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_52_out2_im;  // sfix30_En20
  wire signed [18:0] Butterfly_Stage3_60_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_60_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_60_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_60_out2_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_64_out1_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_64_out1_im;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_64_out2_re;  // sfix19_En10
  wire signed [18:0] Butterfly_Stage3_64_out2_im;  // sfix19_En10
  wire signed [29:0] Butterfly_Stage4_60_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_60_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_60_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_60_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_52_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_52_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_52_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_52_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_36_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_36_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_36_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_36_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_4_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_4_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_4_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_4_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage4_5_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_5_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_5_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_5_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_13_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_13_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_13_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_13_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_5_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_5_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_5_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_5_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_21_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_21_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_21_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_21_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_29_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_29_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_29_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_29_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_21_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_21_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_21_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_21_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_5_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_5_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_5_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_5_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage4_37_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_37_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_37_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_37_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_45_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_45_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_45_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_45_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_37_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_37_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_37_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_37_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_53_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_53_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_53_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_53_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_61_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_61_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_61_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_61_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_53_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_53_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_53_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_53_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_37_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_37_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_37_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_37_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_5_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_5_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_5_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_5_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage4_6_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_6_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_6_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_6_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_14_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_14_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_14_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_14_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_6_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_6_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_6_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_6_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_22_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_22_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_22_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_22_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_30_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_30_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_30_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_30_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_22_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_22_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_22_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_22_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_6_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_6_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_6_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_6_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage4_38_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_38_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_38_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_38_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_46_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_46_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_46_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_46_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_38_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_38_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_38_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_38_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_54_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_54_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_54_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_54_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_62_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_62_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_62_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_62_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_54_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_54_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_54_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_54_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_38_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_38_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_38_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_38_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_6_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_6_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_6_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_6_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage4_7_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_7_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_7_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_7_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_15_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_15_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_15_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_15_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_7_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_7_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_7_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_7_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_23_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_23_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_23_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_23_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_31_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_31_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_31_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_31_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_23_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_23_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_23_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_23_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_7_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_7_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_7_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_7_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage4_39_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_39_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_39_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_39_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_47_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_47_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_47_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_47_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_39_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_39_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_39_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_39_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_55_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_55_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_55_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_55_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_63_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_63_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_63_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_63_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_55_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_55_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_55_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_55_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_39_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_39_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_39_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_39_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_7_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_7_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_7_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_7_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage4_8_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_8_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_8_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_8_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_16_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_16_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_16_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_16_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_8_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_8_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_8_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_8_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_24_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_24_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_24_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_24_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_32_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_32_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_32_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_32_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_24_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_24_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_24_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_24_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_8_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_8_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_8_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_8_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage4_40_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_40_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_40_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_40_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_48_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_48_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_48_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_48_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_40_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_40_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_40_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_40_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage4_56_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_56_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_56_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_56_out2_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_64_out1_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_64_out1_im;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_64_out2_re;  // sfix30_En20
  wire signed [29:0] Butterfly_Stage4_64_out2_im;  // sfix30_En20
  wire signed [32:0] Butterfly_Stage5_56_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_56_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_56_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_56_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_40_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_40_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_40_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_40_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_8_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_8_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_8_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_8_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_9_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_9_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_9_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_9_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_25_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_25_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_25_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_25_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_9_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_9_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_9_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_9_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_41_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_41_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_41_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_41_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_57_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_57_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_57_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_57_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_41_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_41_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_41_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_41_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_9_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_9_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_9_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_9_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_10_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_10_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_10_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_10_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_26_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_26_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_26_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_26_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_10_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_10_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_10_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_10_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_42_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_42_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_42_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_42_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_58_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_58_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_58_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_58_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_42_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_42_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_42_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_42_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_10_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_10_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_10_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_10_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_11_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_11_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_11_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_11_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_27_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_27_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_27_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_27_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_11_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_11_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_11_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_11_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_43_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_43_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_43_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_43_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_59_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_59_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_59_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_59_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_43_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_43_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_43_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_43_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_11_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_11_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_11_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_11_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_12_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_12_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_12_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_12_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_28_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_28_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_28_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_28_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_12_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_12_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_12_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_12_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_44_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_44_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_44_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_44_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_60_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_60_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_60_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_60_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_44_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_44_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_44_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_44_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_12_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_12_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_12_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_12_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_13_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_13_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_13_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_13_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_29_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_29_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_29_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_29_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_13_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_13_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_13_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_13_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_45_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_45_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_45_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_45_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_61_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_61_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_61_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_61_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_45_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_45_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_45_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_45_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_13_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_13_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_13_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_13_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_14_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_14_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_14_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_14_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_30_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_30_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_30_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_30_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_14_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_14_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_14_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_14_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_46_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_46_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_46_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_46_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_62_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_62_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_62_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_62_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_46_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_46_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_46_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_46_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_14_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_14_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_14_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_14_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_15_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_15_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_15_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_15_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_31_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_31_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_31_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_31_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_15_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_15_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_15_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_15_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_47_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_47_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_47_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_47_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_63_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_63_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_63_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_63_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_47_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_47_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_47_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_47_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_15_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_15_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_15_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_15_out2_im;  // sfix29_En17
  wire signed [32:0] Butterfly_Stage5_16_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_16_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_16_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_16_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_32_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_32_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_32_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_32_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_16_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_16_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_16_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_16_out2_im;  // sfix31_En19
  wire signed [32:0] Butterfly_Stage5_48_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_48_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_48_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_48_out2_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_64_out1_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_64_out1_im;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_64_out2_re;  // sfix33_En22
  wire signed [32:0] Butterfly_Stage5_64_out2_im;  // sfix33_En22
  wire signed [29:0] Butterfly_Stage6_48_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_48_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_48_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_48_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_16_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_16_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_16_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_16_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_17_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_17_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_17_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_17_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_49_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_49_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_49_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_49_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_17_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_17_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_17_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_17_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_18_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_18_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_18_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_18_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_50_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_50_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_50_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_50_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_18_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_18_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_18_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_18_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_19_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_19_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_19_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_19_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_51_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_51_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_51_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_51_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_19_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_19_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_19_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_19_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_20_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_20_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_20_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_20_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_52_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_52_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_52_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_52_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_20_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_20_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_20_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_20_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_21_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_21_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_21_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_21_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_53_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_53_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_53_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_53_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_21_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_21_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_21_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_21_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_22_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_22_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_22_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_22_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_54_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_54_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_54_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_54_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_22_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_22_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_22_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_22_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_23_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_23_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_23_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_23_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_55_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_55_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_55_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_55_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_23_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_23_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_23_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_23_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_24_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_24_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_24_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_24_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_56_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_56_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_56_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_56_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_24_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_24_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_24_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_24_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_25_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_25_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_25_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_25_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_57_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_57_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_57_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_57_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_25_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_25_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_25_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_25_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_26_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_26_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_26_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_26_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_58_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_58_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_58_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_58_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_26_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_26_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_26_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_26_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_27_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_27_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_27_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_27_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_59_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_59_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_59_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_59_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_27_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_27_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_27_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_27_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_28_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_28_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_28_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_28_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_60_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_60_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_60_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_60_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_28_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_28_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_28_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_28_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_29_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_29_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_29_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_29_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_61_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_61_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_61_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_61_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_29_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_29_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_29_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_29_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_30_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_30_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_30_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_30_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_62_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_62_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_62_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_62_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_30_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_30_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_30_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_30_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_31_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_31_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_31_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_31_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_63_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_63_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_63_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_63_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_31_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_31_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_31_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_31_out2_im;  // sfix29_En17
  wire signed [29:0] Butterfly_Stage6_32_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_32_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_32_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_32_out2_im;  // sfix31_En19
  wire signed [29:0] Butterfly_Stage6_64_out1_re;  // sfix30_En19
  wire signed [29:0] Butterfly_Stage6_64_out1_im;  // sfix30_En19
  wire signed [30:0] Butterfly_Stage6_64_out2_re;  // sfix31_En19
  wire signed [30:0] Butterfly_Stage6_64_out2_im;  // sfix31_En19
  wire signed [28:0] Butterfly_Stage7_32_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_32_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_32_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_32_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_33_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_33_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_33_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_33_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_34_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_34_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_34_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_34_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_35_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_35_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_35_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_35_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_36_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_36_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_36_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_36_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_37_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_37_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_37_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_37_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_38_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_38_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_38_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_38_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_39_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_39_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_39_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_39_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_40_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_40_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_40_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_40_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_41_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_41_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_41_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_41_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_42_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_42_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_42_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_42_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_43_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_43_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_43_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_43_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_44_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_44_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_44_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_44_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_45_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_45_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_45_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_45_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_46_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_46_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_46_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_46_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_47_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_47_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_47_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_47_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_48_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_48_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_48_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_48_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_49_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_49_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_49_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_49_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_50_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_50_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_50_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_50_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_51_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_51_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_51_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_51_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_52_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_52_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_52_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_52_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_53_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_53_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_53_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_53_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_54_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_54_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_54_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_54_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_55_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_55_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_55_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_55_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_56_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_56_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_56_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_56_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_57_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_57_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_57_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_57_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_58_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_58_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_58_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_58_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_59_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_59_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_59_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_59_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_60_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_60_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_60_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_60_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_61_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_61_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_61_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_61_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_62_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_62_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_62_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_62_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_63_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_63_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_63_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_63_out2_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_64_out1_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_64_out1_im;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_64_out2_re;  // sfix29_En17
  wire signed [28:0] Butterfly_Stage7_64_out2_im;  // sfix29_En17
  wire signed [7:0] demux1_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux2_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux3_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux4_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux5_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux6_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux7_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux8_re [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux1_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux2_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux3_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux4_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux5_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux6_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux7_im [0:15];  // sfix8_En2 [16]
  wire signed [7:0] demux8_im [0:15];  // sfix8_En2 [16]

  // 0
  // 
  // 15
  // 
  // 16
  // 
  // 31
  // 
  // 32
  // 
  // 47
  // 
  // 48
  // 
  // 63
  // 
  // 64
  // 
  // 79
  // 
  // 80
  // 
  // 95
  // 
  // 96
  // 
  // 111
  // 
  // 112
  // 
  // 127


  assign Constant_out1[0] = 1'b1;
  assign Constant_out1[1] = 1'b1;
  assign Constant_out1[2] = 1'b1;
  assign Constant_out1[3] = 1'b1;
  assign Constant_out1[4] = 1'b1;
  assign Constant_out1[5] = 1'b1;
  assign Constant_out1[6] = 1'b1;
  assign Constant_out1[7] = 1'b1;
  assign Constant_out1[8] = 1'b1;
  assign Constant_out1[9] = 1'b1;
  assign Constant_out1[10] = 1'b1;
  assign Constant_out1[11] = 1'b1;
  assign Constant_out1[12] = 1'b1;
  assign Constant_out1[13] = 1'b1;
  assign Constant_out1[14] = 1'b1;
  assign Constant_out1[15] = 1'b1;
  assign Constant_out1[16] = 1'b1;
  assign Constant_out1[17] = 1'b1;
  assign Constant_out1[18] = 1'b1;
  assign Constant_out1[19] = 1'b1;
  assign Constant_out1[20] = 1'b1;
  assign Constant_out1[21] = 1'b1;
  assign Constant_out1[22] = 1'b1;
  assign Constant_out1[23] = 1'b1;
  assign Constant_out1[24] = 1'b1;
  assign Constant_out1[25] = 1'b1;
  assign Constant_out1[26] = 1'b1;
  assign Constant_out1[27] = 1'b1;
  assign Constant_out1[28] = 1'b1;
  assign Constant_out1[29] = 1'b1;
  assign Constant_out1[30] = 1'b1;
  assign Constant_out1[31] = 1'b1;
  assign Constant_out1[32] = 1'b1;
  assign Constant_out1[33] = 1'b1;
  assign Constant_out1[34] = 1'b1;
  assign Constant_out1[35] = 1'b1;
  assign Constant_out1[36] = 1'b1;
  assign Constant_out1[37] = 1'b1;
  assign Constant_out1[38] = 1'b1;
  assign Constant_out1[39] = 1'b1;
  assign Constant_out1[40] = 1'b1;
  assign Constant_out1[41] = 1'b1;
  assign Constant_out1[42] = 1'b1;
  assign Constant_out1[43] = 1'b1;
  assign Constant_out1[44] = 1'b1;
  assign Constant_out1[45] = 1'b1;
  assign Constant_out1[46] = 1'b1;
  assign Constant_out1[47] = 1'b1;
  assign Constant_out1[48] = 1'b1;
  assign Constant_out1[49] = 1'b1;
  assign Constant_out1[50] = 1'b1;
  assign Constant_out1[51] = 1'b1;
  assign Constant_out1[52] = 1'b1;
  assign Constant_out1[53] = 1'b1;
  assign Constant_out1[54] = 1'b1;
  assign Constant_out1[55] = 1'b1;
  assign Constant_out1[56] = 1'b1;
  assign Constant_out1[57] = 1'b1;
  assign Constant_out1[58] = 1'b1;
  assign Constant_out1[59] = 1'b1;
  assign Constant_out1[60] = 1'b1;
  assign Constant_out1[61] = 1'b1;
  assign Constant_out1[62] = 1'b1;
  assign Constant_out1[63] = 1'b1;



  assign Data_Type_Conversion_out1[0] = Constant_out1[0];
  assign Data_Type_Conversion_out1[1] = Constant_out1[1];
  assign Data_Type_Conversion_out1[2] = Constant_out1[2];
  assign Data_Type_Conversion_out1[3] = Constant_out1[3];
  assign Data_Type_Conversion_out1[4] = Constant_out1[4];
  assign Data_Type_Conversion_out1[5] = Constant_out1[5];
  assign Data_Type_Conversion_out1[6] = Constant_out1[6];
  assign Data_Type_Conversion_out1[7] = Constant_out1[7];
  assign Data_Type_Conversion_out1[8] = Constant_out1[8];
  assign Data_Type_Conversion_out1[9] = Constant_out1[9];
  assign Data_Type_Conversion_out1[10] = Constant_out1[10];
  assign Data_Type_Conversion_out1[11] = Constant_out1[11];
  assign Data_Type_Conversion_out1[12] = Constant_out1[12];
  assign Data_Type_Conversion_out1[13] = Constant_out1[13];
  assign Data_Type_Conversion_out1[14] = Constant_out1[14];
  assign Data_Type_Conversion_out1[15] = Constant_out1[15];
  assign Data_Type_Conversion_out1[16] = Constant_out1[16];
  assign Data_Type_Conversion_out1[17] = Constant_out1[17];
  assign Data_Type_Conversion_out1[18] = Constant_out1[18];
  assign Data_Type_Conversion_out1[19] = Constant_out1[19];
  assign Data_Type_Conversion_out1[20] = Constant_out1[20];
  assign Data_Type_Conversion_out1[21] = Constant_out1[21];
  assign Data_Type_Conversion_out1[22] = Constant_out1[22];
  assign Data_Type_Conversion_out1[23] = Constant_out1[23];
  assign Data_Type_Conversion_out1[24] = Constant_out1[24];
  assign Data_Type_Conversion_out1[25] = Constant_out1[25];
  assign Data_Type_Conversion_out1[26] = Constant_out1[26];
  assign Data_Type_Conversion_out1[27] = Constant_out1[27];
  assign Data_Type_Conversion_out1[28] = Constant_out1[28];
  assign Data_Type_Conversion_out1[29] = Constant_out1[29];
  assign Data_Type_Conversion_out1[30] = Constant_out1[30];
  assign Data_Type_Conversion_out1[31] = Constant_out1[31];
  assign Data_Type_Conversion_out1[32] = Constant_out1[32];
  assign Data_Type_Conversion_out1[33] = Constant_out1[33];
  assign Data_Type_Conversion_out1[34] = Constant_out1[34];
  assign Data_Type_Conversion_out1[35] = Constant_out1[35];
  assign Data_Type_Conversion_out1[36] = Constant_out1[36];
  assign Data_Type_Conversion_out1[37] = Constant_out1[37];
  assign Data_Type_Conversion_out1[38] = Constant_out1[38];
  assign Data_Type_Conversion_out1[39] = Constant_out1[39];
  assign Data_Type_Conversion_out1[40] = Constant_out1[40];
  assign Data_Type_Conversion_out1[41] = Constant_out1[41];
  assign Data_Type_Conversion_out1[42] = Constant_out1[42];
  assign Data_Type_Conversion_out1[43] = Constant_out1[43];
  assign Data_Type_Conversion_out1[44] = Constant_out1[44];
  assign Data_Type_Conversion_out1[45] = Constant_out1[45];
  assign Data_Type_Conversion_out1[46] = Constant_out1[46];
  assign Data_Type_Conversion_out1[47] = Constant_out1[47];
  assign Data_Type_Conversion_out1[48] = Constant_out1[48];
  assign Data_Type_Conversion_out1[49] = Constant_out1[49];
  assign Data_Type_Conversion_out1[50] = Constant_out1[50];
  assign Data_Type_Conversion_out1[51] = Constant_out1[51];
  assign Data_Type_Conversion_out1[52] = Constant_out1[52];
  assign Data_Type_Conversion_out1[53] = Constant_out1[53];
  assign Data_Type_Conversion_out1[54] = Constant_out1[54];
  assign Data_Type_Conversion_out1[55] = Constant_out1[55];
  assign Data_Type_Conversion_out1[56] = Constant_out1[56];
  assign Data_Type_Conversion_out1[57] = Constant_out1[57];
  assign Data_Type_Conversion_out1[58] = Constant_out1[58];
  assign Data_Type_Conversion_out1[59] = Constant_out1[59];
  assign Data_Type_Conversion_out1[60] = Constant_out1[60];
  assign Data_Type_Conversion_out1[61] = Constant_out1[61];
  assign Data_Type_Conversion_out1[62] = Constant_out1[62];
  assign Data_Type_Conversion_out1[63] = Constant_out1[63];



  Butterfly_Stage1_1 u_Butterfly_Stage1_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_0),  // sfix8_En2
                                           .A_m_im(In1_im_0),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[0]),  // ufix1
                                           .B_m_N_2_re(In1_re_64),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_64),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_1_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_1_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_1_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_1_out2_im)  // sfix10_En2
                                           );

  assign Constant1_out1_re[0] = 2'sb01;
  assign Constant1_out1_im[0] = 2'sb00;
  assign Constant1_out1_re[1] = 2'sb00;
  assign Constant1_out1_im[1] = 2'sb11;
  assign Constant1_out1_re[2] = 2'sb01;
  assign Constant1_out1_im[2] = 2'sb00;
  assign Constant1_out1_re[3] = 2'sb00;
  assign Constant1_out1_im[3] = 2'sb11;
  assign Constant1_out1_re[4] = 2'sb01;
  assign Constant1_out1_im[4] = 2'sb00;
  assign Constant1_out1_re[5] = 2'sb00;
  assign Constant1_out1_im[5] = 2'sb11;
  assign Constant1_out1_re[6] = 2'sb01;
  assign Constant1_out1_im[6] = 2'sb00;
  assign Constant1_out1_re[7] = 2'sb00;
  assign Constant1_out1_im[7] = 2'sb11;
  assign Constant1_out1_re[8] = 2'sb01;
  assign Constant1_out1_im[8] = 2'sb00;
  assign Constant1_out1_re[9] = 2'sb00;
  assign Constant1_out1_im[9] = 2'sb11;
  assign Constant1_out1_re[10] = 2'sb01;
  assign Constant1_out1_im[10] = 2'sb00;
  assign Constant1_out1_re[11] = 2'sb00;
  assign Constant1_out1_im[11] = 2'sb11;
  assign Constant1_out1_re[12] = 2'sb01;
  assign Constant1_out1_im[12] = 2'sb00;
  assign Constant1_out1_re[13] = 2'sb00;
  assign Constant1_out1_im[13] = 2'sb11;
  assign Constant1_out1_re[14] = 2'sb01;
  assign Constant1_out1_im[14] = 2'sb00;
  assign Constant1_out1_re[15] = 2'sb00;
  assign Constant1_out1_im[15] = 2'sb11;
  assign Constant1_out1_re[16] = 2'sb01;
  assign Constant1_out1_im[16] = 2'sb00;
  assign Constant1_out1_re[17] = 2'sb00;
  assign Constant1_out1_im[17] = 2'sb11;
  assign Constant1_out1_re[18] = 2'sb01;
  assign Constant1_out1_im[18] = 2'sb00;
  assign Constant1_out1_re[19] = 2'sb00;
  assign Constant1_out1_im[19] = 2'sb11;
  assign Constant1_out1_re[20] = 2'sb01;
  assign Constant1_out1_im[20] = 2'sb00;
  assign Constant1_out1_re[21] = 2'sb00;
  assign Constant1_out1_im[21] = 2'sb11;
  assign Constant1_out1_re[22] = 2'sb01;
  assign Constant1_out1_im[22] = 2'sb00;
  assign Constant1_out1_re[23] = 2'sb00;
  assign Constant1_out1_im[23] = 2'sb11;
  assign Constant1_out1_re[24] = 2'sb01;
  assign Constant1_out1_im[24] = 2'sb00;
  assign Constant1_out1_re[25] = 2'sb00;
  assign Constant1_out1_im[25] = 2'sb11;
  assign Constant1_out1_re[26] = 2'sb01;
  assign Constant1_out1_im[26] = 2'sb00;
  assign Constant1_out1_re[27] = 2'sb00;
  assign Constant1_out1_im[27] = 2'sb11;
  assign Constant1_out1_re[28] = 2'sb01;
  assign Constant1_out1_im[28] = 2'sb00;
  assign Constant1_out1_re[29] = 2'sb00;
  assign Constant1_out1_im[29] = 2'sb11;
  assign Constant1_out1_re[30] = 2'sb01;
  assign Constant1_out1_im[30] = 2'sb00;
  assign Constant1_out1_re[31] = 2'sb00;
  assign Constant1_out1_im[31] = 2'sb11;
  assign Constant1_out1_re[32] = 2'sb01;
  assign Constant1_out1_im[32] = 2'sb00;
  assign Constant1_out1_re[33] = 2'sb00;
  assign Constant1_out1_im[33] = 2'sb11;
  assign Constant1_out1_re[34] = 2'sb01;
  assign Constant1_out1_im[34] = 2'sb00;
  assign Constant1_out1_re[35] = 2'sb00;
  assign Constant1_out1_im[35] = 2'sb11;
  assign Constant1_out1_re[36] = 2'sb01;
  assign Constant1_out1_im[36] = 2'sb00;
  assign Constant1_out1_re[37] = 2'sb00;
  assign Constant1_out1_im[37] = 2'sb11;
  assign Constant1_out1_re[38] = 2'sb01;
  assign Constant1_out1_im[38] = 2'sb00;
  assign Constant1_out1_re[39] = 2'sb00;
  assign Constant1_out1_im[39] = 2'sb11;
  assign Constant1_out1_re[40] = 2'sb01;
  assign Constant1_out1_im[40] = 2'sb00;
  assign Constant1_out1_re[41] = 2'sb00;
  assign Constant1_out1_im[41] = 2'sb11;
  assign Constant1_out1_re[42] = 2'sb01;
  assign Constant1_out1_im[42] = 2'sb00;
  assign Constant1_out1_re[43] = 2'sb00;
  assign Constant1_out1_im[43] = 2'sb11;
  assign Constant1_out1_re[44] = 2'sb01;
  assign Constant1_out1_im[44] = 2'sb00;
  assign Constant1_out1_re[45] = 2'sb00;
  assign Constant1_out1_im[45] = 2'sb11;
  assign Constant1_out1_re[46] = 2'sb01;
  assign Constant1_out1_im[46] = 2'sb00;
  assign Constant1_out1_re[47] = 2'sb00;
  assign Constant1_out1_im[47] = 2'sb11;
  assign Constant1_out1_re[48] = 2'sb01;
  assign Constant1_out1_im[48] = 2'sb00;
  assign Constant1_out1_re[49] = 2'sb00;
  assign Constant1_out1_im[49] = 2'sb11;
  assign Constant1_out1_re[50] = 2'sb01;
  assign Constant1_out1_im[50] = 2'sb00;
  assign Constant1_out1_re[51] = 2'sb00;
  assign Constant1_out1_im[51] = 2'sb11;
  assign Constant1_out1_re[52] = 2'sb01;
  assign Constant1_out1_im[52] = 2'sb00;
  assign Constant1_out1_re[53] = 2'sb00;
  assign Constant1_out1_im[53] = 2'sb11;
  assign Constant1_out1_re[54] = 2'sb01;
  assign Constant1_out1_im[54] = 2'sb00;
  assign Constant1_out1_re[55] = 2'sb00;
  assign Constant1_out1_im[55] = 2'sb11;
  assign Constant1_out1_re[56] = 2'sb01;
  assign Constant1_out1_im[56] = 2'sb00;
  assign Constant1_out1_re[57] = 2'sb00;
  assign Constant1_out1_im[57] = 2'sb11;
  assign Constant1_out1_re[58] = 2'sb01;
  assign Constant1_out1_im[58] = 2'sb00;
  assign Constant1_out1_re[59] = 2'sb00;
  assign Constant1_out1_im[59] = 2'sb11;
  assign Constant1_out1_re[60] = 2'sb01;
  assign Constant1_out1_im[60] = 2'sb00;
  assign Constant1_out1_re[61] = 2'sb00;
  assign Constant1_out1_im[61] = 2'sb11;
  assign Constant1_out1_re[62] = 2'sb01;
  assign Constant1_out1_im[62] = 2'sb00;
  assign Constant1_out1_re[63] = 2'sb00;
  assign Constant1_out1_im[63] = 2'sb11;



  assign Data_Type_Conversion1_out1_re[0] = Constant1_out1_re[0];
  assign Data_Type_Conversion1_out1_im[0] = Constant1_out1_im[0];
  assign Data_Type_Conversion1_out1_re[1] = Constant1_out1_re[1];
  assign Data_Type_Conversion1_out1_im[1] = Constant1_out1_im[1];
  assign Data_Type_Conversion1_out1_re[2] = Constant1_out1_re[2];
  assign Data_Type_Conversion1_out1_im[2] = Constant1_out1_im[2];
  assign Data_Type_Conversion1_out1_re[3] = Constant1_out1_re[3];
  assign Data_Type_Conversion1_out1_im[3] = Constant1_out1_im[3];
  assign Data_Type_Conversion1_out1_re[4] = Constant1_out1_re[4];
  assign Data_Type_Conversion1_out1_im[4] = Constant1_out1_im[4];
  assign Data_Type_Conversion1_out1_re[5] = Constant1_out1_re[5];
  assign Data_Type_Conversion1_out1_im[5] = Constant1_out1_im[5];
  assign Data_Type_Conversion1_out1_re[6] = Constant1_out1_re[6];
  assign Data_Type_Conversion1_out1_im[6] = Constant1_out1_im[6];
  assign Data_Type_Conversion1_out1_re[7] = Constant1_out1_re[7];
  assign Data_Type_Conversion1_out1_im[7] = Constant1_out1_im[7];
  assign Data_Type_Conversion1_out1_re[8] = Constant1_out1_re[8];
  assign Data_Type_Conversion1_out1_im[8] = Constant1_out1_im[8];
  assign Data_Type_Conversion1_out1_re[9] = Constant1_out1_re[9];
  assign Data_Type_Conversion1_out1_im[9] = Constant1_out1_im[9];
  assign Data_Type_Conversion1_out1_re[10] = Constant1_out1_re[10];
  assign Data_Type_Conversion1_out1_im[10] = Constant1_out1_im[10];
  assign Data_Type_Conversion1_out1_re[11] = Constant1_out1_re[11];
  assign Data_Type_Conversion1_out1_im[11] = Constant1_out1_im[11];
  assign Data_Type_Conversion1_out1_re[12] = Constant1_out1_re[12];
  assign Data_Type_Conversion1_out1_im[12] = Constant1_out1_im[12];
  assign Data_Type_Conversion1_out1_re[13] = Constant1_out1_re[13];
  assign Data_Type_Conversion1_out1_im[13] = Constant1_out1_im[13];
  assign Data_Type_Conversion1_out1_re[14] = Constant1_out1_re[14];
  assign Data_Type_Conversion1_out1_im[14] = Constant1_out1_im[14];
  assign Data_Type_Conversion1_out1_re[15] = Constant1_out1_re[15];
  assign Data_Type_Conversion1_out1_im[15] = Constant1_out1_im[15];
  assign Data_Type_Conversion1_out1_re[16] = Constant1_out1_re[16];
  assign Data_Type_Conversion1_out1_im[16] = Constant1_out1_im[16];
  assign Data_Type_Conversion1_out1_re[17] = Constant1_out1_re[17];
  assign Data_Type_Conversion1_out1_im[17] = Constant1_out1_im[17];
  assign Data_Type_Conversion1_out1_re[18] = Constant1_out1_re[18];
  assign Data_Type_Conversion1_out1_im[18] = Constant1_out1_im[18];
  assign Data_Type_Conversion1_out1_re[19] = Constant1_out1_re[19];
  assign Data_Type_Conversion1_out1_im[19] = Constant1_out1_im[19];
  assign Data_Type_Conversion1_out1_re[20] = Constant1_out1_re[20];
  assign Data_Type_Conversion1_out1_im[20] = Constant1_out1_im[20];
  assign Data_Type_Conversion1_out1_re[21] = Constant1_out1_re[21];
  assign Data_Type_Conversion1_out1_im[21] = Constant1_out1_im[21];
  assign Data_Type_Conversion1_out1_re[22] = Constant1_out1_re[22];
  assign Data_Type_Conversion1_out1_im[22] = Constant1_out1_im[22];
  assign Data_Type_Conversion1_out1_re[23] = Constant1_out1_re[23];
  assign Data_Type_Conversion1_out1_im[23] = Constant1_out1_im[23];
  assign Data_Type_Conversion1_out1_re[24] = Constant1_out1_re[24];
  assign Data_Type_Conversion1_out1_im[24] = Constant1_out1_im[24];
  assign Data_Type_Conversion1_out1_re[25] = Constant1_out1_re[25];
  assign Data_Type_Conversion1_out1_im[25] = Constant1_out1_im[25];
  assign Data_Type_Conversion1_out1_re[26] = Constant1_out1_re[26];
  assign Data_Type_Conversion1_out1_im[26] = Constant1_out1_im[26];
  assign Data_Type_Conversion1_out1_re[27] = Constant1_out1_re[27];
  assign Data_Type_Conversion1_out1_im[27] = Constant1_out1_im[27];
  assign Data_Type_Conversion1_out1_re[28] = Constant1_out1_re[28];
  assign Data_Type_Conversion1_out1_im[28] = Constant1_out1_im[28];
  assign Data_Type_Conversion1_out1_re[29] = Constant1_out1_re[29];
  assign Data_Type_Conversion1_out1_im[29] = Constant1_out1_im[29];
  assign Data_Type_Conversion1_out1_re[30] = Constant1_out1_re[30];
  assign Data_Type_Conversion1_out1_im[30] = Constant1_out1_im[30];
  assign Data_Type_Conversion1_out1_re[31] = Constant1_out1_re[31];
  assign Data_Type_Conversion1_out1_im[31] = Constant1_out1_im[31];
  assign Data_Type_Conversion1_out1_re[32] = Constant1_out1_re[32];
  assign Data_Type_Conversion1_out1_im[32] = Constant1_out1_im[32];
  assign Data_Type_Conversion1_out1_re[33] = Constant1_out1_re[33];
  assign Data_Type_Conversion1_out1_im[33] = Constant1_out1_im[33];
  assign Data_Type_Conversion1_out1_re[34] = Constant1_out1_re[34];
  assign Data_Type_Conversion1_out1_im[34] = Constant1_out1_im[34];
  assign Data_Type_Conversion1_out1_re[35] = Constant1_out1_re[35];
  assign Data_Type_Conversion1_out1_im[35] = Constant1_out1_im[35];
  assign Data_Type_Conversion1_out1_re[36] = Constant1_out1_re[36];
  assign Data_Type_Conversion1_out1_im[36] = Constant1_out1_im[36];
  assign Data_Type_Conversion1_out1_re[37] = Constant1_out1_re[37];
  assign Data_Type_Conversion1_out1_im[37] = Constant1_out1_im[37];
  assign Data_Type_Conversion1_out1_re[38] = Constant1_out1_re[38];
  assign Data_Type_Conversion1_out1_im[38] = Constant1_out1_im[38];
  assign Data_Type_Conversion1_out1_re[39] = Constant1_out1_re[39];
  assign Data_Type_Conversion1_out1_im[39] = Constant1_out1_im[39];
  assign Data_Type_Conversion1_out1_re[40] = Constant1_out1_re[40];
  assign Data_Type_Conversion1_out1_im[40] = Constant1_out1_im[40];
  assign Data_Type_Conversion1_out1_re[41] = Constant1_out1_re[41];
  assign Data_Type_Conversion1_out1_im[41] = Constant1_out1_im[41];
  assign Data_Type_Conversion1_out1_re[42] = Constant1_out1_re[42];
  assign Data_Type_Conversion1_out1_im[42] = Constant1_out1_im[42];
  assign Data_Type_Conversion1_out1_re[43] = Constant1_out1_re[43];
  assign Data_Type_Conversion1_out1_im[43] = Constant1_out1_im[43];
  assign Data_Type_Conversion1_out1_re[44] = Constant1_out1_re[44];
  assign Data_Type_Conversion1_out1_im[44] = Constant1_out1_im[44];
  assign Data_Type_Conversion1_out1_re[45] = Constant1_out1_re[45];
  assign Data_Type_Conversion1_out1_im[45] = Constant1_out1_im[45];
  assign Data_Type_Conversion1_out1_re[46] = Constant1_out1_re[46];
  assign Data_Type_Conversion1_out1_im[46] = Constant1_out1_im[46];
  assign Data_Type_Conversion1_out1_re[47] = Constant1_out1_re[47];
  assign Data_Type_Conversion1_out1_im[47] = Constant1_out1_im[47];
  assign Data_Type_Conversion1_out1_re[48] = Constant1_out1_re[48];
  assign Data_Type_Conversion1_out1_im[48] = Constant1_out1_im[48];
  assign Data_Type_Conversion1_out1_re[49] = Constant1_out1_re[49];
  assign Data_Type_Conversion1_out1_im[49] = Constant1_out1_im[49];
  assign Data_Type_Conversion1_out1_re[50] = Constant1_out1_re[50];
  assign Data_Type_Conversion1_out1_im[50] = Constant1_out1_im[50];
  assign Data_Type_Conversion1_out1_re[51] = Constant1_out1_re[51];
  assign Data_Type_Conversion1_out1_im[51] = Constant1_out1_im[51];
  assign Data_Type_Conversion1_out1_re[52] = Constant1_out1_re[52];
  assign Data_Type_Conversion1_out1_im[52] = Constant1_out1_im[52];
  assign Data_Type_Conversion1_out1_re[53] = Constant1_out1_re[53];
  assign Data_Type_Conversion1_out1_im[53] = Constant1_out1_im[53];
  assign Data_Type_Conversion1_out1_re[54] = Constant1_out1_re[54];
  assign Data_Type_Conversion1_out1_im[54] = Constant1_out1_im[54];
  assign Data_Type_Conversion1_out1_re[55] = Constant1_out1_re[55];
  assign Data_Type_Conversion1_out1_im[55] = Constant1_out1_im[55];
  assign Data_Type_Conversion1_out1_re[56] = Constant1_out1_re[56];
  assign Data_Type_Conversion1_out1_im[56] = Constant1_out1_im[56];
  assign Data_Type_Conversion1_out1_re[57] = Constant1_out1_re[57];
  assign Data_Type_Conversion1_out1_im[57] = Constant1_out1_im[57];
  assign Data_Type_Conversion1_out1_re[58] = Constant1_out1_re[58];
  assign Data_Type_Conversion1_out1_im[58] = Constant1_out1_im[58];
  assign Data_Type_Conversion1_out1_re[59] = Constant1_out1_re[59];
  assign Data_Type_Conversion1_out1_im[59] = Constant1_out1_im[59];
  assign Data_Type_Conversion1_out1_re[60] = Constant1_out1_re[60];
  assign Data_Type_Conversion1_out1_im[60] = Constant1_out1_im[60];
  assign Data_Type_Conversion1_out1_re[61] = Constant1_out1_re[61];
  assign Data_Type_Conversion1_out1_im[61] = Constant1_out1_im[61];
  assign Data_Type_Conversion1_out1_re[62] = Constant1_out1_re[62];
  assign Data_Type_Conversion1_out1_im[62] = Constant1_out1_im[62];
  assign Data_Type_Conversion1_out1_re[63] = Constant1_out1_re[63];
  assign Data_Type_Conversion1_out1_im[63] = Constant1_out1_im[63];



  Butterfly_Stage1_2 u_Butterfly_Stage1_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_32),  // sfix8_En2
                                           .A_m_im(In1_im_32),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[1]),  // ufix1
                                           .B_m_N_2_re(In1_re_96),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_96),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_2_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_2_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_2_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_2_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_1 u_Butterfly_Stage2_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_1_out1_re),  // sfix9_En2
                                           .A_m_im(Butterfly_Stage1_1_out1_im),  // sfix9_En2
                                           .W_re(Data_Type_Conversion1_out1_re[0]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[0]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_2_out1_re),  // sfix9_En2
                                           .B_m_N_2_im(Butterfly_Stage1_2_out1_im),  // sfix9_En2
                                           .X_m_re(Butterfly_Stage2_1_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_1_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_1_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_1_out2_im)  // sfix10_En2
                                           );

  assign Constant2_out1_re[0] = 10'sb0100000000;
  assign Constant2_out1_im[0] = 10'sb0000000000;
  assign Constant2_out1_re[1] = 10'sb0010110101;
  assign Constant2_out1_im[1] = 10'sb1101001011;
  assign Constant2_out1_re[2] = 10'sb0000000000;
  assign Constant2_out1_im[2] = 10'sb1100000000;
  assign Constant2_out1_re[3] = 10'sb1101001011;
  assign Constant2_out1_im[3] = 10'sb1101001011;
  assign Constant2_out1_re[4] = 10'sb0100000000;
  assign Constant2_out1_im[4] = 10'sb0000000000;
  assign Constant2_out1_re[5] = 10'sb0010110101;
  assign Constant2_out1_im[5] = 10'sb1101001011;
  assign Constant2_out1_re[6] = 10'sb0000000000;
  assign Constant2_out1_im[6] = 10'sb1100000000;
  assign Constant2_out1_re[7] = 10'sb1101001011;
  assign Constant2_out1_im[7] = 10'sb1101001011;
  assign Constant2_out1_re[8] = 10'sb0100000000;
  assign Constant2_out1_im[8] = 10'sb0000000000;
  assign Constant2_out1_re[9] = 10'sb0010110101;
  assign Constant2_out1_im[9] = 10'sb1101001011;
  assign Constant2_out1_re[10] = 10'sb0000000000;
  assign Constant2_out1_im[10] = 10'sb1100000000;
  assign Constant2_out1_re[11] = 10'sb1101001011;
  assign Constant2_out1_im[11] = 10'sb1101001011;
  assign Constant2_out1_re[12] = 10'sb0100000000;
  assign Constant2_out1_im[12] = 10'sb0000000000;
  assign Constant2_out1_re[13] = 10'sb0010110101;
  assign Constant2_out1_im[13] = 10'sb1101001011;
  assign Constant2_out1_re[14] = 10'sb0000000000;
  assign Constant2_out1_im[14] = 10'sb1100000000;
  assign Constant2_out1_re[15] = 10'sb1101001011;
  assign Constant2_out1_im[15] = 10'sb1101001011;
  assign Constant2_out1_re[16] = 10'sb0100000000;
  assign Constant2_out1_im[16] = 10'sb0000000000;
  assign Constant2_out1_re[17] = 10'sb0010110101;
  assign Constant2_out1_im[17] = 10'sb1101001011;
  assign Constant2_out1_re[18] = 10'sb0000000000;
  assign Constant2_out1_im[18] = 10'sb1100000000;
  assign Constant2_out1_re[19] = 10'sb1101001011;
  assign Constant2_out1_im[19] = 10'sb1101001011;
  assign Constant2_out1_re[20] = 10'sb0100000000;
  assign Constant2_out1_im[20] = 10'sb0000000000;
  assign Constant2_out1_re[21] = 10'sb0010110101;
  assign Constant2_out1_im[21] = 10'sb1101001011;
  assign Constant2_out1_re[22] = 10'sb0000000000;
  assign Constant2_out1_im[22] = 10'sb1100000000;
  assign Constant2_out1_re[23] = 10'sb1101001011;
  assign Constant2_out1_im[23] = 10'sb1101001011;
  assign Constant2_out1_re[24] = 10'sb0100000000;
  assign Constant2_out1_im[24] = 10'sb0000000000;
  assign Constant2_out1_re[25] = 10'sb0010110101;
  assign Constant2_out1_im[25] = 10'sb1101001011;
  assign Constant2_out1_re[26] = 10'sb0000000000;
  assign Constant2_out1_im[26] = 10'sb1100000000;
  assign Constant2_out1_re[27] = 10'sb1101001011;
  assign Constant2_out1_im[27] = 10'sb1101001011;
  assign Constant2_out1_re[28] = 10'sb0100000000;
  assign Constant2_out1_im[28] = 10'sb0000000000;
  assign Constant2_out1_re[29] = 10'sb0010110101;
  assign Constant2_out1_im[29] = 10'sb1101001011;
  assign Constant2_out1_re[30] = 10'sb0000000000;
  assign Constant2_out1_im[30] = 10'sb1100000000;
  assign Constant2_out1_re[31] = 10'sb1101001011;
  assign Constant2_out1_im[31] = 10'sb1101001011;
  assign Constant2_out1_re[32] = 10'sb0100000000;
  assign Constant2_out1_im[32] = 10'sb0000000000;
  assign Constant2_out1_re[33] = 10'sb0010110101;
  assign Constant2_out1_im[33] = 10'sb1101001011;
  assign Constant2_out1_re[34] = 10'sb0000000000;
  assign Constant2_out1_im[34] = 10'sb1100000000;
  assign Constant2_out1_re[35] = 10'sb1101001011;
  assign Constant2_out1_im[35] = 10'sb1101001011;
  assign Constant2_out1_re[36] = 10'sb0100000000;
  assign Constant2_out1_im[36] = 10'sb0000000000;
  assign Constant2_out1_re[37] = 10'sb0010110101;
  assign Constant2_out1_im[37] = 10'sb1101001011;
  assign Constant2_out1_re[38] = 10'sb0000000000;
  assign Constant2_out1_im[38] = 10'sb1100000000;
  assign Constant2_out1_re[39] = 10'sb1101001011;
  assign Constant2_out1_im[39] = 10'sb1101001011;
  assign Constant2_out1_re[40] = 10'sb0100000000;
  assign Constant2_out1_im[40] = 10'sb0000000000;
  assign Constant2_out1_re[41] = 10'sb0010110101;
  assign Constant2_out1_im[41] = 10'sb1101001011;
  assign Constant2_out1_re[42] = 10'sb0000000000;
  assign Constant2_out1_im[42] = 10'sb1100000000;
  assign Constant2_out1_re[43] = 10'sb1101001011;
  assign Constant2_out1_im[43] = 10'sb1101001011;
  assign Constant2_out1_re[44] = 10'sb0100000000;
  assign Constant2_out1_im[44] = 10'sb0000000000;
  assign Constant2_out1_re[45] = 10'sb0010110101;
  assign Constant2_out1_im[45] = 10'sb1101001011;
  assign Constant2_out1_re[46] = 10'sb0000000000;
  assign Constant2_out1_im[46] = 10'sb1100000000;
  assign Constant2_out1_re[47] = 10'sb1101001011;
  assign Constant2_out1_im[47] = 10'sb1101001011;
  assign Constant2_out1_re[48] = 10'sb0100000000;
  assign Constant2_out1_im[48] = 10'sb0000000000;
  assign Constant2_out1_re[49] = 10'sb0010110101;
  assign Constant2_out1_im[49] = 10'sb1101001011;
  assign Constant2_out1_re[50] = 10'sb0000000000;
  assign Constant2_out1_im[50] = 10'sb1100000000;
  assign Constant2_out1_re[51] = 10'sb1101001011;
  assign Constant2_out1_im[51] = 10'sb1101001011;
  assign Constant2_out1_re[52] = 10'sb0100000000;
  assign Constant2_out1_im[52] = 10'sb0000000000;
  assign Constant2_out1_re[53] = 10'sb0010110101;
  assign Constant2_out1_im[53] = 10'sb1101001011;
  assign Constant2_out1_re[54] = 10'sb0000000000;
  assign Constant2_out1_im[54] = 10'sb1100000000;
  assign Constant2_out1_re[55] = 10'sb1101001011;
  assign Constant2_out1_im[55] = 10'sb1101001011;
  assign Constant2_out1_re[56] = 10'sb0100000000;
  assign Constant2_out1_im[56] = 10'sb0000000000;
  assign Constant2_out1_re[57] = 10'sb0010110101;
  assign Constant2_out1_im[57] = 10'sb1101001011;
  assign Constant2_out1_re[58] = 10'sb0000000000;
  assign Constant2_out1_im[58] = 10'sb1100000000;
  assign Constant2_out1_re[59] = 10'sb1101001011;
  assign Constant2_out1_im[59] = 10'sb1101001011;
  assign Constant2_out1_re[60] = 10'sb0100000000;
  assign Constant2_out1_im[60] = 10'sb0000000000;
  assign Constant2_out1_re[61] = 10'sb0010110101;
  assign Constant2_out1_im[61] = 10'sb1101001011;
  assign Constant2_out1_re[62] = 10'sb0000000000;
  assign Constant2_out1_im[62] = 10'sb1100000000;
  assign Constant2_out1_re[63] = 10'sb1101001011;
  assign Constant2_out1_im[63] = 10'sb1101001011;



  assign Data_Type_Conversion2_out1_re[0] = Constant2_out1_re[0];
  assign Data_Type_Conversion2_out1_im[0] = Constant2_out1_im[0];
  assign Data_Type_Conversion2_out1_re[1] = Constant2_out1_re[1];
  assign Data_Type_Conversion2_out1_im[1] = Constant2_out1_im[1];
  assign Data_Type_Conversion2_out1_re[2] = Constant2_out1_re[2];
  assign Data_Type_Conversion2_out1_im[2] = Constant2_out1_im[2];
  assign Data_Type_Conversion2_out1_re[3] = Constant2_out1_re[3];
  assign Data_Type_Conversion2_out1_im[3] = Constant2_out1_im[3];
  assign Data_Type_Conversion2_out1_re[4] = Constant2_out1_re[4];
  assign Data_Type_Conversion2_out1_im[4] = Constant2_out1_im[4];
  assign Data_Type_Conversion2_out1_re[5] = Constant2_out1_re[5];
  assign Data_Type_Conversion2_out1_im[5] = Constant2_out1_im[5];
  assign Data_Type_Conversion2_out1_re[6] = Constant2_out1_re[6];
  assign Data_Type_Conversion2_out1_im[6] = Constant2_out1_im[6];
  assign Data_Type_Conversion2_out1_re[7] = Constant2_out1_re[7];
  assign Data_Type_Conversion2_out1_im[7] = Constant2_out1_im[7];
  assign Data_Type_Conversion2_out1_re[8] = Constant2_out1_re[8];
  assign Data_Type_Conversion2_out1_im[8] = Constant2_out1_im[8];
  assign Data_Type_Conversion2_out1_re[9] = Constant2_out1_re[9];
  assign Data_Type_Conversion2_out1_im[9] = Constant2_out1_im[9];
  assign Data_Type_Conversion2_out1_re[10] = Constant2_out1_re[10];
  assign Data_Type_Conversion2_out1_im[10] = Constant2_out1_im[10];
  assign Data_Type_Conversion2_out1_re[11] = Constant2_out1_re[11];
  assign Data_Type_Conversion2_out1_im[11] = Constant2_out1_im[11];
  assign Data_Type_Conversion2_out1_re[12] = Constant2_out1_re[12];
  assign Data_Type_Conversion2_out1_im[12] = Constant2_out1_im[12];
  assign Data_Type_Conversion2_out1_re[13] = Constant2_out1_re[13];
  assign Data_Type_Conversion2_out1_im[13] = Constant2_out1_im[13];
  assign Data_Type_Conversion2_out1_re[14] = Constant2_out1_re[14];
  assign Data_Type_Conversion2_out1_im[14] = Constant2_out1_im[14];
  assign Data_Type_Conversion2_out1_re[15] = Constant2_out1_re[15];
  assign Data_Type_Conversion2_out1_im[15] = Constant2_out1_im[15];
  assign Data_Type_Conversion2_out1_re[16] = Constant2_out1_re[16];
  assign Data_Type_Conversion2_out1_im[16] = Constant2_out1_im[16];
  assign Data_Type_Conversion2_out1_re[17] = Constant2_out1_re[17];
  assign Data_Type_Conversion2_out1_im[17] = Constant2_out1_im[17];
  assign Data_Type_Conversion2_out1_re[18] = Constant2_out1_re[18];
  assign Data_Type_Conversion2_out1_im[18] = Constant2_out1_im[18];
  assign Data_Type_Conversion2_out1_re[19] = Constant2_out1_re[19];
  assign Data_Type_Conversion2_out1_im[19] = Constant2_out1_im[19];
  assign Data_Type_Conversion2_out1_re[20] = Constant2_out1_re[20];
  assign Data_Type_Conversion2_out1_im[20] = Constant2_out1_im[20];
  assign Data_Type_Conversion2_out1_re[21] = Constant2_out1_re[21];
  assign Data_Type_Conversion2_out1_im[21] = Constant2_out1_im[21];
  assign Data_Type_Conversion2_out1_re[22] = Constant2_out1_re[22];
  assign Data_Type_Conversion2_out1_im[22] = Constant2_out1_im[22];
  assign Data_Type_Conversion2_out1_re[23] = Constant2_out1_re[23];
  assign Data_Type_Conversion2_out1_im[23] = Constant2_out1_im[23];
  assign Data_Type_Conversion2_out1_re[24] = Constant2_out1_re[24];
  assign Data_Type_Conversion2_out1_im[24] = Constant2_out1_im[24];
  assign Data_Type_Conversion2_out1_re[25] = Constant2_out1_re[25];
  assign Data_Type_Conversion2_out1_im[25] = Constant2_out1_im[25];
  assign Data_Type_Conversion2_out1_re[26] = Constant2_out1_re[26];
  assign Data_Type_Conversion2_out1_im[26] = Constant2_out1_im[26];
  assign Data_Type_Conversion2_out1_re[27] = Constant2_out1_re[27];
  assign Data_Type_Conversion2_out1_im[27] = Constant2_out1_im[27];
  assign Data_Type_Conversion2_out1_re[28] = Constant2_out1_re[28];
  assign Data_Type_Conversion2_out1_im[28] = Constant2_out1_im[28];
  assign Data_Type_Conversion2_out1_re[29] = Constant2_out1_re[29];
  assign Data_Type_Conversion2_out1_im[29] = Constant2_out1_im[29];
  assign Data_Type_Conversion2_out1_re[30] = Constant2_out1_re[30];
  assign Data_Type_Conversion2_out1_im[30] = Constant2_out1_im[30];
  assign Data_Type_Conversion2_out1_re[31] = Constant2_out1_re[31];
  assign Data_Type_Conversion2_out1_im[31] = Constant2_out1_im[31];
  assign Data_Type_Conversion2_out1_re[32] = Constant2_out1_re[32];
  assign Data_Type_Conversion2_out1_im[32] = Constant2_out1_im[32];
  assign Data_Type_Conversion2_out1_re[33] = Constant2_out1_re[33];
  assign Data_Type_Conversion2_out1_im[33] = Constant2_out1_im[33];
  assign Data_Type_Conversion2_out1_re[34] = Constant2_out1_re[34];
  assign Data_Type_Conversion2_out1_im[34] = Constant2_out1_im[34];
  assign Data_Type_Conversion2_out1_re[35] = Constant2_out1_re[35];
  assign Data_Type_Conversion2_out1_im[35] = Constant2_out1_im[35];
  assign Data_Type_Conversion2_out1_re[36] = Constant2_out1_re[36];
  assign Data_Type_Conversion2_out1_im[36] = Constant2_out1_im[36];
  assign Data_Type_Conversion2_out1_re[37] = Constant2_out1_re[37];
  assign Data_Type_Conversion2_out1_im[37] = Constant2_out1_im[37];
  assign Data_Type_Conversion2_out1_re[38] = Constant2_out1_re[38];
  assign Data_Type_Conversion2_out1_im[38] = Constant2_out1_im[38];
  assign Data_Type_Conversion2_out1_re[39] = Constant2_out1_re[39];
  assign Data_Type_Conversion2_out1_im[39] = Constant2_out1_im[39];
  assign Data_Type_Conversion2_out1_re[40] = Constant2_out1_re[40];
  assign Data_Type_Conversion2_out1_im[40] = Constant2_out1_im[40];
  assign Data_Type_Conversion2_out1_re[41] = Constant2_out1_re[41];
  assign Data_Type_Conversion2_out1_im[41] = Constant2_out1_im[41];
  assign Data_Type_Conversion2_out1_re[42] = Constant2_out1_re[42];
  assign Data_Type_Conversion2_out1_im[42] = Constant2_out1_im[42];
  assign Data_Type_Conversion2_out1_re[43] = Constant2_out1_re[43];
  assign Data_Type_Conversion2_out1_im[43] = Constant2_out1_im[43];
  assign Data_Type_Conversion2_out1_re[44] = Constant2_out1_re[44];
  assign Data_Type_Conversion2_out1_im[44] = Constant2_out1_im[44];
  assign Data_Type_Conversion2_out1_re[45] = Constant2_out1_re[45];
  assign Data_Type_Conversion2_out1_im[45] = Constant2_out1_im[45];
  assign Data_Type_Conversion2_out1_re[46] = Constant2_out1_re[46];
  assign Data_Type_Conversion2_out1_im[46] = Constant2_out1_im[46];
  assign Data_Type_Conversion2_out1_re[47] = Constant2_out1_re[47];
  assign Data_Type_Conversion2_out1_im[47] = Constant2_out1_im[47];
  assign Data_Type_Conversion2_out1_re[48] = Constant2_out1_re[48];
  assign Data_Type_Conversion2_out1_im[48] = Constant2_out1_im[48];
  assign Data_Type_Conversion2_out1_re[49] = Constant2_out1_re[49];
  assign Data_Type_Conversion2_out1_im[49] = Constant2_out1_im[49];
  assign Data_Type_Conversion2_out1_re[50] = Constant2_out1_re[50];
  assign Data_Type_Conversion2_out1_im[50] = Constant2_out1_im[50];
  assign Data_Type_Conversion2_out1_re[51] = Constant2_out1_re[51];
  assign Data_Type_Conversion2_out1_im[51] = Constant2_out1_im[51];
  assign Data_Type_Conversion2_out1_re[52] = Constant2_out1_re[52];
  assign Data_Type_Conversion2_out1_im[52] = Constant2_out1_im[52];
  assign Data_Type_Conversion2_out1_re[53] = Constant2_out1_re[53];
  assign Data_Type_Conversion2_out1_im[53] = Constant2_out1_im[53];
  assign Data_Type_Conversion2_out1_re[54] = Constant2_out1_re[54];
  assign Data_Type_Conversion2_out1_im[54] = Constant2_out1_im[54];
  assign Data_Type_Conversion2_out1_re[55] = Constant2_out1_re[55];
  assign Data_Type_Conversion2_out1_im[55] = Constant2_out1_im[55];
  assign Data_Type_Conversion2_out1_re[56] = Constant2_out1_re[56];
  assign Data_Type_Conversion2_out1_im[56] = Constant2_out1_im[56];
  assign Data_Type_Conversion2_out1_re[57] = Constant2_out1_re[57];
  assign Data_Type_Conversion2_out1_im[57] = Constant2_out1_im[57];
  assign Data_Type_Conversion2_out1_re[58] = Constant2_out1_re[58];
  assign Data_Type_Conversion2_out1_im[58] = Constant2_out1_im[58];
  assign Data_Type_Conversion2_out1_re[59] = Constant2_out1_re[59];
  assign Data_Type_Conversion2_out1_im[59] = Constant2_out1_im[59];
  assign Data_Type_Conversion2_out1_re[60] = Constant2_out1_re[60];
  assign Data_Type_Conversion2_out1_im[60] = Constant2_out1_im[60];
  assign Data_Type_Conversion2_out1_re[61] = Constant2_out1_re[61];
  assign Data_Type_Conversion2_out1_im[61] = Constant2_out1_im[61];
  assign Data_Type_Conversion2_out1_re[62] = Constant2_out1_re[62];
  assign Data_Type_Conversion2_out1_im[62] = Constant2_out1_im[62];
  assign Data_Type_Conversion2_out1_re[63] = Constant2_out1_re[63];
  assign Data_Type_Conversion2_out1_im[63] = Constant2_out1_im[63];



  Butterfly_Stage1_3 u_Butterfly_Stage1_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_16),  // sfix8_En2
                                           .A_m_im(In1_im_16),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[2]),  // ufix1
                                           .B_m_N_2_re(In1_re_80),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_80),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_3_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_3_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_3_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_3_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_4 u_Butterfly_Stage1_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_48),  // sfix8_En2
                                           .A_m_im(In1_im_48),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[3]),  // ufix1
                                           .B_m_N_2_re(In1_re_112),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_112),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_4_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_4_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_4_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_4_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_3 u_Butterfly_Stage2_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_3_out1_re),  // sfix9_En2
                                           .A_m_im(Butterfly_Stage1_3_out1_im),  // sfix9_En2
                                           .W_re(Data_Type_Conversion1_out1_re[2]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[2]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_4_out1_re),  // sfix9_En2
                                           .B_m_N_2_im(Butterfly_Stage1_4_out1_im),  // sfix9_En2
                                           .X_m_re(Butterfly_Stage2_3_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_3_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_3_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_3_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage3_1 u_Butterfly_Stage3_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_1_out1_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_1_out1_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[0]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[0]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_3_out1_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_3_out1_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_1_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_1_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_1_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_1_out2_im)  // sfix19_En10
                                           );

  assign Constant3_out1_re[0] = 16'sb0100000000000000;
  assign Constant3_out1_im[0] = 16'sb0000000000000000;
  assign Constant3_out1_re[1] = 16'sb0011101100100001;
  assign Constant3_out1_im[1] = 16'sb1110011110000010;
  assign Constant3_out1_re[2] = 16'sb0010110101000001;
  assign Constant3_out1_im[2] = 16'sb1101001010111111;
  assign Constant3_out1_re[3] = 16'sb0001100001111110;
  assign Constant3_out1_im[3] = 16'sb1100010011011111;
  assign Constant3_out1_re[4] = 16'sb0000000000000000;
  assign Constant3_out1_im[4] = 16'sb1100000000000000;
  assign Constant3_out1_re[5] = 16'sb1110011110000010;
  assign Constant3_out1_im[5] = 16'sb1100010011011111;
  assign Constant3_out1_re[6] = 16'sb1101001010111111;
  assign Constant3_out1_im[6] = 16'sb1101001010111111;
  assign Constant3_out1_re[7] = 16'sb1100010011011111;
  assign Constant3_out1_im[7] = 16'sb1110011110000010;
  assign Constant3_out1_re[8] = 16'sb0100000000000000;
  assign Constant3_out1_im[8] = 16'sb0000000000000000;
  assign Constant3_out1_re[9] = 16'sb0011101100100001;
  assign Constant3_out1_im[9] = 16'sb1110011110000010;
  assign Constant3_out1_re[10] = 16'sb0010110101000001;
  assign Constant3_out1_im[10] = 16'sb1101001010111111;
  assign Constant3_out1_re[11] = 16'sb0001100001111110;
  assign Constant3_out1_im[11] = 16'sb1100010011011111;
  assign Constant3_out1_re[12] = 16'sb0000000000000000;
  assign Constant3_out1_im[12] = 16'sb1100000000000000;
  assign Constant3_out1_re[13] = 16'sb1110011110000010;
  assign Constant3_out1_im[13] = 16'sb1100010011011111;
  assign Constant3_out1_re[14] = 16'sb1101001010111111;
  assign Constant3_out1_im[14] = 16'sb1101001010111111;
  assign Constant3_out1_re[15] = 16'sb1100010011011111;
  assign Constant3_out1_im[15] = 16'sb1110011110000010;
  assign Constant3_out1_re[16] = 16'sb0100000000000000;
  assign Constant3_out1_im[16] = 16'sb0000000000000000;
  assign Constant3_out1_re[17] = 16'sb0011101100100001;
  assign Constant3_out1_im[17] = 16'sb1110011110000010;
  assign Constant3_out1_re[18] = 16'sb0010110101000001;
  assign Constant3_out1_im[18] = 16'sb1101001010111111;
  assign Constant3_out1_re[19] = 16'sb0001100001111110;
  assign Constant3_out1_im[19] = 16'sb1100010011011111;
  assign Constant3_out1_re[20] = 16'sb0000000000000000;
  assign Constant3_out1_im[20] = 16'sb1100000000000000;
  assign Constant3_out1_re[21] = 16'sb1110011110000010;
  assign Constant3_out1_im[21] = 16'sb1100010011011111;
  assign Constant3_out1_re[22] = 16'sb1101001010111111;
  assign Constant3_out1_im[22] = 16'sb1101001010111111;
  assign Constant3_out1_re[23] = 16'sb1100010011011111;
  assign Constant3_out1_im[23] = 16'sb1110011110000010;
  assign Constant3_out1_re[24] = 16'sb0100000000000000;
  assign Constant3_out1_im[24] = 16'sb0000000000000000;
  assign Constant3_out1_re[25] = 16'sb0011101100100001;
  assign Constant3_out1_im[25] = 16'sb1110011110000010;
  assign Constant3_out1_re[26] = 16'sb0010110101000001;
  assign Constant3_out1_im[26] = 16'sb1101001010111111;
  assign Constant3_out1_re[27] = 16'sb0001100001111110;
  assign Constant3_out1_im[27] = 16'sb1100010011011111;
  assign Constant3_out1_re[28] = 16'sb0000000000000000;
  assign Constant3_out1_im[28] = 16'sb1100000000000000;
  assign Constant3_out1_re[29] = 16'sb1110011110000010;
  assign Constant3_out1_im[29] = 16'sb1100010011011111;
  assign Constant3_out1_re[30] = 16'sb1101001010111111;
  assign Constant3_out1_im[30] = 16'sb1101001010111111;
  assign Constant3_out1_re[31] = 16'sb1100010011011111;
  assign Constant3_out1_im[31] = 16'sb1110011110000010;
  assign Constant3_out1_re[32] = 16'sb0100000000000000;
  assign Constant3_out1_im[32] = 16'sb0000000000000000;
  assign Constant3_out1_re[33] = 16'sb0011101100100001;
  assign Constant3_out1_im[33] = 16'sb1110011110000010;
  assign Constant3_out1_re[34] = 16'sb0010110101000001;
  assign Constant3_out1_im[34] = 16'sb1101001010111111;
  assign Constant3_out1_re[35] = 16'sb0001100001111110;
  assign Constant3_out1_im[35] = 16'sb1100010011011111;
  assign Constant3_out1_re[36] = 16'sb0000000000000000;
  assign Constant3_out1_im[36] = 16'sb1100000000000000;
  assign Constant3_out1_re[37] = 16'sb1110011110000010;
  assign Constant3_out1_im[37] = 16'sb1100010011011111;
  assign Constant3_out1_re[38] = 16'sb1101001010111111;
  assign Constant3_out1_im[38] = 16'sb1101001010111111;
  assign Constant3_out1_re[39] = 16'sb1100010011011111;
  assign Constant3_out1_im[39] = 16'sb1110011110000010;
  assign Constant3_out1_re[40] = 16'sb0100000000000000;
  assign Constant3_out1_im[40] = 16'sb0000000000000000;
  assign Constant3_out1_re[41] = 16'sb0011101100100001;
  assign Constant3_out1_im[41] = 16'sb1110011110000010;
  assign Constant3_out1_re[42] = 16'sb0010110101000001;
  assign Constant3_out1_im[42] = 16'sb1101001010111111;
  assign Constant3_out1_re[43] = 16'sb0001100001111110;
  assign Constant3_out1_im[43] = 16'sb1100010011011111;
  assign Constant3_out1_re[44] = 16'sb0000000000000000;
  assign Constant3_out1_im[44] = 16'sb1100000000000000;
  assign Constant3_out1_re[45] = 16'sb1110011110000010;
  assign Constant3_out1_im[45] = 16'sb1100010011011111;
  assign Constant3_out1_re[46] = 16'sb1101001010111111;
  assign Constant3_out1_im[46] = 16'sb1101001010111111;
  assign Constant3_out1_re[47] = 16'sb1100010011011111;
  assign Constant3_out1_im[47] = 16'sb1110011110000010;
  assign Constant3_out1_re[48] = 16'sb0100000000000000;
  assign Constant3_out1_im[48] = 16'sb0000000000000000;
  assign Constant3_out1_re[49] = 16'sb0011101100100001;
  assign Constant3_out1_im[49] = 16'sb1110011110000010;
  assign Constant3_out1_re[50] = 16'sb0010110101000001;
  assign Constant3_out1_im[50] = 16'sb1101001010111111;
  assign Constant3_out1_re[51] = 16'sb0001100001111110;
  assign Constant3_out1_im[51] = 16'sb1100010011011111;
  assign Constant3_out1_re[52] = 16'sb0000000000000000;
  assign Constant3_out1_im[52] = 16'sb1100000000000000;
  assign Constant3_out1_re[53] = 16'sb1110011110000010;
  assign Constant3_out1_im[53] = 16'sb1100010011011111;
  assign Constant3_out1_re[54] = 16'sb1101001010111111;
  assign Constant3_out1_im[54] = 16'sb1101001010111111;
  assign Constant3_out1_re[55] = 16'sb1100010011011111;
  assign Constant3_out1_im[55] = 16'sb1110011110000010;
  assign Constant3_out1_re[56] = 16'sb0100000000000000;
  assign Constant3_out1_im[56] = 16'sb0000000000000000;
  assign Constant3_out1_re[57] = 16'sb0011101100100001;
  assign Constant3_out1_im[57] = 16'sb1110011110000010;
  assign Constant3_out1_re[58] = 16'sb0010110101000001;
  assign Constant3_out1_im[58] = 16'sb1101001010111111;
  assign Constant3_out1_re[59] = 16'sb0001100001111110;
  assign Constant3_out1_im[59] = 16'sb1100010011011111;
  assign Constant3_out1_re[60] = 16'sb0000000000000000;
  assign Constant3_out1_im[60] = 16'sb1100000000000000;
  assign Constant3_out1_re[61] = 16'sb1110011110000010;
  assign Constant3_out1_im[61] = 16'sb1100010011011111;
  assign Constant3_out1_re[62] = 16'sb1101001010111111;
  assign Constant3_out1_im[62] = 16'sb1101001010111111;
  assign Constant3_out1_re[63] = 16'sb1100010011011111;
  assign Constant3_out1_im[63] = 16'sb1110011110000010;



  assign Data_Type_Conversion3_out1_re[0] = Constant3_out1_re[0];
  assign Data_Type_Conversion3_out1_im[0] = Constant3_out1_im[0];
  assign Data_Type_Conversion3_out1_re[1] = Constant3_out1_re[1];
  assign Data_Type_Conversion3_out1_im[1] = Constant3_out1_im[1];
  assign Data_Type_Conversion3_out1_re[2] = Constant3_out1_re[2];
  assign Data_Type_Conversion3_out1_im[2] = Constant3_out1_im[2];
  assign Data_Type_Conversion3_out1_re[3] = Constant3_out1_re[3];
  assign Data_Type_Conversion3_out1_im[3] = Constant3_out1_im[3];
  assign Data_Type_Conversion3_out1_re[4] = Constant3_out1_re[4];
  assign Data_Type_Conversion3_out1_im[4] = Constant3_out1_im[4];
  assign Data_Type_Conversion3_out1_re[5] = Constant3_out1_re[5];
  assign Data_Type_Conversion3_out1_im[5] = Constant3_out1_im[5];
  assign Data_Type_Conversion3_out1_re[6] = Constant3_out1_re[6];
  assign Data_Type_Conversion3_out1_im[6] = Constant3_out1_im[6];
  assign Data_Type_Conversion3_out1_re[7] = Constant3_out1_re[7];
  assign Data_Type_Conversion3_out1_im[7] = Constant3_out1_im[7];
  assign Data_Type_Conversion3_out1_re[8] = Constant3_out1_re[8];
  assign Data_Type_Conversion3_out1_im[8] = Constant3_out1_im[8];
  assign Data_Type_Conversion3_out1_re[9] = Constant3_out1_re[9];
  assign Data_Type_Conversion3_out1_im[9] = Constant3_out1_im[9];
  assign Data_Type_Conversion3_out1_re[10] = Constant3_out1_re[10];
  assign Data_Type_Conversion3_out1_im[10] = Constant3_out1_im[10];
  assign Data_Type_Conversion3_out1_re[11] = Constant3_out1_re[11];
  assign Data_Type_Conversion3_out1_im[11] = Constant3_out1_im[11];
  assign Data_Type_Conversion3_out1_re[12] = Constant3_out1_re[12];
  assign Data_Type_Conversion3_out1_im[12] = Constant3_out1_im[12];
  assign Data_Type_Conversion3_out1_re[13] = Constant3_out1_re[13];
  assign Data_Type_Conversion3_out1_im[13] = Constant3_out1_im[13];
  assign Data_Type_Conversion3_out1_re[14] = Constant3_out1_re[14];
  assign Data_Type_Conversion3_out1_im[14] = Constant3_out1_im[14];
  assign Data_Type_Conversion3_out1_re[15] = Constant3_out1_re[15];
  assign Data_Type_Conversion3_out1_im[15] = Constant3_out1_im[15];
  assign Data_Type_Conversion3_out1_re[16] = Constant3_out1_re[16];
  assign Data_Type_Conversion3_out1_im[16] = Constant3_out1_im[16];
  assign Data_Type_Conversion3_out1_re[17] = Constant3_out1_re[17];
  assign Data_Type_Conversion3_out1_im[17] = Constant3_out1_im[17];
  assign Data_Type_Conversion3_out1_re[18] = Constant3_out1_re[18];
  assign Data_Type_Conversion3_out1_im[18] = Constant3_out1_im[18];
  assign Data_Type_Conversion3_out1_re[19] = Constant3_out1_re[19];
  assign Data_Type_Conversion3_out1_im[19] = Constant3_out1_im[19];
  assign Data_Type_Conversion3_out1_re[20] = Constant3_out1_re[20];
  assign Data_Type_Conversion3_out1_im[20] = Constant3_out1_im[20];
  assign Data_Type_Conversion3_out1_re[21] = Constant3_out1_re[21];
  assign Data_Type_Conversion3_out1_im[21] = Constant3_out1_im[21];
  assign Data_Type_Conversion3_out1_re[22] = Constant3_out1_re[22];
  assign Data_Type_Conversion3_out1_im[22] = Constant3_out1_im[22];
  assign Data_Type_Conversion3_out1_re[23] = Constant3_out1_re[23];
  assign Data_Type_Conversion3_out1_im[23] = Constant3_out1_im[23];
  assign Data_Type_Conversion3_out1_re[24] = Constant3_out1_re[24];
  assign Data_Type_Conversion3_out1_im[24] = Constant3_out1_im[24];
  assign Data_Type_Conversion3_out1_re[25] = Constant3_out1_re[25];
  assign Data_Type_Conversion3_out1_im[25] = Constant3_out1_im[25];
  assign Data_Type_Conversion3_out1_re[26] = Constant3_out1_re[26];
  assign Data_Type_Conversion3_out1_im[26] = Constant3_out1_im[26];
  assign Data_Type_Conversion3_out1_re[27] = Constant3_out1_re[27];
  assign Data_Type_Conversion3_out1_im[27] = Constant3_out1_im[27];
  assign Data_Type_Conversion3_out1_re[28] = Constant3_out1_re[28];
  assign Data_Type_Conversion3_out1_im[28] = Constant3_out1_im[28];
  assign Data_Type_Conversion3_out1_re[29] = Constant3_out1_re[29];
  assign Data_Type_Conversion3_out1_im[29] = Constant3_out1_im[29];
  assign Data_Type_Conversion3_out1_re[30] = Constant3_out1_re[30];
  assign Data_Type_Conversion3_out1_im[30] = Constant3_out1_im[30];
  assign Data_Type_Conversion3_out1_re[31] = Constant3_out1_re[31];
  assign Data_Type_Conversion3_out1_im[31] = Constant3_out1_im[31];
  assign Data_Type_Conversion3_out1_re[32] = Constant3_out1_re[32];
  assign Data_Type_Conversion3_out1_im[32] = Constant3_out1_im[32];
  assign Data_Type_Conversion3_out1_re[33] = Constant3_out1_re[33];
  assign Data_Type_Conversion3_out1_im[33] = Constant3_out1_im[33];
  assign Data_Type_Conversion3_out1_re[34] = Constant3_out1_re[34];
  assign Data_Type_Conversion3_out1_im[34] = Constant3_out1_im[34];
  assign Data_Type_Conversion3_out1_re[35] = Constant3_out1_re[35];
  assign Data_Type_Conversion3_out1_im[35] = Constant3_out1_im[35];
  assign Data_Type_Conversion3_out1_re[36] = Constant3_out1_re[36];
  assign Data_Type_Conversion3_out1_im[36] = Constant3_out1_im[36];
  assign Data_Type_Conversion3_out1_re[37] = Constant3_out1_re[37];
  assign Data_Type_Conversion3_out1_im[37] = Constant3_out1_im[37];
  assign Data_Type_Conversion3_out1_re[38] = Constant3_out1_re[38];
  assign Data_Type_Conversion3_out1_im[38] = Constant3_out1_im[38];
  assign Data_Type_Conversion3_out1_re[39] = Constant3_out1_re[39];
  assign Data_Type_Conversion3_out1_im[39] = Constant3_out1_im[39];
  assign Data_Type_Conversion3_out1_re[40] = Constant3_out1_re[40];
  assign Data_Type_Conversion3_out1_im[40] = Constant3_out1_im[40];
  assign Data_Type_Conversion3_out1_re[41] = Constant3_out1_re[41];
  assign Data_Type_Conversion3_out1_im[41] = Constant3_out1_im[41];
  assign Data_Type_Conversion3_out1_re[42] = Constant3_out1_re[42];
  assign Data_Type_Conversion3_out1_im[42] = Constant3_out1_im[42];
  assign Data_Type_Conversion3_out1_re[43] = Constant3_out1_re[43];
  assign Data_Type_Conversion3_out1_im[43] = Constant3_out1_im[43];
  assign Data_Type_Conversion3_out1_re[44] = Constant3_out1_re[44];
  assign Data_Type_Conversion3_out1_im[44] = Constant3_out1_im[44];
  assign Data_Type_Conversion3_out1_re[45] = Constant3_out1_re[45];
  assign Data_Type_Conversion3_out1_im[45] = Constant3_out1_im[45];
  assign Data_Type_Conversion3_out1_re[46] = Constant3_out1_re[46];
  assign Data_Type_Conversion3_out1_im[46] = Constant3_out1_im[46];
  assign Data_Type_Conversion3_out1_re[47] = Constant3_out1_re[47];
  assign Data_Type_Conversion3_out1_im[47] = Constant3_out1_im[47];
  assign Data_Type_Conversion3_out1_re[48] = Constant3_out1_re[48];
  assign Data_Type_Conversion3_out1_im[48] = Constant3_out1_im[48];
  assign Data_Type_Conversion3_out1_re[49] = Constant3_out1_re[49];
  assign Data_Type_Conversion3_out1_im[49] = Constant3_out1_im[49];
  assign Data_Type_Conversion3_out1_re[50] = Constant3_out1_re[50];
  assign Data_Type_Conversion3_out1_im[50] = Constant3_out1_im[50];
  assign Data_Type_Conversion3_out1_re[51] = Constant3_out1_re[51];
  assign Data_Type_Conversion3_out1_im[51] = Constant3_out1_im[51];
  assign Data_Type_Conversion3_out1_re[52] = Constant3_out1_re[52];
  assign Data_Type_Conversion3_out1_im[52] = Constant3_out1_im[52];
  assign Data_Type_Conversion3_out1_re[53] = Constant3_out1_re[53];
  assign Data_Type_Conversion3_out1_im[53] = Constant3_out1_im[53];
  assign Data_Type_Conversion3_out1_re[54] = Constant3_out1_re[54];
  assign Data_Type_Conversion3_out1_im[54] = Constant3_out1_im[54];
  assign Data_Type_Conversion3_out1_re[55] = Constant3_out1_re[55];
  assign Data_Type_Conversion3_out1_im[55] = Constant3_out1_im[55];
  assign Data_Type_Conversion3_out1_re[56] = Constant3_out1_re[56];
  assign Data_Type_Conversion3_out1_im[56] = Constant3_out1_im[56];
  assign Data_Type_Conversion3_out1_re[57] = Constant3_out1_re[57];
  assign Data_Type_Conversion3_out1_im[57] = Constant3_out1_im[57];
  assign Data_Type_Conversion3_out1_re[58] = Constant3_out1_re[58];
  assign Data_Type_Conversion3_out1_im[58] = Constant3_out1_im[58];
  assign Data_Type_Conversion3_out1_re[59] = Constant3_out1_re[59];
  assign Data_Type_Conversion3_out1_im[59] = Constant3_out1_im[59];
  assign Data_Type_Conversion3_out1_re[60] = Constant3_out1_re[60];
  assign Data_Type_Conversion3_out1_im[60] = Constant3_out1_im[60];
  assign Data_Type_Conversion3_out1_re[61] = Constant3_out1_re[61];
  assign Data_Type_Conversion3_out1_im[61] = Constant3_out1_im[61];
  assign Data_Type_Conversion3_out1_re[62] = Constant3_out1_re[62];
  assign Data_Type_Conversion3_out1_im[62] = Constant3_out1_im[62];
  assign Data_Type_Conversion3_out1_re[63] = Constant3_out1_re[63];
  assign Data_Type_Conversion3_out1_im[63] = Constant3_out1_im[63];



  Butterfly_Stage1_5 u_Butterfly_Stage1_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_8),  // sfix8_En2
                                           .A_m_im(In1_im_8),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[4]),  // ufix1
                                           .B_m_N_2_re(In1_re_72),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_72),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_5_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_5_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_5_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_5_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_6 u_Butterfly_Stage1_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_40),  // sfix8_En2
                                           .A_m_im(In1_im_40),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[5]),  // ufix1
                                           .B_m_N_2_re(In1_re_104),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_104),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_6_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_6_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_6_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_6_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_5 u_Butterfly_Stage2_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_5_out1_re),  // sfix9_En2
                                           .A_m_im(Butterfly_Stage1_5_out1_im),  // sfix9_En2
                                           .W_re(Data_Type_Conversion1_out1_re[4]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[4]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_6_out1_re),  // sfix9_En2
                                           .B_m_N_2_im(Butterfly_Stage1_6_out1_im),  // sfix9_En2
                                           .X_m_re(Butterfly_Stage2_5_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_5_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_5_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_5_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_7 u_Butterfly_Stage1_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_24),  // sfix8_En2
                                           .A_m_im(In1_im_24),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[6]),  // ufix1
                                           .B_m_N_2_re(In1_re_88),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_88),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_7_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_7_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_7_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_7_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_8 u_Butterfly_Stage1_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_56),  // sfix8_En2
                                           .A_m_im(In1_im_56),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[7]),  // ufix1
                                           .B_m_N_2_re(In1_re_120),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_120),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_8_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_8_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_8_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_8_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_7 u_Butterfly_Stage2_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_7_out1_re),  // sfix9_En2
                                           .A_m_im(Butterfly_Stage1_7_out1_im),  // sfix9_En2
                                           .W_re(Data_Type_Conversion1_out1_re[6]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[6]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_8_out1_re),  // sfix9_En2
                                           .B_m_N_2_im(Butterfly_Stage1_8_out1_im),  // sfix9_En2
                                           .X_m_re(Butterfly_Stage2_7_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_7_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_7_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_7_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage3_5 u_Butterfly_Stage3_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_5_out1_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_5_out1_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[4]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[4]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_7_out1_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_7_out1_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_5_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_5_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_5_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_5_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage4_1 u_Butterfly_Stage4_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_1_out1_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_1_out1_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[0]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[0]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_5_out1_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_5_out1_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_1_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_1_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_1_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_1_out2_im)  // sfix30_En20
                                           );

  assign Constant4_out1_re[0] = 15'sb010000000000000;
  assign Constant4_out1_im[0] = 15'sb000000000000000;
  assign Constant4_out1_re[1] = 15'sb001111101100011;
  assign Constant4_out1_im[1] = 15'sb111100111000010;
  assign Constant4_out1_re[2] = 15'sb001110110010000;
  assign Constant4_out1_im[2] = 15'sb111001111000001;
  assign Constant4_out1_re[3] = 15'sb001101010011011;
  assign Constant4_out1_im[3] = 15'sb110111000111001;
  assign Constant4_out1_re[4] = 15'sb001011010100001;
  assign Constant4_out1_im[4] = 15'sb110100101011111;
  assign Constant4_out1_re[5] = 15'sb001000111000111;
  assign Constant4_out1_im[5] = 15'sb110010101100101;
  assign Constant4_out1_re[6] = 15'sb000110000111111;
  assign Constant4_out1_im[6] = 15'sb110001001110000;
  assign Constant4_out1_re[7] = 15'sb000011000111110;
  assign Constant4_out1_im[7] = 15'sb110000010011101;
  assign Constant4_out1_re[8] = 15'sb000000000000000;
  assign Constant4_out1_im[8] = 15'sb110000000000000;
  assign Constant4_out1_re[9] = 15'sb111100111000010;
  assign Constant4_out1_im[9] = 15'sb110000010011101;
  assign Constant4_out1_re[10] = 15'sb111001111000001;
  assign Constant4_out1_im[10] = 15'sb110001001110000;
  assign Constant4_out1_re[11] = 15'sb110111000111001;
  assign Constant4_out1_im[11] = 15'sb110010101100101;
  assign Constant4_out1_re[12] = 15'sb110100101011111;
  assign Constant4_out1_im[12] = 15'sb110100101011111;
  assign Constant4_out1_re[13] = 15'sb110010101100101;
  assign Constant4_out1_im[13] = 15'sb110111000111001;
  assign Constant4_out1_re[14] = 15'sb110001001110000;
  assign Constant4_out1_im[14] = 15'sb111001111000001;
  assign Constant4_out1_re[15] = 15'sb110000010011101;
  assign Constant4_out1_im[15] = 15'sb111100111000010;
  assign Constant4_out1_re[16] = 15'sb010000000000000;
  assign Constant4_out1_im[16] = 15'sb000000000000000;
  assign Constant4_out1_re[17] = 15'sb001111101100011;
  assign Constant4_out1_im[17] = 15'sb111100111000010;
  assign Constant4_out1_re[18] = 15'sb001110110010000;
  assign Constant4_out1_im[18] = 15'sb111001111000001;
  assign Constant4_out1_re[19] = 15'sb001101010011011;
  assign Constant4_out1_im[19] = 15'sb110111000111001;
  assign Constant4_out1_re[20] = 15'sb001011010100001;
  assign Constant4_out1_im[20] = 15'sb110100101011111;
  assign Constant4_out1_re[21] = 15'sb001000111000111;
  assign Constant4_out1_im[21] = 15'sb110010101100101;
  assign Constant4_out1_re[22] = 15'sb000110000111111;
  assign Constant4_out1_im[22] = 15'sb110001001110000;
  assign Constant4_out1_re[23] = 15'sb000011000111110;
  assign Constant4_out1_im[23] = 15'sb110000010011101;
  assign Constant4_out1_re[24] = 15'sb000000000000000;
  assign Constant4_out1_im[24] = 15'sb110000000000000;
  assign Constant4_out1_re[25] = 15'sb111100111000010;
  assign Constant4_out1_im[25] = 15'sb110000010011101;
  assign Constant4_out1_re[26] = 15'sb111001111000001;
  assign Constant4_out1_im[26] = 15'sb110001001110000;
  assign Constant4_out1_re[27] = 15'sb110111000111001;
  assign Constant4_out1_im[27] = 15'sb110010101100101;
  assign Constant4_out1_re[28] = 15'sb110100101011111;
  assign Constant4_out1_im[28] = 15'sb110100101011111;
  assign Constant4_out1_re[29] = 15'sb110010101100101;
  assign Constant4_out1_im[29] = 15'sb110111000111001;
  assign Constant4_out1_re[30] = 15'sb110001001110000;
  assign Constant4_out1_im[30] = 15'sb111001111000001;
  assign Constant4_out1_re[31] = 15'sb110000010011101;
  assign Constant4_out1_im[31] = 15'sb111100111000010;
  assign Constant4_out1_re[32] = 15'sb010000000000000;
  assign Constant4_out1_im[32] = 15'sb000000000000000;
  assign Constant4_out1_re[33] = 15'sb001111101100011;
  assign Constant4_out1_im[33] = 15'sb111100111000010;
  assign Constant4_out1_re[34] = 15'sb001110110010000;
  assign Constant4_out1_im[34] = 15'sb111001111000001;
  assign Constant4_out1_re[35] = 15'sb001101010011011;
  assign Constant4_out1_im[35] = 15'sb110111000111001;
  assign Constant4_out1_re[36] = 15'sb001011010100001;
  assign Constant4_out1_im[36] = 15'sb110100101011111;
  assign Constant4_out1_re[37] = 15'sb001000111000111;
  assign Constant4_out1_im[37] = 15'sb110010101100101;
  assign Constant4_out1_re[38] = 15'sb000110000111111;
  assign Constant4_out1_im[38] = 15'sb110001001110000;
  assign Constant4_out1_re[39] = 15'sb000011000111110;
  assign Constant4_out1_im[39] = 15'sb110000010011101;
  assign Constant4_out1_re[40] = 15'sb000000000000000;
  assign Constant4_out1_im[40] = 15'sb110000000000000;
  assign Constant4_out1_re[41] = 15'sb111100111000010;
  assign Constant4_out1_im[41] = 15'sb110000010011101;
  assign Constant4_out1_re[42] = 15'sb111001111000001;
  assign Constant4_out1_im[42] = 15'sb110001001110000;
  assign Constant4_out1_re[43] = 15'sb110111000111001;
  assign Constant4_out1_im[43] = 15'sb110010101100101;
  assign Constant4_out1_re[44] = 15'sb110100101011111;
  assign Constant4_out1_im[44] = 15'sb110100101011111;
  assign Constant4_out1_re[45] = 15'sb110010101100101;
  assign Constant4_out1_im[45] = 15'sb110111000111001;
  assign Constant4_out1_re[46] = 15'sb110001001110000;
  assign Constant4_out1_im[46] = 15'sb111001111000001;
  assign Constant4_out1_re[47] = 15'sb110000010011101;
  assign Constant4_out1_im[47] = 15'sb111100111000010;
  assign Constant4_out1_re[48] = 15'sb010000000000000;
  assign Constant4_out1_im[48] = 15'sb000000000000000;
  assign Constant4_out1_re[49] = 15'sb001111101100011;
  assign Constant4_out1_im[49] = 15'sb111100111000010;
  assign Constant4_out1_re[50] = 15'sb001110110010000;
  assign Constant4_out1_im[50] = 15'sb111001111000001;
  assign Constant4_out1_re[51] = 15'sb001101010011011;
  assign Constant4_out1_im[51] = 15'sb110111000111001;
  assign Constant4_out1_re[52] = 15'sb001011010100001;
  assign Constant4_out1_im[52] = 15'sb110100101011111;
  assign Constant4_out1_re[53] = 15'sb001000111000111;
  assign Constant4_out1_im[53] = 15'sb110010101100101;
  assign Constant4_out1_re[54] = 15'sb000110000111111;
  assign Constant4_out1_im[54] = 15'sb110001001110000;
  assign Constant4_out1_re[55] = 15'sb000011000111110;
  assign Constant4_out1_im[55] = 15'sb110000010011101;
  assign Constant4_out1_re[56] = 15'sb000000000000000;
  assign Constant4_out1_im[56] = 15'sb110000000000000;
  assign Constant4_out1_re[57] = 15'sb111100111000010;
  assign Constant4_out1_im[57] = 15'sb110000010011101;
  assign Constant4_out1_re[58] = 15'sb111001111000001;
  assign Constant4_out1_im[58] = 15'sb110001001110000;
  assign Constant4_out1_re[59] = 15'sb110111000111001;
  assign Constant4_out1_im[59] = 15'sb110010101100101;
  assign Constant4_out1_re[60] = 15'sb110100101011111;
  assign Constant4_out1_im[60] = 15'sb110100101011111;
  assign Constant4_out1_re[61] = 15'sb110010101100101;
  assign Constant4_out1_im[61] = 15'sb110111000111001;
  assign Constant4_out1_re[62] = 15'sb110001001110000;
  assign Constant4_out1_im[62] = 15'sb111001111000001;
  assign Constant4_out1_re[63] = 15'sb110000010011101;
  assign Constant4_out1_im[63] = 15'sb111100111000010;



  assign Data_Type_Conversion4_out1_re[0] = Constant4_out1_re[0];
  assign Data_Type_Conversion4_out1_im[0] = Constant4_out1_im[0];
  assign Data_Type_Conversion4_out1_re[1] = Constant4_out1_re[1];
  assign Data_Type_Conversion4_out1_im[1] = Constant4_out1_im[1];
  assign Data_Type_Conversion4_out1_re[2] = Constant4_out1_re[2];
  assign Data_Type_Conversion4_out1_im[2] = Constant4_out1_im[2];
  assign Data_Type_Conversion4_out1_re[3] = Constant4_out1_re[3];
  assign Data_Type_Conversion4_out1_im[3] = Constant4_out1_im[3];
  assign Data_Type_Conversion4_out1_re[4] = Constant4_out1_re[4];
  assign Data_Type_Conversion4_out1_im[4] = Constant4_out1_im[4];
  assign Data_Type_Conversion4_out1_re[5] = Constant4_out1_re[5];
  assign Data_Type_Conversion4_out1_im[5] = Constant4_out1_im[5];
  assign Data_Type_Conversion4_out1_re[6] = Constant4_out1_re[6];
  assign Data_Type_Conversion4_out1_im[6] = Constant4_out1_im[6];
  assign Data_Type_Conversion4_out1_re[7] = Constant4_out1_re[7];
  assign Data_Type_Conversion4_out1_im[7] = Constant4_out1_im[7];
  assign Data_Type_Conversion4_out1_re[8] = Constant4_out1_re[8];
  assign Data_Type_Conversion4_out1_im[8] = Constant4_out1_im[8];
  assign Data_Type_Conversion4_out1_re[9] = Constant4_out1_re[9];
  assign Data_Type_Conversion4_out1_im[9] = Constant4_out1_im[9];
  assign Data_Type_Conversion4_out1_re[10] = Constant4_out1_re[10];
  assign Data_Type_Conversion4_out1_im[10] = Constant4_out1_im[10];
  assign Data_Type_Conversion4_out1_re[11] = Constant4_out1_re[11];
  assign Data_Type_Conversion4_out1_im[11] = Constant4_out1_im[11];
  assign Data_Type_Conversion4_out1_re[12] = Constant4_out1_re[12];
  assign Data_Type_Conversion4_out1_im[12] = Constant4_out1_im[12];
  assign Data_Type_Conversion4_out1_re[13] = Constant4_out1_re[13];
  assign Data_Type_Conversion4_out1_im[13] = Constant4_out1_im[13];
  assign Data_Type_Conversion4_out1_re[14] = Constant4_out1_re[14];
  assign Data_Type_Conversion4_out1_im[14] = Constant4_out1_im[14];
  assign Data_Type_Conversion4_out1_re[15] = Constant4_out1_re[15];
  assign Data_Type_Conversion4_out1_im[15] = Constant4_out1_im[15];
  assign Data_Type_Conversion4_out1_re[16] = Constant4_out1_re[16];
  assign Data_Type_Conversion4_out1_im[16] = Constant4_out1_im[16];
  assign Data_Type_Conversion4_out1_re[17] = Constant4_out1_re[17];
  assign Data_Type_Conversion4_out1_im[17] = Constant4_out1_im[17];
  assign Data_Type_Conversion4_out1_re[18] = Constant4_out1_re[18];
  assign Data_Type_Conversion4_out1_im[18] = Constant4_out1_im[18];
  assign Data_Type_Conversion4_out1_re[19] = Constant4_out1_re[19];
  assign Data_Type_Conversion4_out1_im[19] = Constant4_out1_im[19];
  assign Data_Type_Conversion4_out1_re[20] = Constant4_out1_re[20];
  assign Data_Type_Conversion4_out1_im[20] = Constant4_out1_im[20];
  assign Data_Type_Conversion4_out1_re[21] = Constant4_out1_re[21];
  assign Data_Type_Conversion4_out1_im[21] = Constant4_out1_im[21];
  assign Data_Type_Conversion4_out1_re[22] = Constant4_out1_re[22];
  assign Data_Type_Conversion4_out1_im[22] = Constant4_out1_im[22];
  assign Data_Type_Conversion4_out1_re[23] = Constant4_out1_re[23];
  assign Data_Type_Conversion4_out1_im[23] = Constant4_out1_im[23];
  assign Data_Type_Conversion4_out1_re[24] = Constant4_out1_re[24];
  assign Data_Type_Conversion4_out1_im[24] = Constant4_out1_im[24];
  assign Data_Type_Conversion4_out1_re[25] = Constant4_out1_re[25];
  assign Data_Type_Conversion4_out1_im[25] = Constant4_out1_im[25];
  assign Data_Type_Conversion4_out1_re[26] = Constant4_out1_re[26];
  assign Data_Type_Conversion4_out1_im[26] = Constant4_out1_im[26];
  assign Data_Type_Conversion4_out1_re[27] = Constant4_out1_re[27];
  assign Data_Type_Conversion4_out1_im[27] = Constant4_out1_im[27];
  assign Data_Type_Conversion4_out1_re[28] = Constant4_out1_re[28];
  assign Data_Type_Conversion4_out1_im[28] = Constant4_out1_im[28];
  assign Data_Type_Conversion4_out1_re[29] = Constant4_out1_re[29];
  assign Data_Type_Conversion4_out1_im[29] = Constant4_out1_im[29];
  assign Data_Type_Conversion4_out1_re[30] = Constant4_out1_re[30];
  assign Data_Type_Conversion4_out1_im[30] = Constant4_out1_im[30];
  assign Data_Type_Conversion4_out1_re[31] = Constant4_out1_re[31];
  assign Data_Type_Conversion4_out1_im[31] = Constant4_out1_im[31];
  assign Data_Type_Conversion4_out1_re[32] = Constant4_out1_re[32];
  assign Data_Type_Conversion4_out1_im[32] = Constant4_out1_im[32];
  assign Data_Type_Conversion4_out1_re[33] = Constant4_out1_re[33];
  assign Data_Type_Conversion4_out1_im[33] = Constant4_out1_im[33];
  assign Data_Type_Conversion4_out1_re[34] = Constant4_out1_re[34];
  assign Data_Type_Conversion4_out1_im[34] = Constant4_out1_im[34];
  assign Data_Type_Conversion4_out1_re[35] = Constant4_out1_re[35];
  assign Data_Type_Conversion4_out1_im[35] = Constant4_out1_im[35];
  assign Data_Type_Conversion4_out1_re[36] = Constant4_out1_re[36];
  assign Data_Type_Conversion4_out1_im[36] = Constant4_out1_im[36];
  assign Data_Type_Conversion4_out1_re[37] = Constant4_out1_re[37];
  assign Data_Type_Conversion4_out1_im[37] = Constant4_out1_im[37];
  assign Data_Type_Conversion4_out1_re[38] = Constant4_out1_re[38];
  assign Data_Type_Conversion4_out1_im[38] = Constant4_out1_im[38];
  assign Data_Type_Conversion4_out1_re[39] = Constant4_out1_re[39];
  assign Data_Type_Conversion4_out1_im[39] = Constant4_out1_im[39];
  assign Data_Type_Conversion4_out1_re[40] = Constant4_out1_re[40];
  assign Data_Type_Conversion4_out1_im[40] = Constant4_out1_im[40];
  assign Data_Type_Conversion4_out1_re[41] = Constant4_out1_re[41];
  assign Data_Type_Conversion4_out1_im[41] = Constant4_out1_im[41];
  assign Data_Type_Conversion4_out1_re[42] = Constant4_out1_re[42];
  assign Data_Type_Conversion4_out1_im[42] = Constant4_out1_im[42];
  assign Data_Type_Conversion4_out1_re[43] = Constant4_out1_re[43];
  assign Data_Type_Conversion4_out1_im[43] = Constant4_out1_im[43];
  assign Data_Type_Conversion4_out1_re[44] = Constant4_out1_re[44];
  assign Data_Type_Conversion4_out1_im[44] = Constant4_out1_im[44];
  assign Data_Type_Conversion4_out1_re[45] = Constant4_out1_re[45];
  assign Data_Type_Conversion4_out1_im[45] = Constant4_out1_im[45];
  assign Data_Type_Conversion4_out1_re[46] = Constant4_out1_re[46];
  assign Data_Type_Conversion4_out1_im[46] = Constant4_out1_im[46];
  assign Data_Type_Conversion4_out1_re[47] = Constant4_out1_re[47];
  assign Data_Type_Conversion4_out1_im[47] = Constant4_out1_im[47];
  assign Data_Type_Conversion4_out1_re[48] = Constant4_out1_re[48];
  assign Data_Type_Conversion4_out1_im[48] = Constant4_out1_im[48];
  assign Data_Type_Conversion4_out1_re[49] = Constant4_out1_re[49];
  assign Data_Type_Conversion4_out1_im[49] = Constant4_out1_im[49];
  assign Data_Type_Conversion4_out1_re[50] = Constant4_out1_re[50];
  assign Data_Type_Conversion4_out1_im[50] = Constant4_out1_im[50];
  assign Data_Type_Conversion4_out1_re[51] = Constant4_out1_re[51];
  assign Data_Type_Conversion4_out1_im[51] = Constant4_out1_im[51];
  assign Data_Type_Conversion4_out1_re[52] = Constant4_out1_re[52];
  assign Data_Type_Conversion4_out1_im[52] = Constant4_out1_im[52];
  assign Data_Type_Conversion4_out1_re[53] = Constant4_out1_re[53];
  assign Data_Type_Conversion4_out1_im[53] = Constant4_out1_im[53];
  assign Data_Type_Conversion4_out1_re[54] = Constant4_out1_re[54];
  assign Data_Type_Conversion4_out1_im[54] = Constant4_out1_im[54];
  assign Data_Type_Conversion4_out1_re[55] = Constant4_out1_re[55];
  assign Data_Type_Conversion4_out1_im[55] = Constant4_out1_im[55];
  assign Data_Type_Conversion4_out1_re[56] = Constant4_out1_re[56];
  assign Data_Type_Conversion4_out1_im[56] = Constant4_out1_im[56];
  assign Data_Type_Conversion4_out1_re[57] = Constant4_out1_re[57];
  assign Data_Type_Conversion4_out1_im[57] = Constant4_out1_im[57];
  assign Data_Type_Conversion4_out1_re[58] = Constant4_out1_re[58];
  assign Data_Type_Conversion4_out1_im[58] = Constant4_out1_im[58];
  assign Data_Type_Conversion4_out1_re[59] = Constant4_out1_re[59];
  assign Data_Type_Conversion4_out1_im[59] = Constant4_out1_im[59];
  assign Data_Type_Conversion4_out1_re[60] = Constant4_out1_re[60];
  assign Data_Type_Conversion4_out1_im[60] = Constant4_out1_im[60];
  assign Data_Type_Conversion4_out1_re[61] = Constant4_out1_re[61];
  assign Data_Type_Conversion4_out1_im[61] = Constant4_out1_im[61];
  assign Data_Type_Conversion4_out1_re[62] = Constant4_out1_re[62];
  assign Data_Type_Conversion4_out1_im[62] = Constant4_out1_im[62];
  assign Data_Type_Conversion4_out1_re[63] = Constant4_out1_re[63];
  assign Data_Type_Conversion4_out1_im[63] = Constant4_out1_im[63];



  Butterfly_Stage1_9 u_Butterfly_Stage1_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(In1_re_4),  // sfix8_En2
                                           .A_m_im(In1_im_4),  // sfix8_En2
                                           .W(Data_Type_Conversion_out1[8]),  // ufix1
                                           .B_m_N_2_re(In1_re_68),  // sfix8_En2
                                           .B_m_N_2_im(In1_im_68),  // sfix8_En2
                                           .X_m_re(Butterfly_Stage1_9_out1_re),  // sfix9_En2
                                           .X_m_im(Butterfly_Stage1_9_out1_im),  // sfix9_En2
                                           .X_m_N_2_re(Butterfly_Stage1_9_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage1_9_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_10 u_Butterfly_Stage1_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_36),  // sfix8_En2
                                             .A_m_im(In1_im_36),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[9]),  // ufix1
                                             .B_m_N_2_re(In1_re_100),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_100),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_10_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_10_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_10_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_10_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_9 u_Butterfly_Stage2_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_9_out1_re),  // sfix9_En2
                                           .A_m_im(Butterfly_Stage1_9_out1_im),  // sfix9_En2
                                           .W_re(Data_Type_Conversion1_out1_re[8]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[8]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_10_out1_re),  // sfix9_En2
                                           .B_m_N_2_im(Butterfly_Stage1_10_out1_im),  // sfix9_En2
                                           .X_m_re(Butterfly_Stage2_9_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_9_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_9_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_9_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage1_11 u_Butterfly_Stage1_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_20),  // sfix8_En2
                                             .A_m_im(In1_im_20),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[10]),  // ufix1
                                             .B_m_N_2_re(In1_re_84),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_84),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_11_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_11_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_11_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_11_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_12 u_Butterfly_Stage1_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_52),  // sfix8_En2
                                             .A_m_im(In1_im_52),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[11]),  // ufix1
                                             .B_m_N_2_re(In1_re_116),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_116),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_12_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_12_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_12_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_12_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_11 u_Butterfly_Stage2_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_11_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_11_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[10]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[10]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_12_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_12_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_11_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_11_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_11_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_11_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_9 u_Butterfly_Stage3_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_9_out1_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_9_out1_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[8]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[8]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_11_out1_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_11_out1_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_9_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_9_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_9_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_9_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage1_13 u_Butterfly_Stage1_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_12),  // sfix8_En2
                                             .A_m_im(In1_im_12),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[12]),  // ufix1
                                             .B_m_N_2_re(In1_re_76),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_76),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_13_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_13_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_13_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_13_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_14 u_Butterfly_Stage1_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_44),  // sfix8_En2
                                             .A_m_im(In1_im_44),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[13]),  // ufix1
                                             .B_m_N_2_re(In1_re_108),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_108),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_14_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_14_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_14_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_14_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_13 u_Butterfly_Stage2_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_13_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_13_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[12]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[12]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_14_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_14_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_13_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_13_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_13_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_13_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_15 u_Butterfly_Stage1_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_28),  // sfix8_En2
                                             .A_m_im(In1_im_28),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[14]),  // ufix1
                                             .B_m_N_2_re(In1_re_92),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_92),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_15_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_15_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_15_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_15_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_16 u_Butterfly_Stage1_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_60),  // sfix8_En2
                                             .A_m_im(In1_im_60),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[15]),  // ufix1
                                             .B_m_N_2_re(In1_re_124),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_124),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_16_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_16_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_16_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_16_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_15 u_Butterfly_Stage2_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_15_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_15_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[14]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[14]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_16_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_16_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_15_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_15_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_15_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_15_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_13 u_Butterfly_Stage3_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_13_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_13_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[12]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[12]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_15_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_15_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_13_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_13_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_13_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_13_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_9 u_Butterfly_Stage4_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_9_out1_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_9_out1_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[8]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[8]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_13_out1_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_13_out1_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_9_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_9_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_9_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_9_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage5_1 u_Butterfly_Stage5_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_1_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_1_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[0]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[0]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_9_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_9_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_1_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_1_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_1_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_1_out2_im)  // sfix33_En22
                                           );

  assign Constant5_out1_re[0] = 15'sb010000000000000;
  assign Constant5_out1_im[0] = 15'sb000000000000000;
  assign Constant5_out1_re[1] = 15'sb001111111011001;
  assign Constant5_out1_im[1] = 15'sb111110011011101;
  assign Constant5_out1_re[2] = 15'sb001111101100011;
  assign Constant5_out1_im[2] = 15'sb111100111000010;
  assign Constant5_out1_re[3] = 15'sb001111010011111;
  assign Constant5_out1_im[3] = 15'sb111011010110110;
  assign Constant5_out1_re[4] = 15'sb001110110010000;
  assign Constant5_out1_im[4] = 15'sb111001111000001;
  assign Constant5_out1_re[5] = 15'sb001110000111001;
  assign Constant5_out1_im[5] = 15'sb111000011101010;
  assign Constant5_out1_re[6] = 15'sb001101010011011;
  assign Constant5_out1_im[6] = 15'sb110111000111001;
  assign Constant5_out1_re[7] = 15'sb001100010111101;
  assign Constant5_out1_im[7] = 15'sb110101110110011;
  assign Constant5_out1_re[8] = 15'sb001011010100001;
  assign Constant5_out1_im[8] = 15'sb110100101011111;
  assign Constant5_out1_re[9] = 15'sb001010001001101;
  assign Constant5_out1_im[9] = 15'sb110011101000011;
  assign Constant5_out1_re[10] = 15'sb001000111000111;
  assign Constant5_out1_im[10] = 15'sb110010101100101;
  assign Constant5_out1_re[11] = 15'sb000111100010110;
  assign Constant5_out1_im[11] = 15'sb110001111000111;
  assign Constant5_out1_re[12] = 15'sb000110000111111;
  assign Constant5_out1_im[12] = 15'sb110001001110000;
  assign Constant5_out1_re[13] = 15'sb000100101001010;
  assign Constant5_out1_im[13] = 15'sb110000101100001;
  assign Constant5_out1_re[14] = 15'sb000011000111110;
  assign Constant5_out1_im[14] = 15'sb110000010011101;
  assign Constant5_out1_re[15] = 15'sb000001100100011;
  assign Constant5_out1_im[15] = 15'sb110000000100111;
  assign Constant5_out1_re[16] = 15'sb000000000000000;
  assign Constant5_out1_im[16] = 15'sb110000000000000;
  assign Constant5_out1_re[17] = 15'sb111110011011101;
  assign Constant5_out1_im[17] = 15'sb110000000100111;
  assign Constant5_out1_re[18] = 15'sb111100111000010;
  assign Constant5_out1_im[18] = 15'sb110000010011101;
  assign Constant5_out1_re[19] = 15'sb111011010110110;
  assign Constant5_out1_im[19] = 15'sb110000101100001;
  assign Constant5_out1_re[20] = 15'sb111001111000001;
  assign Constant5_out1_im[20] = 15'sb110001001110000;
  assign Constant5_out1_re[21] = 15'sb111000011101010;
  assign Constant5_out1_im[21] = 15'sb110001111000111;
  assign Constant5_out1_re[22] = 15'sb110111000111001;
  assign Constant5_out1_im[22] = 15'sb110010101100101;
  assign Constant5_out1_re[23] = 15'sb110101110110011;
  assign Constant5_out1_im[23] = 15'sb110011101000011;
  assign Constant5_out1_re[24] = 15'sb110100101011111;
  assign Constant5_out1_im[24] = 15'sb110100101011111;
  assign Constant5_out1_re[25] = 15'sb110011101000011;
  assign Constant5_out1_im[25] = 15'sb110101110110011;
  assign Constant5_out1_re[26] = 15'sb110010101100101;
  assign Constant5_out1_im[26] = 15'sb110111000111001;
  assign Constant5_out1_re[27] = 15'sb110001111000111;
  assign Constant5_out1_im[27] = 15'sb111000011101010;
  assign Constant5_out1_re[28] = 15'sb110001001110000;
  assign Constant5_out1_im[28] = 15'sb111001111000001;
  assign Constant5_out1_re[29] = 15'sb110000101100001;
  assign Constant5_out1_im[29] = 15'sb111011010110110;
  assign Constant5_out1_re[30] = 15'sb110000010011101;
  assign Constant5_out1_im[30] = 15'sb111100111000010;
  assign Constant5_out1_re[31] = 15'sb110000000100111;
  assign Constant5_out1_im[31] = 15'sb111110011011101;
  assign Constant5_out1_re[32] = 15'sb010000000000000;
  assign Constant5_out1_im[32] = 15'sb000000000000000;
  assign Constant5_out1_re[33] = 15'sb001111111011001;
  assign Constant5_out1_im[33] = 15'sb111110011011101;
  assign Constant5_out1_re[34] = 15'sb001111101100011;
  assign Constant5_out1_im[34] = 15'sb111100111000010;
  assign Constant5_out1_re[35] = 15'sb001111010011111;
  assign Constant5_out1_im[35] = 15'sb111011010110110;
  assign Constant5_out1_re[36] = 15'sb001110110010000;
  assign Constant5_out1_im[36] = 15'sb111001111000001;
  assign Constant5_out1_re[37] = 15'sb001110000111001;
  assign Constant5_out1_im[37] = 15'sb111000011101010;
  assign Constant5_out1_re[38] = 15'sb001101010011011;
  assign Constant5_out1_im[38] = 15'sb110111000111001;
  assign Constant5_out1_re[39] = 15'sb001100010111101;
  assign Constant5_out1_im[39] = 15'sb110101110110011;
  assign Constant5_out1_re[40] = 15'sb001011010100001;
  assign Constant5_out1_im[40] = 15'sb110100101011111;
  assign Constant5_out1_re[41] = 15'sb001010001001101;
  assign Constant5_out1_im[41] = 15'sb110011101000011;
  assign Constant5_out1_re[42] = 15'sb001000111000111;
  assign Constant5_out1_im[42] = 15'sb110010101100101;
  assign Constant5_out1_re[43] = 15'sb000111100010110;
  assign Constant5_out1_im[43] = 15'sb110001111000111;
  assign Constant5_out1_re[44] = 15'sb000110000111111;
  assign Constant5_out1_im[44] = 15'sb110001001110000;
  assign Constant5_out1_re[45] = 15'sb000100101001010;
  assign Constant5_out1_im[45] = 15'sb110000101100001;
  assign Constant5_out1_re[46] = 15'sb000011000111110;
  assign Constant5_out1_im[46] = 15'sb110000010011101;
  assign Constant5_out1_re[47] = 15'sb000001100100011;
  assign Constant5_out1_im[47] = 15'sb110000000100111;
  assign Constant5_out1_re[48] = 15'sb000000000000000;
  assign Constant5_out1_im[48] = 15'sb110000000000000;
  assign Constant5_out1_re[49] = 15'sb111110011011101;
  assign Constant5_out1_im[49] = 15'sb110000000100111;
  assign Constant5_out1_re[50] = 15'sb111100111000010;
  assign Constant5_out1_im[50] = 15'sb110000010011101;
  assign Constant5_out1_re[51] = 15'sb111011010110110;
  assign Constant5_out1_im[51] = 15'sb110000101100001;
  assign Constant5_out1_re[52] = 15'sb111001111000001;
  assign Constant5_out1_im[52] = 15'sb110001001110000;
  assign Constant5_out1_re[53] = 15'sb111000011101010;
  assign Constant5_out1_im[53] = 15'sb110001111000111;
  assign Constant5_out1_re[54] = 15'sb110111000111001;
  assign Constant5_out1_im[54] = 15'sb110010101100101;
  assign Constant5_out1_re[55] = 15'sb110101110110011;
  assign Constant5_out1_im[55] = 15'sb110011101000011;
  assign Constant5_out1_re[56] = 15'sb110100101011111;
  assign Constant5_out1_im[56] = 15'sb110100101011111;
  assign Constant5_out1_re[57] = 15'sb110011101000011;
  assign Constant5_out1_im[57] = 15'sb110101110110011;
  assign Constant5_out1_re[58] = 15'sb110010101100101;
  assign Constant5_out1_im[58] = 15'sb110111000111001;
  assign Constant5_out1_re[59] = 15'sb110001111000111;
  assign Constant5_out1_im[59] = 15'sb111000011101010;
  assign Constant5_out1_re[60] = 15'sb110001001110000;
  assign Constant5_out1_im[60] = 15'sb111001111000001;
  assign Constant5_out1_re[61] = 15'sb110000101100001;
  assign Constant5_out1_im[61] = 15'sb111011010110110;
  assign Constant5_out1_re[62] = 15'sb110000010011101;
  assign Constant5_out1_im[62] = 15'sb111100111000010;
  assign Constant5_out1_re[63] = 15'sb110000000100111;
  assign Constant5_out1_im[63] = 15'sb111110011011101;



  assign Data_Type_Conversion5_out1_re[0] = Constant5_out1_re[0];
  assign Data_Type_Conversion5_out1_im[0] = Constant5_out1_im[0];
  assign Data_Type_Conversion5_out1_re[1] = Constant5_out1_re[1];
  assign Data_Type_Conversion5_out1_im[1] = Constant5_out1_im[1];
  assign Data_Type_Conversion5_out1_re[2] = Constant5_out1_re[2];
  assign Data_Type_Conversion5_out1_im[2] = Constant5_out1_im[2];
  assign Data_Type_Conversion5_out1_re[3] = Constant5_out1_re[3];
  assign Data_Type_Conversion5_out1_im[3] = Constant5_out1_im[3];
  assign Data_Type_Conversion5_out1_re[4] = Constant5_out1_re[4];
  assign Data_Type_Conversion5_out1_im[4] = Constant5_out1_im[4];
  assign Data_Type_Conversion5_out1_re[5] = Constant5_out1_re[5];
  assign Data_Type_Conversion5_out1_im[5] = Constant5_out1_im[5];
  assign Data_Type_Conversion5_out1_re[6] = Constant5_out1_re[6];
  assign Data_Type_Conversion5_out1_im[6] = Constant5_out1_im[6];
  assign Data_Type_Conversion5_out1_re[7] = Constant5_out1_re[7];
  assign Data_Type_Conversion5_out1_im[7] = Constant5_out1_im[7];
  assign Data_Type_Conversion5_out1_re[8] = Constant5_out1_re[8];
  assign Data_Type_Conversion5_out1_im[8] = Constant5_out1_im[8];
  assign Data_Type_Conversion5_out1_re[9] = Constant5_out1_re[9];
  assign Data_Type_Conversion5_out1_im[9] = Constant5_out1_im[9];
  assign Data_Type_Conversion5_out1_re[10] = Constant5_out1_re[10];
  assign Data_Type_Conversion5_out1_im[10] = Constant5_out1_im[10];
  assign Data_Type_Conversion5_out1_re[11] = Constant5_out1_re[11];
  assign Data_Type_Conversion5_out1_im[11] = Constant5_out1_im[11];
  assign Data_Type_Conversion5_out1_re[12] = Constant5_out1_re[12];
  assign Data_Type_Conversion5_out1_im[12] = Constant5_out1_im[12];
  assign Data_Type_Conversion5_out1_re[13] = Constant5_out1_re[13];
  assign Data_Type_Conversion5_out1_im[13] = Constant5_out1_im[13];
  assign Data_Type_Conversion5_out1_re[14] = Constant5_out1_re[14];
  assign Data_Type_Conversion5_out1_im[14] = Constant5_out1_im[14];
  assign Data_Type_Conversion5_out1_re[15] = Constant5_out1_re[15];
  assign Data_Type_Conversion5_out1_im[15] = Constant5_out1_im[15];
  assign Data_Type_Conversion5_out1_re[16] = Constant5_out1_re[16];
  assign Data_Type_Conversion5_out1_im[16] = Constant5_out1_im[16];
  assign Data_Type_Conversion5_out1_re[17] = Constant5_out1_re[17];
  assign Data_Type_Conversion5_out1_im[17] = Constant5_out1_im[17];
  assign Data_Type_Conversion5_out1_re[18] = Constant5_out1_re[18];
  assign Data_Type_Conversion5_out1_im[18] = Constant5_out1_im[18];
  assign Data_Type_Conversion5_out1_re[19] = Constant5_out1_re[19];
  assign Data_Type_Conversion5_out1_im[19] = Constant5_out1_im[19];
  assign Data_Type_Conversion5_out1_re[20] = Constant5_out1_re[20];
  assign Data_Type_Conversion5_out1_im[20] = Constant5_out1_im[20];
  assign Data_Type_Conversion5_out1_re[21] = Constant5_out1_re[21];
  assign Data_Type_Conversion5_out1_im[21] = Constant5_out1_im[21];
  assign Data_Type_Conversion5_out1_re[22] = Constant5_out1_re[22];
  assign Data_Type_Conversion5_out1_im[22] = Constant5_out1_im[22];
  assign Data_Type_Conversion5_out1_re[23] = Constant5_out1_re[23];
  assign Data_Type_Conversion5_out1_im[23] = Constant5_out1_im[23];
  assign Data_Type_Conversion5_out1_re[24] = Constant5_out1_re[24];
  assign Data_Type_Conversion5_out1_im[24] = Constant5_out1_im[24];
  assign Data_Type_Conversion5_out1_re[25] = Constant5_out1_re[25];
  assign Data_Type_Conversion5_out1_im[25] = Constant5_out1_im[25];
  assign Data_Type_Conversion5_out1_re[26] = Constant5_out1_re[26];
  assign Data_Type_Conversion5_out1_im[26] = Constant5_out1_im[26];
  assign Data_Type_Conversion5_out1_re[27] = Constant5_out1_re[27];
  assign Data_Type_Conversion5_out1_im[27] = Constant5_out1_im[27];
  assign Data_Type_Conversion5_out1_re[28] = Constant5_out1_re[28];
  assign Data_Type_Conversion5_out1_im[28] = Constant5_out1_im[28];
  assign Data_Type_Conversion5_out1_re[29] = Constant5_out1_re[29];
  assign Data_Type_Conversion5_out1_im[29] = Constant5_out1_im[29];
  assign Data_Type_Conversion5_out1_re[30] = Constant5_out1_re[30];
  assign Data_Type_Conversion5_out1_im[30] = Constant5_out1_im[30];
  assign Data_Type_Conversion5_out1_re[31] = Constant5_out1_re[31];
  assign Data_Type_Conversion5_out1_im[31] = Constant5_out1_im[31];
  assign Data_Type_Conversion5_out1_re[32] = Constant5_out1_re[32];
  assign Data_Type_Conversion5_out1_im[32] = Constant5_out1_im[32];
  assign Data_Type_Conversion5_out1_re[33] = Constant5_out1_re[33];
  assign Data_Type_Conversion5_out1_im[33] = Constant5_out1_im[33];
  assign Data_Type_Conversion5_out1_re[34] = Constant5_out1_re[34];
  assign Data_Type_Conversion5_out1_im[34] = Constant5_out1_im[34];
  assign Data_Type_Conversion5_out1_re[35] = Constant5_out1_re[35];
  assign Data_Type_Conversion5_out1_im[35] = Constant5_out1_im[35];
  assign Data_Type_Conversion5_out1_re[36] = Constant5_out1_re[36];
  assign Data_Type_Conversion5_out1_im[36] = Constant5_out1_im[36];
  assign Data_Type_Conversion5_out1_re[37] = Constant5_out1_re[37];
  assign Data_Type_Conversion5_out1_im[37] = Constant5_out1_im[37];
  assign Data_Type_Conversion5_out1_re[38] = Constant5_out1_re[38];
  assign Data_Type_Conversion5_out1_im[38] = Constant5_out1_im[38];
  assign Data_Type_Conversion5_out1_re[39] = Constant5_out1_re[39];
  assign Data_Type_Conversion5_out1_im[39] = Constant5_out1_im[39];
  assign Data_Type_Conversion5_out1_re[40] = Constant5_out1_re[40];
  assign Data_Type_Conversion5_out1_im[40] = Constant5_out1_im[40];
  assign Data_Type_Conversion5_out1_re[41] = Constant5_out1_re[41];
  assign Data_Type_Conversion5_out1_im[41] = Constant5_out1_im[41];
  assign Data_Type_Conversion5_out1_re[42] = Constant5_out1_re[42];
  assign Data_Type_Conversion5_out1_im[42] = Constant5_out1_im[42];
  assign Data_Type_Conversion5_out1_re[43] = Constant5_out1_re[43];
  assign Data_Type_Conversion5_out1_im[43] = Constant5_out1_im[43];
  assign Data_Type_Conversion5_out1_re[44] = Constant5_out1_re[44];
  assign Data_Type_Conversion5_out1_im[44] = Constant5_out1_im[44];
  assign Data_Type_Conversion5_out1_re[45] = Constant5_out1_re[45];
  assign Data_Type_Conversion5_out1_im[45] = Constant5_out1_im[45];
  assign Data_Type_Conversion5_out1_re[46] = Constant5_out1_re[46];
  assign Data_Type_Conversion5_out1_im[46] = Constant5_out1_im[46];
  assign Data_Type_Conversion5_out1_re[47] = Constant5_out1_re[47];
  assign Data_Type_Conversion5_out1_im[47] = Constant5_out1_im[47];
  assign Data_Type_Conversion5_out1_re[48] = Constant5_out1_re[48];
  assign Data_Type_Conversion5_out1_im[48] = Constant5_out1_im[48];
  assign Data_Type_Conversion5_out1_re[49] = Constant5_out1_re[49];
  assign Data_Type_Conversion5_out1_im[49] = Constant5_out1_im[49];
  assign Data_Type_Conversion5_out1_re[50] = Constant5_out1_re[50];
  assign Data_Type_Conversion5_out1_im[50] = Constant5_out1_im[50];
  assign Data_Type_Conversion5_out1_re[51] = Constant5_out1_re[51];
  assign Data_Type_Conversion5_out1_im[51] = Constant5_out1_im[51];
  assign Data_Type_Conversion5_out1_re[52] = Constant5_out1_re[52];
  assign Data_Type_Conversion5_out1_im[52] = Constant5_out1_im[52];
  assign Data_Type_Conversion5_out1_re[53] = Constant5_out1_re[53];
  assign Data_Type_Conversion5_out1_im[53] = Constant5_out1_im[53];
  assign Data_Type_Conversion5_out1_re[54] = Constant5_out1_re[54];
  assign Data_Type_Conversion5_out1_im[54] = Constant5_out1_im[54];
  assign Data_Type_Conversion5_out1_re[55] = Constant5_out1_re[55];
  assign Data_Type_Conversion5_out1_im[55] = Constant5_out1_im[55];
  assign Data_Type_Conversion5_out1_re[56] = Constant5_out1_re[56];
  assign Data_Type_Conversion5_out1_im[56] = Constant5_out1_im[56];
  assign Data_Type_Conversion5_out1_re[57] = Constant5_out1_re[57];
  assign Data_Type_Conversion5_out1_im[57] = Constant5_out1_im[57];
  assign Data_Type_Conversion5_out1_re[58] = Constant5_out1_re[58];
  assign Data_Type_Conversion5_out1_im[58] = Constant5_out1_im[58];
  assign Data_Type_Conversion5_out1_re[59] = Constant5_out1_re[59];
  assign Data_Type_Conversion5_out1_im[59] = Constant5_out1_im[59];
  assign Data_Type_Conversion5_out1_re[60] = Constant5_out1_re[60];
  assign Data_Type_Conversion5_out1_im[60] = Constant5_out1_im[60];
  assign Data_Type_Conversion5_out1_re[61] = Constant5_out1_re[61];
  assign Data_Type_Conversion5_out1_im[61] = Constant5_out1_im[61];
  assign Data_Type_Conversion5_out1_re[62] = Constant5_out1_re[62];
  assign Data_Type_Conversion5_out1_im[62] = Constant5_out1_im[62];
  assign Data_Type_Conversion5_out1_re[63] = Constant5_out1_re[63];
  assign Data_Type_Conversion5_out1_im[63] = Constant5_out1_im[63];



  Butterfly_Stage1_17 u_Butterfly_Stage1_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_2),  // sfix8_En2
                                             .A_m_im(In1_im_2),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[16]),  // ufix1
                                             .B_m_N_2_re(In1_re_66),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_66),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_17_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_17_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_17_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_17_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_18 u_Butterfly_Stage1_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_34),  // sfix8_En2
                                             .A_m_im(In1_im_34),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[17]),  // ufix1
                                             .B_m_N_2_re(In1_re_98),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_98),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_18_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_18_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_18_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_18_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_17 u_Butterfly_Stage2_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_17_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_17_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[16]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[16]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_18_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_18_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_17_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_17_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_17_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_17_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_19 u_Butterfly_Stage1_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_18),  // sfix8_En2
                                             .A_m_im(In1_im_18),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[18]),  // ufix1
                                             .B_m_N_2_re(In1_re_82),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_82),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_19_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_19_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_19_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_19_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_20 u_Butterfly_Stage1_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_50),  // sfix8_En2
                                             .A_m_im(In1_im_50),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[19]),  // ufix1
                                             .B_m_N_2_re(In1_re_114),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_114),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_20_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_20_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_20_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_20_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_19 u_Butterfly_Stage2_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_19_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_19_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[18]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[18]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_20_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_20_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_19_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_19_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_19_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_19_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_17 u_Butterfly_Stage3_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_17_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_17_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[16]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[16]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_19_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_19_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_17_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_17_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_17_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_17_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_21 u_Butterfly_Stage1_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_10),  // sfix8_En2
                                             .A_m_im(In1_im_10),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[20]),  // ufix1
                                             .B_m_N_2_re(In1_re_74),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_74),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_21_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_21_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_21_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_21_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_22 u_Butterfly_Stage1_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_42),  // sfix8_En2
                                             .A_m_im(In1_im_42),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[21]),  // ufix1
                                             .B_m_N_2_re(In1_re_106),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_106),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_22_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_22_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_22_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_22_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_21 u_Butterfly_Stage2_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_21_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_21_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[20]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[20]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_22_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_22_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_21_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_21_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_21_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_21_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_23 u_Butterfly_Stage1_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_26),  // sfix8_En2
                                             .A_m_im(In1_im_26),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[22]),  // ufix1
                                             .B_m_N_2_re(In1_re_90),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_90),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_23_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_23_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_23_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_23_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_24 u_Butterfly_Stage1_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_58),  // sfix8_En2
                                             .A_m_im(In1_im_58),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[23]),  // ufix1
                                             .B_m_N_2_re(In1_re_122),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_122),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_24_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_24_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_24_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_24_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_23 u_Butterfly_Stage2_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_23_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_23_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[22]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[22]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_24_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_24_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_23_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_23_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_23_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_23_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_21 u_Butterfly_Stage3_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_21_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_21_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[20]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[20]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_23_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_23_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_21_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_21_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_21_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_21_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_17 u_Butterfly_Stage4_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_17_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_17_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[16]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[16]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_21_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_21_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_17_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_17_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_17_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_17_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage1_25 u_Butterfly_Stage1_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_6),  // sfix8_En2
                                             .A_m_im(In1_im_6),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[24]),  // ufix1
                                             .B_m_N_2_re(In1_re_70),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_70),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_25_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_25_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_25_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_25_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_26 u_Butterfly_Stage1_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_38),  // sfix8_En2
                                             .A_m_im(In1_im_38),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[25]),  // ufix1
                                             .B_m_N_2_re(In1_re_102),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_102),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_26_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_26_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_26_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_26_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_25 u_Butterfly_Stage2_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_25_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_25_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[24]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[24]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_26_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_26_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_25_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_25_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_25_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_25_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_27 u_Butterfly_Stage1_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_22),  // sfix8_En2
                                             .A_m_im(In1_im_22),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[26]),  // ufix1
                                             .B_m_N_2_re(In1_re_86),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_86),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_27_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_27_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_27_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_27_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_28 u_Butterfly_Stage1_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_54),  // sfix8_En2
                                             .A_m_im(In1_im_54),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[27]),  // ufix1
                                             .B_m_N_2_re(In1_re_118),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_118),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_28_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_28_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_28_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_28_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_27 u_Butterfly_Stage2_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_27_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_27_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[26]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[26]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_28_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_28_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_27_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_27_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_27_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_27_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_25 u_Butterfly_Stage3_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_25_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_25_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[24]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[24]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_27_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_27_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_25_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_25_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_25_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_25_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_29 u_Butterfly_Stage1_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_14),  // sfix8_En2
                                             .A_m_im(In1_im_14),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[28]),  // ufix1
                                             .B_m_N_2_re(In1_re_78),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_78),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_29_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_29_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_29_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_29_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_30 u_Butterfly_Stage1_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_46),  // sfix8_En2
                                             .A_m_im(In1_im_46),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[29]),  // ufix1
                                             .B_m_N_2_re(In1_re_110),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_110),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_30_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_30_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_30_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_30_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_29 u_Butterfly_Stage2_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_29_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_29_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[28]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[28]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_30_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_30_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_29_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_29_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_29_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_29_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_31 u_Butterfly_Stage1_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_30),  // sfix8_En2
                                             .A_m_im(In1_im_30),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[30]),  // ufix1
                                             .B_m_N_2_re(In1_re_94),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_94),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_31_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_31_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_31_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_31_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_32 u_Butterfly_Stage1_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_62),  // sfix8_En2
                                             .A_m_im(In1_im_62),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[31]),  // ufix1
                                             .B_m_N_2_re(In1_re_126),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_126),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_32_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_32_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_32_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_32_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_31 u_Butterfly_Stage2_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_31_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_31_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[30]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[30]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_32_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_32_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_31_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_31_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_31_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_31_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_29 u_Butterfly_Stage3_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_29_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_29_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[28]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[28]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_31_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_31_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_29_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_29_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_29_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_29_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_25 u_Butterfly_Stage4_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_25_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_25_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[24]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[24]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_29_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_29_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_25_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_25_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_25_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_25_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_17 u_Butterfly_Stage5_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_17_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_17_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[16]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[16]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_25_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_25_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_17_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_17_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_17_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_17_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_1 u_Butterfly_Stage6_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_1_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_1_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[0]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[0]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_17_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_17_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_1_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_1_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_1_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_1_out2_im)  // sfix31_En19
                                           );

  assign Constant6_out1_re[0] = 15'sb010000000000000;
  assign Constant6_out1_im[0] = 15'sb000000000000000;
  assign Constant6_out1_re[1] = 15'sb001111111110110;
  assign Constant6_out1_im[1] = 15'sb111111001101110;
  assign Constant6_out1_re[2] = 15'sb001111111011001;
  assign Constant6_out1_im[2] = 15'sb111110011011101;
  assign Constant6_out1_re[3] = 15'sb001111110100111;
  assign Constant6_out1_im[3] = 15'sb111101101001110;
  assign Constant6_out1_re[4] = 15'sb001111101100011;
  assign Constant6_out1_im[4] = 15'sb111100111000010;
  assign Constant6_out1_re[5] = 15'sb001111100001010;
  assign Constant6_out1_im[5] = 15'sb111100000111010;
  assign Constant6_out1_re[6] = 15'sb001111010011111;
  assign Constant6_out1_im[6] = 15'sb111011010110110;
  assign Constant6_out1_re[7] = 15'sb001111000100001;
  assign Constant6_out1_im[7] = 15'sb111010100111000;
  assign Constant6_out1_re[8] = 15'sb001110110010000;
  assign Constant6_out1_im[8] = 15'sb111001111000001;
  assign Constant6_out1_re[9] = 15'sb001110011101101;
  assign Constant6_out1_im[9] = 15'sb111001001010001;
  assign Constant6_out1_re[10] = 15'sb001110000111001;
  assign Constant6_out1_im[10] = 15'sb111000011101010;
  assign Constant6_out1_re[11] = 15'sb001101101110011;
  assign Constant6_out1_im[11] = 15'sb110111110001100;
  assign Constant6_out1_re[12] = 15'sb001101010011011;
  assign Constant6_out1_im[12] = 15'sb110111000111001;
  assign Constant6_out1_re[13] = 15'sb001100110110100;
  assign Constant6_out1_im[13] = 15'sb110110011110000;
  assign Constant6_out1_re[14] = 15'sb001100010111101;
  assign Constant6_out1_im[14] = 15'sb110101110110011;
  assign Constant6_out1_re[15] = 15'sb001011110110110;
  assign Constant6_out1_im[15] = 15'sb110101010000011;
  assign Constant6_out1_re[16] = 15'sb001011010100001;
  assign Constant6_out1_im[16] = 15'sb110100101011111;
  assign Constant6_out1_re[17] = 15'sb001010101111101;
  assign Constant6_out1_im[17] = 15'sb110100001001010;
  assign Constant6_out1_re[18] = 15'sb001010001001101;
  assign Constant6_out1_im[18] = 15'sb110011101000011;
  assign Constant6_out1_re[19] = 15'sb001001100010000;
  assign Constant6_out1_im[19] = 15'sb110011001001100;
  assign Constant6_out1_re[20] = 15'sb001000111000111;
  assign Constant6_out1_im[20] = 15'sb110010101100101;
  assign Constant6_out1_re[21] = 15'sb001000001110100;
  assign Constant6_out1_im[21] = 15'sb110010010001101;
  assign Constant6_out1_re[22] = 15'sb000111100010110;
  assign Constant6_out1_im[22] = 15'sb110001111000111;
  assign Constant6_out1_re[23] = 15'sb000110110101111;
  assign Constant6_out1_im[23] = 15'sb110001100010011;
  assign Constant6_out1_re[24] = 15'sb000110000111111;
  assign Constant6_out1_im[24] = 15'sb110001001110000;
  assign Constant6_out1_re[25] = 15'sb000101011001000;
  assign Constant6_out1_im[25] = 15'sb110000111011111;
  assign Constant6_out1_re[26] = 15'sb000100101001010;
  assign Constant6_out1_im[26] = 15'sb110000101100001;
  assign Constant6_out1_re[27] = 15'sb000011111000110;
  assign Constant6_out1_im[27] = 15'sb110000011110110;
  assign Constant6_out1_re[28] = 15'sb000011000111110;
  assign Constant6_out1_im[28] = 15'sb110000010011101;
  assign Constant6_out1_re[29] = 15'sb000010010110010;
  assign Constant6_out1_im[29] = 15'sb110000001011001;
  assign Constant6_out1_re[30] = 15'sb000001100100011;
  assign Constant6_out1_im[30] = 15'sb110000000100111;
  assign Constant6_out1_re[31] = 15'sb000000110010010;
  assign Constant6_out1_im[31] = 15'sb110000000001010;
  assign Constant6_out1_re[32] = 15'sb000000000000000;
  assign Constant6_out1_im[32] = 15'sb110000000000000;
  assign Constant6_out1_re[33] = 15'sb111111001101110;
  assign Constant6_out1_im[33] = 15'sb110000000001010;
  assign Constant6_out1_re[34] = 15'sb111110011011101;
  assign Constant6_out1_im[34] = 15'sb110000000100111;
  assign Constant6_out1_re[35] = 15'sb111101101001110;
  assign Constant6_out1_im[35] = 15'sb110000001011001;
  assign Constant6_out1_re[36] = 15'sb111100111000010;
  assign Constant6_out1_im[36] = 15'sb110000010011101;
  assign Constant6_out1_re[37] = 15'sb111100000111010;
  assign Constant6_out1_im[37] = 15'sb110000011110110;
  assign Constant6_out1_re[38] = 15'sb111011010110110;
  assign Constant6_out1_im[38] = 15'sb110000101100001;
  assign Constant6_out1_re[39] = 15'sb111010100111000;
  assign Constant6_out1_im[39] = 15'sb110000111011111;
  assign Constant6_out1_re[40] = 15'sb111001111000001;
  assign Constant6_out1_im[40] = 15'sb110001001110000;
  assign Constant6_out1_re[41] = 15'sb111001001010001;
  assign Constant6_out1_im[41] = 15'sb110001100010011;
  assign Constant6_out1_re[42] = 15'sb111000011101010;
  assign Constant6_out1_im[42] = 15'sb110001111000111;
  assign Constant6_out1_re[43] = 15'sb110111110001100;
  assign Constant6_out1_im[43] = 15'sb110010010001101;
  assign Constant6_out1_re[44] = 15'sb110111000111001;
  assign Constant6_out1_im[44] = 15'sb110010101100101;
  assign Constant6_out1_re[45] = 15'sb110110011110000;
  assign Constant6_out1_im[45] = 15'sb110011001001100;
  assign Constant6_out1_re[46] = 15'sb110101110110011;
  assign Constant6_out1_im[46] = 15'sb110011101000011;
  assign Constant6_out1_re[47] = 15'sb110101010000011;
  assign Constant6_out1_im[47] = 15'sb110100001001010;
  assign Constant6_out1_re[48] = 15'sb110100101011111;
  assign Constant6_out1_im[48] = 15'sb110100101011111;
  assign Constant6_out1_re[49] = 15'sb110100001001010;
  assign Constant6_out1_im[49] = 15'sb110101010000011;
  assign Constant6_out1_re[50] = 15'sb110011101000011;
  assign Constant6_out1_im[50] = 15'sb110101110110011;
  assign Constant6_out1_re[51] = 15'sb110011001001100;
  assign Constant6_out1_im[51] = 15'sb110110011110000;
  assign Constant6_out1_re[52] = 15'sb110010101100101;
  assign Constant6_out1_im[52] = 15'sb110111000111001;
  assign Constant6_out1_re[53] = 15'sb110010010001101;
  assign Constant6_out1_im[53] = 15'sb110111110001100;
  assign Constant6_out1_re[54] = 15'sb110001111000111;
  assign Constant6_out1_im[54] = 15'sb111000011101010;
  assign Constant6_out1_re[55] = 15'sb110001100010011;
  assign Constant6_out1_im[55] = 15'sb111001001010001;
  assign Constant6_out1_re[56] = 15'sb110001001110000;
  assign Constant6_out1_im[56] = 15'sb111001111000001;
  assign Constant6_out1_re[57] = 15'sb110000111011111;
  assign Constant6_out1_im[57] = 15'sb111010100111000;
  assign Constant6_out1_re[58] = 15'sb110000101100001;
  assign Constant6_out1_im[58] = 15'sb111011010110110;
  assign Constant6_out1_re[59] = 15'sb110000011110110;
  assign Constant6_out1_im[59] = 15'sb111100000111010;
  assign Constant6_out1_re[60] = 15'sb110000010011101;
  assign Constant6_out1_im[60] = 15'sb111100111000010;
  assign Constant6_out1_re[61] = 15'sb110000001011001;
  assign Constant6_out1_im[61] = 15'sb111101101001110;
  assign Constant6_out1_re[62] = 15'sb110000000100111;
  assign Constant6_out1_im[62] = 15'sb111110011011101;
  assign Constant6_out1_re[63] = 15'sb110000000001010;
  assign Constant6_out1_im[63] = 15'sb111111001101110;



  assign Data_Type_Conversion6_out1_re[0] = Constant6_out1_re[0];
  assign Data_Type_Conversion6_out1_im[0] = Constant6_out1_im[0];
  assign Data_Type_Conversion6_out1_re[1] = Constant6_out1_re[1];
  assign Data_Type_Conversion6_out1_im[1] = Constant6_out1_im[1];
  assign Data_Type_Conversion6_out1_re[2] = Constant6_out1_re[2];
  assign Data_Type_Conversion6_out1_im[2] = Constant6_out1_im[2];
  assign Data_Type_Conversion6_out1_re[3] = Constant6_out1_re[3];
  assign Data_Type_Conversion6_out1_im[3] = Constant6_out1_im[3];
  assign Data_Type_Conversion6_out1_re[4] = Constant6_out1_re[4];
  assign Data_Type_Conversion6_out1_im[4] = Constant6_out1_im[4];
  assign Data_Type_Conversion6_out1_re[5] = Constant6_out1_re[5];
  assign Data_Type_Conversion6_out1_im[5] = Constant6_out1_im[5];
  assign Data_Type_Conversion6_out1_re[6] = Constant6_out1_re[6];
  assign Data_Type_Conversion6_out1_im[6] = Constant6_out1_im[6];
  assign Data_Type_Conversion6_out1_re[7] = Constant6_out1_re[7];
  assign Data_Type_Conversion6_out1_im[7] = Constant6_out1_im[7];
  assign Data_Type_Conversion6_out1_re[8] = Constant6_out1_re[8];
  assign Data_Type_Conversion6_out1_im[8] = Constant6_out1_im[8];
  assign Data_Type_Conversion6_out1_re[9] = Constant6_out1_re[9];
  assign Data_Type_Conversion6_out1_im[9] = Constant6_out1_im[9];
  assign Data_Type_Conversion6_out1_re[10] = Constant6_out1_re[10];
  assign Data_Type_Conversion6_out1_im[10] = Constant6_out1_im[10];
  assign Data_Type_Conversion6_out1_re[11] = Constant6_out1_re[11];
  assign Data_Type_Conversion6_out1_im[11] = Constant6_out1_im[11];
  assign Data_Type_Conversion6_out1_re[12] = Constant6_out1_re[12];
  assign Data_Type_Conversion6_out1_im[12] = Constant6_out1_im[12];
  assign Data_Type_Conversion6_out1_re[13] = Constant6_out1_re[13];
  assign Data_Type_Conversion6_out1_im[13] = Constant6_out1_im[13];
  assign Data_Type_Conversion6_out1_re[14] = Constant6_out1_re[14];
  assign Data_Type_Conversion6_out1_im[14] = Constant6_out1_im[14];
  assign Data_Type_Conversion6_out1_re[15] = Constant6_out1_re[15];
  assign Data_Type_Conversion6_out1_im[15] = Constant6_out1_im[15];
  assign Data_Type_Conversion6_out1_re[16] = Constant6_out1_re[16];
  assign Data_Type_Conversion6_out1_im[16] = Constant6_out1_im[16];
  assign Data_Type_Conversion6_out1_re[17] = Constant6_out1_re[17];
  assign Data_Type_Conversion6_out1_im[17] = Constant6_out1_im[17];
  assign Data_Type_Conversion6_out1_re[18] = Constant6_out1_re[18];
  assign Data_Type_Conversion6_out1_im[18] = Constant6_out1_im[18];
  assign Data_Type_Conversion6_out1_re[19] = Constant6_out1_re[19];
  assign Data_Type_Conversion6_out1_im[19] = Constant6_out1_im[19];
  assign Data_Type_Conversion6_out1_re[20] = Constant6_out1_re[20];
  assign Data_Type_Conversion6_out1_im[20] = Constant6_out1_im[20];
  assign Data_Type_Conversion6_out1_re[21] = Constant6_out1_re[21];
  assign Data_Type_Conversion6_out1_im[21] = Constant6_out1_im[21];
  assign Data_Type_Conversion6_out1_re[22] = Constant6_out1_re[22];
  assign Data_Type_Conversion6_out1_im[22] = Constant6_out1_im[22];
  assign Data_Type_Conversion6_out1_re[23] = Constant6_out1_re[23];
  assign Data_Type_Conversion6_out1_im[23] = Constant6_out1_im[23];
  assign Data_Type_Conversion6_out1_re[24] = Constant6_out1_re[24];
  assign Data_Type_Conversion6_out1_im[24] = Constant6_out1_im[24];
  assign Data_Type_Conversion6_out1_re[25] = Constant6_out1_re[25];
  assign Data_Type_Conversion6_out1_im[25] = Constant6_out1_im[25];
  assign Data_Type_Conversion6_out1_re[26] = Constant6_out1_re[26];
  assign Data_Type_Conversion6_out1_im[26] = Constant6_out1_im[26];
  assign Data_Type_Conversion6_out1_re[27] = Constant6_out1_re[27];
  assign Data_Type_Conversion6_out1_im[27] = Constant6_out1_im[27];
  assign Data_Type_Conversion6_out1_re[28] = Constant6_out1_re[28];
  assign Data_Type_Conversion6_out1_im[28] = Constant6_out1_im[28];
  assign Data_Type_Conversion6_out1_re[29] = Constant6_out1_re[29];
  assign Data_Type_Conversion6_out1_im[29] = Constant6_out1_im[29];
  assign Data_Type_Conversion6_out1_re[30] = Constant6_out1_re[30];
  assign Data_Type_Conversion6_out1_im[30] = Constant6_out1_im[30];
  assign Data_Type_Conversion6_out1_re[31] = Constant6_out1_re[31];
  assign Data_Type_Conversion6_out1_im[31] = Constant6_out1_im[31];
  assign Data_Type_Conversion6_out1_re[32] = Constant6_out1_re[32];
  assign Data_Type_Conversion6_out1_im[32] = Constant6_out1_im[32];
  assign Data_Type_Conversion6_out1_re[33] = Constant6_out1_re[33];
  assign Data_Type_Conversion6_out1_im[33] = Constant6_out1_im[33];
  assign Data_Type_Conversion6_out1_re[34] = Constant6_out1_re[34];
  assign Data_Type_Conversion6_out1_im[34] = Constant6_out1_im[34];
  assign Data_Type_Conversion6_out1_re[35] = Constant6_out1_re[35];
  assign Data_Type_Conversion6_out1_im[35] = Constant6_out1_im[35];
  assign Data_Type_Conversion6_out1_re[36] = Constant6_out1_re[36];
  assign Data_Type_Conversion6_out1_im[36] = Constant6_out1_im[36];
  assign Data_Type_Conversion6_out1_re[37] = Constant6_out1_re[37];
  assign Data_Type_Conversion6_out1_im[37] = Constant6_out1_im[37];
  assign Data_Type_Conversion6_out1_re[38] = Constant6_out1_re[38];
  assign Data_Type_Conversion6_out1_im[38] = Constant6_out1_im[38];
  assign Data_Type_Conversion6_out1_re[39] = Constant6_out1_re[39];
  assign Data_Type_Conversion6_out1_im[39] = Constant6_out1_im[39];
  assign Data_Type_Conversion6_out1_re[40] = Constant6_out1_re[40];
  assign Data_Type_Conversion6_out1_im[40] = Constant6_out1_im[40];
  assign Data_Type_Conversion6_out1_re[41] = Constant6_out1_re[41];
  assign Data_Type_Conversion6_out1_im[41] = Constant6_out1_im[41];
  assign Data_Type_Conversion6_out1_re[42] = Constant6_out1_re[42];
  assign Data_Type_Conversion6_out1_im[42] = Constant6_out1_im[42];
  assign Data_Type_Conversion6_out1_re[43] = Constant6_out1_re[43];
  assign Data_Type_Conversion6_out1_im[43] = Constant6_out1_im[43];
  assign Data_Type_Conversion6_out1_re[44] = Constant6_out1_re[44];
  assign Data_Type_Conversion6_out1_im[44] = Constant6_out1_im[44];
  assign Data_Type_Conversion6_out1_re[45] = Constant6_out1_re[45];
  assign Data_Type_Conversion6_out1_im[45] = Constant6_out1_im[45];
  assign Data_Type_Conversion6_out1_re[46] = Constant6_out1_re[46];
  assign Data_Type_Conversion6_out1_im[46] = Constant6_out1_im[46];
  assign Data_Type_Conversion6_out1_re[47] = Constant6_out1_re[47];
  assign Data_Type_Conversion6_out1_im[47] = Constant6_out1_im[47];
  assign Data_Type_Conversion6_out1_re[48] = Constant6_out1_re[48];
  assign Data_Type_Conversion6_out1_im[48] = Constant6_out1_im[48];
  assign Data_Type_Conversion6_out1_re[49] = Constant6_out1_re[49];
  assign Data_Type_Conversion6_out1_im[49] = Constant6_out1_im[49];
  assign Data_Type_Conversion6_out1_re[50] = Constant6_out1_re[50];
  assign Data_Type_Conversion6_out1_im[50] = Constant6_out1_im[50];
  assign Data_Type_Conversion6_out1_re[51] = Constant6_out1_re[51];
  assign Data_Type_Conversion6_out1_im[51] = Constant6_out1_im[51];
  assign Data_Type_Conversion6_out1_re[52] = Constant6_out1_re[52];
  assign Data_Type_Conversion6_out1_im[52] = Constant6_out1_im[52];
  assign Data_Type_Conversion6_out1_re[53] = Constant6_out1_re[53];
  assign Data_Type_Conversion6_out1_im[53] = Constant6_out1_im[53];
  assign Data_Type_Conversion6_out1_re[54] = Constant6_out1_re[54];
  assign Data_Type_Conversion6_out1_im[54] = Constant6_out1_im[54];
  assign Data_Type_Conversion6_out1_re[55] = Constant6_out1_re[55];
  assign Data_Type_Conversion6_out1_im[55] = Constant6_out1_im[55];
  assign Data_Type_Conversion6_out1_re[56] = Constant6_out1_re[56];
  assign Data_Type_Conversion6_out1_im[56] = Constant6_out1_im[56];
  assign Data_Type_Conversion6_out1_re[57] = Constant6_out1_re[57];
  assign Data_Type_Conversion6_out1_im[57] = Constant6_out1_im[57];
  assign Data_Type_Conversion6_out1_re[58] = Constant6_out1_re[58];
  assign Data_Type_Conversion6_out1_im[58] = Constant6_out1_im[58];
  assign Data_Type_Conversion6_out1_re[59] = Constant6_out1_re[59];
  assign Data_Type_Conversion6_out1_im[59] = Constant6_out1_im[59];
  assign Data_Type_Conversion6_out1_re[60] = Constant6_out1_re[60];
  assign Data_Type_Conversion6_out1_im[60] = Constant6_out1_im[60];
  assign Data_Type_Conversion6_out1_re[61] = Constant6_out1_re[61];
  assign Data_Type_Conversion6_out1_im[61] = Constant6_out1_im[61];
  assign Data_Type_Conversion6_out1_re[62] = Constant6_out1_re[62];
  assign Data_Type_Conversion6_out1_im[62] = Constant6_out1_im[62];
  assign Data_Type_Conversion6_out1_re[63] = Constant6_out1_re[63];
  assign Data_Type_Conversion6_out1_im[63] = Constant6_out1_im[63];



  Butterfly_Stage1_33 u_Butterfly_Stage1_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_1),  // sfix8_En2
                                             .A_m_im(In1_im_1),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[32]),  // ufix1
                                             .B_m_N_2_re(In1_re_65),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_65),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_33_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_33_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_33_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_33_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_34 u_Butterfly_Stage1_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_33),  // sfix8_En2
                                             .A_m_im(In1_im_33),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[33]),  // ufix1
                                             .B_m_N_2_re(In1_re_97),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_97),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_34_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_34_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_34_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_34_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_33 u_Butterfly_Stage2_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_33_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_33_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[32]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[32]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_34_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_34_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_33_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_33_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_33_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_33_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_35 u_Butterfly_Stage1_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_17),  // sfix8_En2
                                             .A_m_im(In1_im_17),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[34]),  // ufix1
                                             .B_m_N_2_re(In1_re_81),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_81),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_35_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_35_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_35_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_35_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_36 u_Butterfly_Stage1_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_49),  // sfix8_En2
                                             .A_m_im(In1_im_49),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[35]),  // ufix1
                                             .B_m_N_2_re(In1_re_113),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_113),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_36_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_36_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_36_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_36_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_35 u_Butterfly_Stage2_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_35_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_35_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[34]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[34]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_36_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_36_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_35_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_35_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_35_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_35_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_33 u_Butterfly_Stage3_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_33_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_33_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[32]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[32]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_35_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_35_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_33_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_33_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_33_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_33_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_37 u_Butterfly_Stage1_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_9),  // sfix8_En2
                                             .A_m_im(In1_im_9),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[36]),  // ufix1
                                             .B_m_N_2_re(In1_re_73),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_73),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_37_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_37_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_37_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_37_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_38 u_Butterfly_Stage1_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_41),  // sfix8_En2
                                             .A_m_im(In1_im_41),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[37]),  // ufix1
                                             .B_m_N_2_re(In1_re_105),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_105),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_38_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_38_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_38_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_38_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_37 u_Butterfly_Stage2_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_37_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_37_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[36]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[36]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_38_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_38_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_37_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_37_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_37_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_37_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_39 u_Butterfly_Stage1_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_25),  // sfix8_En2
                                             .A_m_im(In1_im_25),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[38]),  // ufix1
                                             .B_m_N_2_re(In1_re_89),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_89),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_39_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_39_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_39_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_39_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_40 u_Butterfly_Stage1_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_57),  // sfix8_En2
                                             .A_m_im(In1_im_57),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[39]),  // ufix1
                                             .B_m_N_2_re(In1_re_121),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_121),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_40_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_40_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_40_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_40_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_39 u_Butterfly_Stage2_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_39_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_39_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[38]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[38]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_40_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_40_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_39_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_39_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_39_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_39_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_37 u_Butterfly_Stage3_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_37_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_37_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[36]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[36]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_39_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_39_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_37_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_37_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_37_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_37_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_33 u_Butterfly_Stage4_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_33_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_33_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[32]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[32]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_37_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_37_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_33_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_33_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_33_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_33_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage1_41 u_Butterfly_Stage1_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_5),  // sfix8_En2
                                             .A_m_im(In1_im_5),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[40]),  // ufix1
                                             .B_m_N_2_re(In1_re_69),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_69),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_41_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_41_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_41_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_41_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_42 u_Butterfly_Stage1_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_37),  // sfix8_En2
                                             .A_m_im(In1_im_37),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[41]),  // ufix1
                                             .B_m_N_2_re(In1_re_101),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_101),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_42_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_42_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_42_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_42_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_41 u_Butterfly_Stage2_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_41_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_41_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[40]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[40]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_42_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_42_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_41_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_41_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_41_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_41_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_43 u_Butterfly_Stage1_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_21),  // sfix8_En2
                                             .A_m_im(In1_im_21),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[42]),  // ufix1
                                             .B_m_N_2_re(In1_re_85),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_85),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_43_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_43_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_43_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_43_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_44 u_Butterfly_Stage1_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_53),  // sfix8_En2
                                             .A_m_im(In1_im_53),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[43]),  // ufix1
                                             .B_m_N_2_re(In1_re_117),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_117),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_44_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_44_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_44_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_44_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_43 u_Butterfly_Stage2_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_43_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_43_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[42]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[42]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_44_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_44_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_43_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_43_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_43_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_43_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_41 u_Butterfly_Stage3_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_41_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_41_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[40]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[40]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_43_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_43_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_41_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_41_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_41_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_41_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_45 u_Butterfly_Stage1_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_13),  // sfix8_En2
                                             .A_m_im(In1_im_13),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[44]),  // ufix1
                                             .B_m_N_2_re(In1_re_77),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_77),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_45_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_45_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_45_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_45_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_46 u_Butterfly_Stage1_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_45),  // sfix8_En2
                                             .A_m_im(In1_im_45),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[45]),  // ufix1
                                             .B_m_N_2_re(In1_re_109),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_109),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_46_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_46_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_46_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_46_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_45 u_Butterfly_Stage2_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_45_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_45_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[44]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[44]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_46_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_46_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_45_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_45_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_45_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_45_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_47 u_Butterfly_Stage1_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_29),  // sfix8_En2
                                             .A_m_im(In1_im_29),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[46]),  // ufix1
                                             .B_m_N_2_re(In1_re_93),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_93),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_47_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_47_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_47_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_47_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_48 u_Butterfly_Stage1_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_61),  // sfix8_En2
                                             .A_m_im(In1_im_61),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[47]),  // ufix1
                                             .B_m_N_2_re(In1_re_125),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_125),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_48_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_48_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_48_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_48_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_47 u_Butterfly_Stage2_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_47_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_47_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[46]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[46]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_48_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_48_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_47_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_47_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_47_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_47_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_45 u_Butterfly_Stage3_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_45_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_45_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[44]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[44]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_47_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_47_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_45_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_45_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_45_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_45_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_41 u_Butterfly_Stage4_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_41_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_41_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[40]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[40]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_45_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_45_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_41_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_41_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_41_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_41_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_33 u_Butterfly_Stage5_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_33_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_33_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[32]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[32]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_41_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_41_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_33_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_33_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_33_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_33_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage1_49 u_Butterfly_Stage1_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_3),  // sfix8_En2
                                             .A_m_im(In1_im_3),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[48]),  // ufix1
                                             .B_m_N_2_re(In1_re_67),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_67),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_49_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_49_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_49_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_49_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_50 u_Butterfly_Stage1_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_35),  // sfix8_En2
                                             .A_m_im(In1_im_35),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[49]),  // ufix1
                                             .B_m_N_2_re(In1_re_99),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_99),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_50_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_50_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_50_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_50_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_49 u_Butterfly_Stage2_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_49_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_49_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[48]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[48]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_50_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_50_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_49_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_49_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_49_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_49_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_51 u_Butterfly_Stage1_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_19),  // sfix8_En2
                                             .A_m_im(In1_im_19),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[50]),  // ufix1
                                             .B_m_N_2_re(In1_re_83),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_83),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_51_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_51_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_51_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_51_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_52 u_Butterfly_Stage1_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_51),  // sfix8_En2
                                             .A_m_im(In1_im_51),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[51]),  // ufix1
                                             .B_m_N_2_re(In1_re_115),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_115),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_52_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_52_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_52_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_52_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_51 u_Butterfly_Stage2_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_51_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_51_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[50]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[50]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_52_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_52_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_51_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_51_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_51_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_51_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_49 u_Butterfly_Stage3_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_49_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_49_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[48]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[48]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_51_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_51_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_49_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_49_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_49_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_49_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_53 u_Butterfly_Stage1_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_11),  // sfix8_En2
                                             .A_m_im(In1_im_11),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[52]),  // ufix1
                                             .B_m_N_2_re(In1_re_75),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_75),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_53_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_53_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_53_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_53_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_54 u_Butterfly_Stage1_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_43),  // sfix8_En2
                                             .A_m_im(In1_im_43),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[53]),  // ufix1
                                             .B_m_N_2_re(In1_re_107),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_107),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_54_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_54_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_54_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_54_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_53 u_Butterfly_Stage2_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_53_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_53_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[52]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[52]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_54_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_54_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_53_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_53_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_53_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_53_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_55 u_Butterfly_Stage1_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_27),  // sfix8_En2
                                             .A_m_im(In1_im_27),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[54]),  // ufix1
                                             .B_m_N_2_re(In1_re_91),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_91),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_55_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_55_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_55_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_55_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_56 u_Butterfly_Stage1_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_59),  // sfix8_En2
                                             .A_m_im(In1_im_59),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[55]),  // ufix1
                                             .B_m_N_2_re(In1_re_123),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_123),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_56_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_56_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_56_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_56_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_55 u_Butterfly_Stage2_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_55_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_55_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[54]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[54]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_56_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_56_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_55_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_55_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_55_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_55_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_53 u_Butterfly_Stage3_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_53_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_53_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[52]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[52]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_55_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_55_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_53_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_53_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_53_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_53_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_49 u_Butterfly_Stage4_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_49_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_49_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[48]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[48]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_53_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_53_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_49_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_49_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_49_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_49_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage1_57 u_Butterfly_Stage1_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_7),  // sfix8_En2
                                             .A_m_im(In1_im_7),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[56]),  // ufix1
                                             .B_m_N_2_re(In1_re_71),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_71),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_57_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_57_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_57_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_57_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_58 u_Butterfly_Stage1_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_39),  // sfix8_En2
                                             .A_m_im(In1_im_39),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[57]),  // ufix1
                                             .B_m_N_2_re(In1_re_103),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_103),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_58_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_58_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_58_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_58_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_57 u_Butterfly_Stage2_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_57_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_57_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[56]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[56]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_58_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_58_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_57_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_57_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_57_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_57_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_59 u_Butterfly_Stage1_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_23),  // sfix8_En2
                                             .A_m_im(In1_im_23),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[58]),  // ufix1
                                             .B_m_N_2_re(In1_re_87),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_87),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_59_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_59_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_59_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_59_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_60 u_Butterfly_Stage1_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_55),  // sfix8_En2
                                             .A_m_im(In1_im_55),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[59]),  // ufix1
                                             .B_m_N_2_re(In1_re_119),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_119),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_60_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_60_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_60_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_60_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_59 u_Butterfly_Stage2_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_59_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_59_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[58]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[58]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_60_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_60_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_59_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_59_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_59_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_59_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_57 u_Butterfly_Stage3_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_57_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_57_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[56]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[56]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_59_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_59_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_57_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_57_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_57_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_57_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage1_61 u_Butterfly_Stage1_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_15),  // sfix8_En2
                                             .A_m_im(In1_im_15),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[60]),  // ufix1
                                             .B_m_N_2_re(In1_re_79),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_79),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_61_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_61_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_61_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_61_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_62 u_Butterfly_Stage1_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_47),  // sfix8_En2
                                             .A_m_im(In1_im_47),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[61]),  // ufix1
                                             .B_m_N_2_re(In1_re_111),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_111),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_62_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_62_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_62_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_62_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_61 u_Butterfly_Stage2_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_61_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_61_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[60]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[60]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_62_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_62_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_61_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_61_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_61_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_61_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_63 u_Butterfly_Stage1_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_31),  // sfix8_En2
                                             .A_m_im(In1_im_31),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[62]),  // ufix1
                                             .B_m_N_2_re(In1_re_95),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_95),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_63_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_63_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_63_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_63_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage1_64 u_Butterfly_Stage1_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(In1_re_63),  // sfix8_En2
                                             .A_m_im(In1_im_63),  // sfix8_En2
                                             .W(Data_Type_Conversion_out1[63]),  // ufix1
                                             .B_m_N_2_re(In1_re_127),  // sfix8_En2
                                             .B_m_N_2_im(In1_im_127),  // sfix8_En2
                                             .X_m_re(Butterfly_Stage1_64_out1_re),  // sfix9_En2
                                             .X_m_im(Butterfly_Stage1_64_out1_im),  // sfix9_En2
                                             .X_m_N_2_re(Butterfly_Stage1_64_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage1_64_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_63 u_Butterfly_Stage2_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_63_out1_re),  // sfix9_En2
                                             .A_m_im(Butterfly_Stage1_63_out1_im),  // sfix9_En2
                                             .W_re(Data_Type_Conversion1_out1_re[62]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[62]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_64_out1_re),  // sfix9_En2
                                             .B_m_N_2_im(Butterfly_Stage1_64_out1_im),  // sfix9_En2
                                             .X_m_re(Butterfly_Stage2_63_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_63_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_63_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_63_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_61 u_Butterfly_Stage3_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_61_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_61_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[60]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[60]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_63_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_63_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_61_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_61_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_61_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_61_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_57 u_Butterfly_Stage4_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_57_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_57_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[56]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[56]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_61_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_61_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_57_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_57_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_57_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_57_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_49 u_Butterfly_Stage5_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_49_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_49_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[48]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[48]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_57_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_57_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_49_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_49_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_49_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_49_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_33 u_Butterfly_Stage6_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_33_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_33_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[32]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[32]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_49_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_49_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_33_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_33_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_33_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_33_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_1 u_Butterfly_Stage7_1 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_1_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_1_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[0]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[0]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_33_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_33_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_1_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_1_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_1_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_1_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_0 = Butterfly_Stage7_1_out1_re;

  Butterfly_Stage2_2 u_Butterfly_Stage2_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_1_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage1_1_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion1_out1_re[1]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[1]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_2_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage1_2_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage2_2_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_2_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_2_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_2_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_4 u_Butterfly_Stage2_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_3_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage1_3_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion1_out1_re[3]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[3]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_4_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage1_4_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage2_4_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_4_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_4_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_4_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage3_2 u_Butterfly_Stage3_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_2_out1_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_2_out1_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[1]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[1]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_4_out1_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_4_out1_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_2_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_2_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_2_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_2_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage2_6 u_Butterfly_Stage2_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_5_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage1_5_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion1_out1_re[5]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[5]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_6_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage1_6_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage2_6_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_6_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_6_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_6_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage2_8 u_Butterfly_Stage2_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage1_7_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage1_7_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion1_out1_re[7]),  // sfix2
                                           .W_im(Data_Type_Conversion1_out1_im[7]),  // sfix2
                                           .B_m_N_2_re(Butterfly_Stage1_8_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage1_8_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage2_8_out1_re),  // sfix10_En2
                                           .X_m_im(Butterfly_Stage2_8_out1_im),  // sfix10_En2
                                           .X_m_N_2_re(Butterfly_Stage2_8_out2_re),  // sfix10_En2
                                           .X_m_N_2_im(Butterfly_Stage2_8_out2_im)  // sfix10_En2
                                           );

  Butterfly_Stage3_6 u_Butterfly_Stage3_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_6_out1_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_6_out1_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[5]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[5]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_8_out1_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_8_out1_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_6_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_6_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_6_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_6_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage4_2 u_Butterfly_Stage4_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_2_out1_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_2_out1_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[1]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[1]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_6_out1_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_6_out1_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_2_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_2_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_2_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_2_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage2_10 u_Butterfly_Stage2_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_9_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_9_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[9]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[9]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_10_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_10_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_10_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_10_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_10_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_10_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_12 u_Butterfly_Stage2_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_11_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_11_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[11]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[11]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_12_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_12_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_12_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_12_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_12_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_12_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_10 u_Butterfly_Stage3_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_10_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_10_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[9]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[9]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_12_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_12_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_10_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_10_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_10_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_10_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_14 u_Butterfly_Stage2_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_13_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_13_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[13]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[13]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_14_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_14_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_14_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_14_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_14_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_14_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_16 u_Butterfly_Stage2_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_15_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_15_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[15]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[15]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_16_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_16_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_16_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_16_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_16_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_16_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_14 u_Butterfly_Stage3_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_14_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_14_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[13]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[13]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_16_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_16_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_14_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_14_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_14_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_14_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_10 u_Butterfly_Stage4_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_10_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_10_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[9]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[9]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_14_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_14_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_10_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_10_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_10_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_10_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_2 u_Butterfly_Stage5_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_2_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_2_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[1]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[1]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_10_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_10_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_2_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_2_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_2_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_2_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage2_18 u_Butterfly_Stage2_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_17_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_17_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[17]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[17]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_18_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_18_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_18_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_18_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_18_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_18_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_20 u_Butterfly_Stage2_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_19_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_19_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[19]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[19]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_20_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_20_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_20_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_20_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_20_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_20_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_18 u_Butterfly_Stage3_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_18_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_18_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[17]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[17]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_20_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_20_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_18_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_18_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_18_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_18_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_22 u_Butterfly_Stage2_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_21_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_21_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[21]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[21]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_22_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_22_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_22_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_22_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_22_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_22_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_24 u_Butterfly_Stage2_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_23_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_23_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[23]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[23]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_24_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_24_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_24_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_24_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_24_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_24_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_22 u_Butterfly_Stage3_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_22_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_22_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[21]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[21]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_24_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_24_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_22_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_22_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_22_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_22_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_18 u_Butterfly_Stage4_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_18_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_18_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[17]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[17]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_22_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_22_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_18_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_18_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_18_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_18_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage2_26 u_Butterfly_Stage2_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_25_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_25_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[25]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[25]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_26_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_26_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_26_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_26_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_26_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_26_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_28 u_Butterfly_Stage2_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_27_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_27_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[27]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[27]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_28_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_28_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_28_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_28_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_28_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_28_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_26 u_Butterfly_Stage3_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_26_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_26_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[25]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[25]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_28_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_28_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_26_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_26_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_26_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_26_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_30 u_Butterfly_Stage2_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_29_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_29_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[29]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[29]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_30_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_30_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_30_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_30_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_30_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_30_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_32 u_Butterfly_Stage2_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_31_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_31_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[31]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[31]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_32_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_32_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_32_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_32_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_32_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_32_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_30 u_Butterfly_Stage3_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_30_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_30_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[29]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[29]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_32_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_32_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_30_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_30_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_30_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_30_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_26 u_Butterfly_Stage4_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_26_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_26_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[25]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[25]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_30_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_30_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_26_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_26_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_26_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_26_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_18 u_Butterfly_Stage5_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_18_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_18_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[17]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[17]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_26_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_26_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_18_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_18_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_18_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_18_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_2 u_Butterfly_Stage6_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_2_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_2_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[1]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[1]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_18_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_18_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_2_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_2_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_2_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_2_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage2_34 u_Butterfly_Stage2_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_33_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_33_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[33]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[33]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_34_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_34_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_34_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_34_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_34_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_34_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_36 u_Butterfly_Stage2_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_35_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_35_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[35]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[35]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_36_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_36_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_36_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_36_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_36_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_36_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_34 u_Butterfly_Stage3_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_34_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_34_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[33]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[33]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_36_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_36_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_34_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_34_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_34_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_34_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_38 u_Butterfly_Stage2_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_37_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_37_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[37]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[37]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_38_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_38_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_38_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_38_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_38_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_38_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_40 u_Butterfly_Stage2_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_39_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_39_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[39]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[39]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_40_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_40_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_40_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_40_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_40_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_40_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_38 u_Butterfly_Stage3_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_38_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_38_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[37]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[37]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_40_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_40_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_38_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_38_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_38_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_38_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_34 u_Butterfly_Stage4_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_34_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_34_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[33]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[33]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_38_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_38_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_34_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_34_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_34_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_34_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage2_42 u_Butterfly_Stage2_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_41_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_41_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[41]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[41]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_42_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_42_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_42_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_42_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_42_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_42_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_44 u_Butterfly_Stage2_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_43_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_43_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[43]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[43]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_44_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_44_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_44_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_44_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_44_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_44_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_42 u_Butterfly_Stage3_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_42_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_42_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[41]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[41]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_44_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_44_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_42_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_42_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_42_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_42_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_46 u_Butterfly_Stage2_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_45_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_45_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[45]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[45]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_46_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_46_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_46_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_46_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_46_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_46_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_48 u_Butterfly_Stage2_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_47_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_47_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[47]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[47]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_48_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_48_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_48_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_48_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_48_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_48_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_46 u_Butterfly_Stage3_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_46_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_46_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[45]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[45]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_48_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_48_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_46_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_46_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_46_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_46_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_42 u_Butterfly_Stage4_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_42_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_42_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[41]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[41]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_46_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_46_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_42_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_42_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_42_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_42_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_34 u_Butterfly_Stage5_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_34_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_34_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[33]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[33]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_42_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_42_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_34_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_34_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_34_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_34_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage2_50 u_Butterfly_Stage2_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_49_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_49_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[49]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[49]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_50_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_50_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_50_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_50_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_50_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_50_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_52 u_Butterfly_Stage2_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_51_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_51_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[51]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[51]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_52_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_52_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_52_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_52_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_52_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_52_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_50 u_Butterfly_Stage3_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_50_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_50_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[49]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[49]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_52_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_52_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_50_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_50_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_50_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_50_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_54 u_Butterfly_Stage2_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_53_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_53_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[53]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[53]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_54_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_54_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_54_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_54_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_54_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_54_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_56 u_Butterfly_Stage2_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_55_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_55_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[55]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[55]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_56_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_56_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_56_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_56_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_56_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_56_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_54 u_Butterfly_Stage3_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_54_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_54_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[53]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[53]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_56_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_56_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_54_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_54_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_54_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_54_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_50 u_Butterfly_Stage4_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_50_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_50_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[49]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[49]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_54_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_54_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_50_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_50_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_50_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_50_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage2_58 u_Butterfly_Stage2_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_57_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_57_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[57]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[57]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_58_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_58_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_58_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_58_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_58_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_58_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_60 u_Butterfly_Stage2_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_59_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_59_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[59]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[59]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_60_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_60_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_60_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_60_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_60_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_60_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_58 u_Butterfly_Stage3_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_58_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_58_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[57]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[57]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_60_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_60_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_58_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_58_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_58_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_58_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage2_62 u_Butterfly_Stage2_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_61_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_61_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[61]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[61]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_62_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_62_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_62_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_62_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_62_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_62_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage2_64 u_Butterfly_Stage2_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage1_63_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage1_63_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion1_out1_re[63]),  // sfix2
                                             .W_im(Data_Type_Conversion1_out1_im[63]),  // sfix2
                                             .B_m_N_2_re(Butterfly_Stage1_64_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage1_64_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage2_64_out1_re),  // sfix10_En2
                                             .X_m_im(Butterfly_Stage2_64_out1_im),  // sfix10_En2
                                             .X_m_N_2_re(Butterfly_Stage2_64_out2_re),  // sfix10_En2
                                             .X_m_N_2_im(Butterfly_Stage2_64_out2_im)  // sfix10_En2
                                             );

  Butterfly_Stage3_62 u_Butterfly_Stage3_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_62_out1_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_62_out1_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[61]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[61]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_64_out1_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_64_out1_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_62_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_62_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_62_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_62_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_58 u_Butterfly_Stage4_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_58_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_58_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[57]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[57]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_62_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_62_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_58_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_58_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_58_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_58_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_50 u_Butterfly_Stage5_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_50_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_50_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[49]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[49]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_58_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_58_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_50_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_50_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_50_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_50_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_34 u_Butterfly_Stage6_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_34_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_34_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[33]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[33]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_50_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_50_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_34_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_34_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_34_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_34_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_2 u_Butterfly_Stage7_2 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_2_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_2_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[1]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[1]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_34_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_34_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_2_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_2_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_2_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_2_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_1 = Butterfly_Stage7_2_out1_re;

  Butterfly_Stage3_3 u_Butterfly_Stage3_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_1_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_1_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[2]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[2]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_3_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_3_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_3_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_3_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_3_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_3_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage3_7 u_Butterfly_Stage3_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_5_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_5_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[6]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[6]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_7_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_7_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_7_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_7_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_7_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_7_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage4_3 u_Butterfly_Stage4_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_3_out1_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_3_out1_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[2]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[2]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_7_out1_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_7_out1_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_3_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_3_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_3_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_3_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage3_11 u_Butterfly_Stage3_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_9_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_9_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[10]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[10]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_11_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_11_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_11_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_11_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_11_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_11_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_15 u_Butterfly_Stage3_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_13_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_13_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[14]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[14]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_15_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_15_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_15_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_15_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_15_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_15_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_11 u_Butterfly_Stage4_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_11_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_11_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[10]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[10]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_15_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_15_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_11_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_11_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_11_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_11_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_3 u_Butterfly_Stage5_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_3_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_3_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[2]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[2]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_11_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_11_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_3_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_3_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_3_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_3_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage3_19 u_Butterfly_Stage3_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_17_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_17_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[18]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[18]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_19_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_19_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_19_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_19_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_19_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_19_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_23 u_Butterfly_Stage3_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_21_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_21_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[22]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[22]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_23_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_23_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_23_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_23_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_23_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_23_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_19 u_Butterfly_Stage4_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_19_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_19_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[18]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[18]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_23_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_23_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_19_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_19_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_19_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_19_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_27 u_Butterfly_Stage3_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_25_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_25_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[26]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[26]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_27_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_27_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_27_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_27_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_27_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_27_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_31 u_Butterfly_Stage3_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_29_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_29_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[30]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[30]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_31_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_31_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_31_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_31_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_31_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_31_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_27 u_Butterfly_Stage4_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_27_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_27_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[26]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[26]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_31_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_31_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_27_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_27_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_27_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_27_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_19 u_Butterfly_Stage5_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_19_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_19_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[18]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[18]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_27_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_27_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_19_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_19_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_19_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_19_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_3 u_Butterfly_Stage6_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_3_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_3_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[2]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[2]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_19_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_19_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_3_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_3_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_3_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_3_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage3_35 u_Butterfly_Stage3_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_33_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_33_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[34]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[34]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_35_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_35_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_35_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_35_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_35_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_35_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_39 u_Butterfly_Stage3_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_37_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_37_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[38]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[38]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_39_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_39_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_39_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_39_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_39_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_39_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_35 u_Butterfly_Stage4_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_35_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_35_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[34]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[34]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_39_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_39_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_35_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_35_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_35_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_35_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_43 u_Butterfly_Stage3_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_41_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_41_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[42]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[42]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_43_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_43_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_43_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_43_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_43_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_43_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_47 u_Butterfly_Stage3_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_45_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_45_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[46]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[46]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_47_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_47_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_47_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_47_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_47_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_47_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_43 u_Butterfly_Stage4_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_43_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_43_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[42]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[42]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_47_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_47_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_43_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_43_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_43_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_43_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_35 u_Butterfly_Stage5_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_35_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_35_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[34]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[34]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_43_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_43_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_35_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_35_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_35_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_35_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage3_51 u_Butterfly_Stage3_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_49_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_49_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[50]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[50]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_51_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_51_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_51_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_51_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_51_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_51_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_55 u_Butterfly_Stage3_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_53_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_53_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[54]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[54]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_55_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_55_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_55_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_55_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_55_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_55_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_51 u_Butterfly_Stage4_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_51_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_51_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[50]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[50]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_55_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_55_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_51_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_51_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_51_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_51_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_59 u_Butterfly_Stage3_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_57_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_57_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[58]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[58]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_59_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_59_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_59_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_59_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_59_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_59_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_63 u_Butterfly_Stage3_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_61_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_61_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[62]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[62]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_63_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_63_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_63_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_63_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_63_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_63_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_59 u_Butterfly_Stage4_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_59_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_59_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[58]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[58]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_63_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_63_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_59_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_59_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_59_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_59_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_51 u_Butterfly_Stage5_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_51_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_51_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[50]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[50]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_59_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_59_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_51_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_51_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_51_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_51_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_35 u_Butterfly_Stage6_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_35_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_35_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[34]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[34]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_51_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_51_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_35_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_35_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_35_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_35_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_3 u_Butterfly_Stage7_3 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_3_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_3_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[2]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[2]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_35_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_35_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_3_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_3_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_3_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_3_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_2 = Butterfly_Stage7_3_out1_re;

  Butterfly_Stage3_4 u_Butterfly_Stage3_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_2_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_2_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[3]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[3]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_4_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_4_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_4_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_4_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_4_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_4_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage3_8 u_Butterfly_Stage3_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage2_6_out2_re),  // sfix10_En2
                                           .A_m_im(Butterfly_Stage2_6_out2_im),  // sfix10_En2
                                           .W_re(Data_Type_Conversion2_out1_re[7]),  // sfix10_En8
                                           .W_im(Data_Type_Conversion2_out1_im[7]),  // sfix10_En8
                                           .B_m_N_2_re(Butterfly_Stage2_8_out2_re),  // sfix10_En2
                                           .B_m_N_2_im(Butterfly_Stage2_8_out2_im),  // sfix10_En2
                                           .X_m_re(Butterfly_Stage3_8_out1_re),  // sfix19_En10
                                           .X_m_im(Butterfly_Stage3_8_out1_im),  // sfix19_En10
                                           .X_m_N_2_re(Butterfly_Stage3_8_out2_re),  // sfix19_En10
                                           .X_m_N_2_im(Butterfly_Stage3_8_out2_im)  // sfix19_En10
                                           );

  Butterfly_Stage4_4 u_Butterfly_Stage4_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_4_out1_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_4_out1_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[3]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[3]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_8_out1_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_8_out1_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_4_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_4_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_4_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_4_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage3_12 u_Butterfly_Stage3_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_10_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_10_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[11]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[11]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_12_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_12_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_12_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_12_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_12_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_12_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_16 u_Butterfly_Stage3_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_14_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_14_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[15]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[15]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_16_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_16_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_16_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_16_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_16_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_16_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_12 u_Butterfly_Stage4_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_12_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_12_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[11]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[11]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_16_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_16_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_12_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_12_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_12_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_12_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_4 u_Butterfly_Stage5_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_4_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_4_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[3]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[3]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_12_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_12_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_4_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_4_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_4_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_4_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage3_20 u_Butterfly_Stage3_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_18_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_18_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[19]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[19]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_20_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_20_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_20_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_20_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_20_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_20_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_24 u_Butterfly_Stage3_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_22_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_22_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[23]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[23]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_24_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_24_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_24_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_24_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_24_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_24_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_20 u_Butterfly_Stage4_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_20_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_20_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[19]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[19]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_24_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_24_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_20_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_20_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_20_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_20_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_28 u_Butterfly_Stage3_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_26_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_26_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[27]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[27]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_28_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_28_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_28_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_28_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_28_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_28_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_32 u_Butterfly_Stage3_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_30_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_30_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[31]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[31]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_32_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_32_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_32_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_32_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_32_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_32_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_28 u_Butterfly_Stage4_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_28_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_28_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[27]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[27]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_32_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_32_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_28_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_28_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_28_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_28_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_20 u_Butterfly_Stage5_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_20_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_20_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[19]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[19]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_28_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_28_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_20_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_20_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_20_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_20_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_4 u_Butterfly_Stage6_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_4_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_4_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[3]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[3]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_20_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_20_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_4_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_4_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_4_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_4_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage3_36 u_Butterfly_Stage3_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_34_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_34_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[35]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[35]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_36_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_36_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_36_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_36_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_36_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_36_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_40 u_Butterfly_Stage3_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_38_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_38_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[39]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[39]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_40_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_40_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_40_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_40_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_40_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_40_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_36 u_Butterfly_Stage4_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_36_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_36_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[35]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[35]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_40_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_40_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_36_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_36_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_36_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_36_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_44 u_Butterfly_Stage3_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_42_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_42_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[43]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[43]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_44_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_44_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_44_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_44_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_44_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_44_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_48 u_Butterfly_Stage3_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_46_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_46_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[47]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[47]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_48_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_48_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_48_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_48_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_48_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_48_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_44 u_Butterfly_Stage4_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_44_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_44_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[43]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[43]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_48_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_48_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_44_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_44_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_44_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_44_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_36 u_Butterfly_Stage5_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_36_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_36_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[35]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[35]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_44_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_44_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_36_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_36_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_36_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_36_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage3_52 u_Butterfly_Stage3_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_50_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_50_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[51]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[51]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_52_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_52_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_52_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_52_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_52_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_52_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_56 u_Butterfly_Stage3_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_54_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_54_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[55]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[55]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_56_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_56_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_56_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_56_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_56_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_56_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_52 u_Butterfly_Stage4_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_52_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_52_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[51]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[51]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_56_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_56_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_52_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_52_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_52_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_52_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage3_60 u_Butterfly_Stage3_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_58_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_58_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[59]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[59]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_60_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_60_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_60_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_60_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_60_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_60_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage3_64 u_Butterfly_Stage3_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage2_62_out2_re),  // sfix10_En2
                                             .A_m_im(Butterfly_Stage2_62_out2_im),  // sfix10_En2
                                             .W_re(Data_Type_Conversion2_out1_re[63]),  // sfix10_En8
                                             .W_im(Data_Type_Conversion2_out1_im[63]),  // sfix10_En8
                                             .B_m_N_2_re(Butterfly_Stage2_64_out2_re),  // sfix10_En2
                                             .B_m_N_2_im(Butterfly_Stage2_64_out2_im),  // sfix10_En2
                                             .X_m_re(Butterfly_Stage3_64_out1_re),  // sfix19_En10
                                             .X_m_im(Butterfly_Stage3_64_out1_im),  // sfix19_En10
                                             .X_m_N_2_re(Butterfly_Stage3_64_out2_re),  // sfix19_En10
                                             .X_m_N_2_im(Butterfly_Stage3_64_out2_im)  // sfix19_En10
                                             );

  Butterfly_Stage4_60 u_Butterfly_Stage4_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_60_out1_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_60_out1_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[59]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[59]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_64_out1_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_64_out1_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_60_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_60_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_60_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_60_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_52 u_Butterfly_Stage5_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_52_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_52_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[51]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[51]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_60_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_60_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_52_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_52_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_52_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_52_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_36 u_Butterfly_Stage6_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_36_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_36_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[35]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[35]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_52_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_52_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_36_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_36_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_36_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_36_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_4 u_Butterfly_Stage7_4 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_4_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_4_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[3]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[3]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_36_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_36_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_4_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_4_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_4_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_4_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_3 = Butterfly_Stage7_4_out1_re;

  Butterfly_Stage4_5 u_Butterfly_Stage4_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_1_out2_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_1_out2_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[4]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[4]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_5_out2_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_5_out2_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_5_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_5_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_5_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_5_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage4_13 u_Butterfly_Stage4_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_9_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_9_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[12]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[12]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_13_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_13_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_13_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_13_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_13_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_13_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_5 u_Butterfly_Stage5_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_5_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_5_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[4]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[4]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_13_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_13_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_5_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_5_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_5_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_5_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage4_21 u_Butterfly_Stage4_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_17_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_17_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[20]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[20]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_21_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_21_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_21_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_21_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_21_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_21_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_29 u_Butterfly_Stage4_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_25_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_25_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[28]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[28]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_29_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_29_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_29_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_29_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_29_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_29_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_21 u_Butterfly_Stage5_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_21_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_21_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[20]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[20]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_29_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_29_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_21_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_21_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_21_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_21_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_5 u_Butterfly_Stage6_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_5_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_5_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[4]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[4]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_21_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_21_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_5_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_5_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_5_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_5_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage4_37 u_Butterfly_Stage4_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_33_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_33_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[36]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[36]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_37_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_37_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_37_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_37_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_37_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_37_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_45 u_Butterfly_Stage4_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_41_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_41_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[44]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[44]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_45_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_45_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_45_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_45_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_45_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_45_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_37 u_Butterfly_Stage5_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_37_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_37_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[36]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[36]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_45_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_45_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_37_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_37_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_37_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_37_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage4_53 u_Butterfly_Stage4_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_49_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_49_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[52]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[52]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_53_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_53_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_53_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_53_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_53_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_53_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_61 u_Butterfly_Stage4_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_57_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_57_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[60]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[60]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_61_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_61_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_61_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_61_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_61_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_61_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_53 u_Butterfly_Stage5_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_53_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_53_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[52]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[52]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_61_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_61_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_53_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_53_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_53_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_53_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_37 u_Butterfly_Stage6_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_37_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_37_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[36]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[36]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_53_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_53_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_37_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_37_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_37_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_37_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_5 u_Butterfly_Stage7_5 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_5_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_5_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[4]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[4]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_37_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_37_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_5_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_5_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_5_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_5_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_4 = Butterfly_Stage7_5_out1_re;

  Butterfly_Stage4_6 u_Butterfly_Stage4_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_2_out2_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_2_out2_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[5]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[5]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_6_out2_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_6_out2_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_6_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_6_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_6_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_6_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage4_14 u_Butterfly_Stage4_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_10_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_10_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[13]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[13]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_14_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_14_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_14_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_14_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_14_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_14_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_6 u_Butterfly_Stage5_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_6_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_6_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[5]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[5]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_14_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_14_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_6_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_6_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_6_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_6_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage4_22 u_Butterfly_Stage4_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_18_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_18_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[21]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[21]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_22_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_22_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_22_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_22_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_22_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_22_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_30 u_Butterfly_Stage4_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_26_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_26_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[29]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[29]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_30_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_30_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_30_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_30_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_30_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_30_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_22 u_Butterfly_Stage5_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_22_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_22_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[21]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[21]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_30_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_30_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_22_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_22_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_22_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_22_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_6 u_Butterfly_Stage6_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_6_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_6_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[5]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[5]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_22_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_22_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_6_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_6_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_6_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_6_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage4_38 u_Butterfly_Stage4_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_34_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_34_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[37]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[37]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_38_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_38_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_38_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_38_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_38_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_38_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_46 u_Butterfly_Stage4_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_42_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_42_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[45]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[45]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_46_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_46_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_46_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_46_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_46_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_46_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_38 u_Butterfly_Stage5_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_38_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_38_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[37]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[37]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_46_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_46_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_38_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_38_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_38_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_38_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage4_54 u_Butterfly_Stage4_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_50_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_50_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[53]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[53]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_54_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_54_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_54_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_54_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_54_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_54_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_62 u_Butterfly_Stage4_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_58_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_58_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[61]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[61]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_62_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_62_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_62_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_62_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_62_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_62_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_54 u_Butterfly_Stage5_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_54_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_54_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[53]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[53]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_62_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_62_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_54_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_54_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_54_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_54_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_38 u_Butterfly_Stage6_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_38_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_38_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[37]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[37]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_54_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_54_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_38_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_38_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_38_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_38_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_6 u_Butterfly_Stage7_6 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_6_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_6_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[5]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[5]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_38_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_38_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_6_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_6_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_6_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_6_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_5 = Butterfly_Stage7_6_out1_re;

  Butterfly_Stage4_7 u_Butterfly_Stage4_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_3_out2_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_3_out2_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[6]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[6]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_7_out2_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_7_out2_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_7_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_7_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_7_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_7_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage4_15 u_Butterfly_Stage4_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_11_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_11_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[14]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[14]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_15_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_15_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_15_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_15_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_15_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_15_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_7 u_Butterfly_Stage5_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_7_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_7_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[6]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[6]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_15_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_15_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_7_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_7_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_7_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_7_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage4_23 u_Butterfly_Stage4_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_19_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_19_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[22]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[22]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_23_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_23_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_23_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_23_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_23_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_23_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_31 u_Butterfly_Stage4_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_27_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_27_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[30]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[30]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_31_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_31_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_31_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_31_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_31_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_31_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_23 u_Butterfly_Stage5_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_23_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_23_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[22]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[22]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_31_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_31_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_23_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_23_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_23_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_23_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_7 u_Butterfly_Stage6_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_7_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_7_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[6]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[6]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_23_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_23_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_7_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_7_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_7_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_7_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage4_39 u_Butterfly_Stage4_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_35_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_35_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[38]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[38]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_39_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_39_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_39_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_39_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_39_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_39_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_47 u_Butterfly_Stage4_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_43_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_43_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[46]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[46]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_47_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_47_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_47_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_47_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_47_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_47_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_39 u_Butterfly_Stage5_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_39_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_39_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[38]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[38]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_47_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_47_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_39_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_39_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_39_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_39_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage4_55 u_Butterfly_Stage4_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_51_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_51_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[54]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[54]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_55_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_55_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_55_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_55_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_55_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_55_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_63 u_Butterfly_Stage4_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_59_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_59_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[62]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[62]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_63_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_63_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_63_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_63_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_63_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_63_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_55 u_Butterfly_Stage5_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_55_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_55_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[54]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[54]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_63_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_63_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_55_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_55_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_55_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_55_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_39 u_Butterfly_Stage6_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_39_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_39_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[38]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[38]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_55_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_55_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_39_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_39_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_39_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_39_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_7 u_Butterfly_Stage7_7 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_7_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_7_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[6]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[6]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_39_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_39_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_7_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_7_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_7_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_7_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_6 = Butterfly_Stage7_7_out1_re;

  Butterfly_Stage4_8 u_Butterfly_Stage4_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage3_4_out2_re),  // sfix19_En10
                                           .A_m_im(Butterfly_Stage3_4_out2_im),  // sfix19_En10
                                           .W_re(Data_Type_Conversion3_out1_re[7]),  // sfix16_En14
                                           .W_im(Data_Type_Conversion3_out1_im[7]),  // sfix16_En14
                                           .B_m_N_2_re(Butterfly_Stage3_8_out2_re),  // sfix19_En10
                                           .B_m_N_2_im(Butterfly_Stage3_8_out2_im),  // sfix19_En10
                                           .X_m_re(Butterfly_Stage4_8_out1_re),  // sfix30_En20
                                           .X_m_im(Butterfly_Stage4_8_out1_im),  // sfix30_En20
                                           .X_m_N_2_re(Butterfly_Stage4_8_out2_re),  // sfix30_En20
                                           .X_m_N_2_im(Butterfly_Stage4_8_out2_im)  // sfix30_En20
                                           );

  Butterfly_Stage4_16 u_Butterfly_Stage4_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_12_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_12_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[15]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[15]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_16_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_16_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_16_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_16_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_16_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_16_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_8 u_Butterfly_Stage5_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_8_out1_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_8_out1_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[7]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[7]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_16_out1_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_16_out1_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_8_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_8_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_8_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_8_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage4_24 u_Butterfly_Stage4_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_20_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_20_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[23]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[23]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_24_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_24_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_24_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_24_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_24_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_24_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_32 u_Butterfly_Stage4_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_28_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_28_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[31]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[31]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_32_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_32_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_32_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_32_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_32_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_32_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_24 u_Butterfly_Stage5_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_24_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_24_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[23]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[23]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_32_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_32_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_24_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_24_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_24_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_24_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_8 u_Butterfly_Stage6_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_8_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_8_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[7]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[7]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_24_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_24_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_8_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_8_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_8_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_8_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage4_40 u_Butterfly_Stage4_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_36_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_36_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[39]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[39]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_40_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_40_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_40_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_40_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_40_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_40_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_48 u_Butterfly_Stage4_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_44_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_44_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[47]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[47]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_48_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_48_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_48_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_48_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_48_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_48_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_40 u_Butterfly_Stage5_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_40_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_40_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[39]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[39]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_48_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_48_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_40_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_40_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_40_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_40_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage4_56 u_Butterfly_Stage4_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_52_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_52_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[55]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[55]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_56_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_56_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_56_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_56_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_56_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_56_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage4_64 u_Butterfly_Stage4_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage3_60_out2_re),  // sfix19_En10
                                             .A_m_im(Butterfly_Stage3_60_out2_im),  // sfix19_En10
                                             .W_re(Data_Type_Conversion3_out1_re[63]),  // sfix16_En14
                                             .W_im(Data_Type_Conversion3_out1_im[63]),  // sfix16_En14
                                             .B_m_N_2_re(Butterfly_Stage3_64_out2_re),  // sfix19_En10
                                             .B_m_N_2_im(Butterfly_Stage3_64_out2_im),  // sfix19_En10
                                             .X_m_re(Butterfly_Stage4_64_out1_re),  // sfix30_En20
                                             .X_m_im(Butterfly_Stage4_64_out1_im),  // sfix30_En20
                                             .X_m_N_2_re(Butterfly_Stage4_64_out2_re),  // sfix30_En20
                                             .X_m_N_2_im(Butterfly_Stage4_64_out2_im)  // sfix30_En20
                                             );

  Butterfly_Stage5_56 u_Butterfly_Stage5_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_56_out1_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_56_out1_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[55]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[55]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_64_out1_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_64_out1_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_56_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_56_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_56_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_56_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_40 u_Butterfly_Stage6_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_40_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_40_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[39]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[39]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_56_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_56_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_40_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_40_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_40_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_40_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_8 u_Butterfly_Stage7_8 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_8_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_8_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[7]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[7]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_40_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_40_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_8_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_8_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_8_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_8_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_7 = Butterfly_Stage7_8_out1_re;

  Butterfly_Stage5_9 u_Butterfly_Stage5_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage4_1_out2_re),  // sfix30_En20
                                           .A_m_im(Butterfly_Stage4_1_out2_im),  // sfix30_En20
                                           .W_re(Data_Type_Conversion4_out1_re[8]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion4_out1_im[8]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage4_9_out2_re),  // sfix30_En20
                                           .B_m_N_2_im(Butterfly_Stage4_9_out2_im),  // sfix30_En20
                                           .X_m_re(Butterfly_Stage5_9_out1_re),  // sfix33_En22
                                           .X_m_im(Butterfly_Stage5_9_out1_im),  // sfix33_En22
                                           .X_m_N_2_re(Butterfly_Stage5_9_out2_re),  // sfix33_En22
                                           .X_m_N_2_im(Butterfly_Stage5_9_out2_im)  // sfix33_En22
                                           );

  Butterfly_Stage5_25 u_Butterfly_Stage5_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_17_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_17_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[24]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[24]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_25_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_25_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_25_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_25_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_25_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_25_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_9 u_Butterfly_Stage6_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage5_9_out1_re),  // sfix33_En22
                                           .A_m_im(Butterfly_Stage5_9_out1_im),  // sfix33_En22
                                           .W_re(Data_Type_Conversion5_out1_re[8]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion5_out1_im[8]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage5_25_out1_re),  // sfix33_En22
                                           .B_m_N_2_im(Butterfly_Stage5_25_out1_im),  // sfix33_En22
                                           .X_m_re(Butterfly_Stage6_9_out1_re),  // sfix30_En19
                                           .X_m_im(Butterfly_Stage6_9_out1_im),  // sfix30_En19
                                           .X_m_N_2_re(Butterfly_Stage6_9_out2_re),  // sfix31_En19
                                           .X_m_N_2_im(Butterfly_Stage6_9_out2_im)  // sfix31_En19
                                           );

  Butterfly_Stage5_41 u_Butterfly_Stage5_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_33_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_33_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[40]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[40]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_41_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_41_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_41_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_41_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_41_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_41_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_57 u_Butterfly_Stage5_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_49_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_49_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[56]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[56]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_57_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_57_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_57_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_57_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_57_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_57_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_41 u_Butterfly_Stage6_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_41_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_41_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[40]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[40]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_57_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_57_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_41_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_41_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_41_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_41_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_9 u_Butterfly_Stage7_9 (.clk(clk),
                                           .reset(reset),

                                           .A_m_re(Butterfly_Stage6_9_out1_re),  // sfix30_En19
                                           .A_m_im(Butterfly_Stage6_9_out1_im),  // sfix30_En19
                                           .W_re(Data_Type_Conversion6_out1_re[8]),  // sfix15_En13
                                           .W_im(Data_Type_Conversion6_out1_im[8]),  // sfix15_En13
                                           .B_m_N_2_re(Butterfly_Stage6_41_out1_re),  // sfix30_En19
                                           .B_m_N_2_im(Butterfly_Stage6_41_out1_im),  // sfix30_En19
                                           .X_m_re(Butterfly_Stage7_9_out1_re),  // sfix29_En17
                                           .X_m_im(Butterfly_Stage7_9_out1_im),  // sfix29_En17
                                           .X_m_N_2_re(Butterfly_Stage7_9_out2_re),  // sfix29_En17
                                           .X_m_N_2_im(Butterfly_Stage7_9_out2_im)  // sfix29_En17
                                           );

  assign Out1_re_8 = Butterfly_Stage7_9_out1_re;

  Butterfly_Stage5_10 u_Butterfly_Stage5_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_2_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_2_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[9]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[9]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_10_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_10_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_10_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_10_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_10_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_10_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_26 u_Butterfly_Stage5_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_18_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_18_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[25]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[25]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_26_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_26_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_26_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_26_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_26_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_26_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_10 u_Butterfly_Stage6_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_10_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_10_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[9]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[9]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_26_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_26_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_10_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_10_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_10_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_10_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_42 u_Butterfly_Stage5_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_34_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_34_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[41]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[41]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_42_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_42_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_42_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_42_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_42_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_42_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_58 u_Butterfly_Stage5_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_50_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_50_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[57]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[57]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_58_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_58_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_58_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_58_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_58_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_58_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_42 u_Butterfly_Stage6_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_42_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_42_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[41]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[41]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_58_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_58_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_42_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_42_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_42_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_42_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_10 u_Butterfly_Stage7_10 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_10_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_10_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[9]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[9]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_42_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_42_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_10_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_10_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_10_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_10_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_9 = Butterfly_Stage7_10_out1_re;

  Butterfly_Stage5_11 u_Butterfly_Stage5_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_3_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_3_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[10]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[10]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_11_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_11_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_11_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_11_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_11_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_11_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_27 u_Butterfly_Stage5_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_19_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_19_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[26]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[26]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_27_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_27_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_27_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_27_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_27_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_27_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_11 u_Butterfly_Stage6_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_11_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_11_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[10]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[10]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_27_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_27_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_11_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_11_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_11_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_11_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_43 u_Butterfly_Stage5_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_35_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_35_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[42]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[42]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_43_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_43_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_43_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_43_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_43_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_43_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_59 u_Butterfly_Stage5_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_51_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_51_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[58]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[58]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_59_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_59_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_59_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_59_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_59_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_59_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_43 u_Butterfly_Stage6_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_43_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_43_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[42]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[42]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_59_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_59_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_43_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_43_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_43_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_43_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_11 u_Butterfly_Stage7_11 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_11_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_11_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[10]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[10]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_43_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_43_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_11_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_11_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_11_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_11_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_10 = Butterfly_Stage7_11_out1_re;

  Butterfly_Stage5_12 u_Butterfly_Stage5_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_4_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_4_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[11]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[11]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_12_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_12_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_12_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_12_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_12_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_12_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_28 u_Butterfly_Stage5_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_20_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_20_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[27]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[27]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_28_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_28_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_28_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_28_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_28_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_28_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_12 u_Butterfly_Stage6_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_12_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_12_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[11]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[11]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_28_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_28_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_12_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_12_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_12_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_12_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_44 u_Butterfly_Stage5_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_36_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_36_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[43]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[43]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_44_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_44_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_44_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_44_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_44_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_44_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_60 u_Butterfly_Stage5_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_52_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_52_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[59]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[59]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_60_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_60_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_60_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_60_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_60_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_60_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_44 u_Butterfly_Stage6_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_44_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_44_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[43]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[43]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_60_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_60_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_44_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_44_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_44_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_44_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_12 u_Butterfly_Stage7_12 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_12_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_12_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[11]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[11]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_44_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_44_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_12_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_12_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_12_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_12_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_11 = Butterfly_Stage7_12_out1_re;

  Butterfly_Stage5_13 u_Butterfly_Stage5_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_5_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_5_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[12]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[12]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_13_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_13_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_13_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_13_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_13_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_13_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_29 u_Butterfly_Stage5_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_21_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_21_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[28]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[28]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_29_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_29_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_29_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_29_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_29_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_29_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_13 u_Butterfly_Stage6_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_13_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_13_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[12]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[12]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_29_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_29_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_13_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_13_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_13_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_13_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_45 u_Butterfly_Stage5_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_37_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_37_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[44]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[44]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_45_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_45_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_45_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_45_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_45_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_45_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_61 u_Butterfly_Stage5_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_53_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_53_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[60]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[60]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_61_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_61_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_61_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_61_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_61_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_61_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_45 u_Butterfly_Stage6_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_45_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_45_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[44]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[44]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_61_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_61_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_45_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_45_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_45_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_45_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_13 u_Butterfly_Stage7_13 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_13_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_13_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[12]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[12]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_45_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_45_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_13_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_13_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_13_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_13_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_12 = Butterfly_Stage7_13_out1_re;

  Butterfly_Stage5_14 u_Butterfly_Stage5_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_6_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_6_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[13]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[13]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_14_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_14_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_14_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_14_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_14_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_14_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_30 u_Butterfly_Stage5_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_22_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_22_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[29]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[29]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_30_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_30_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_30_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_30_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_30_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_30_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_14 u_Butterfly_Stage6_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_14_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_14_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[13]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[13]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_30_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_30_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_14_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_14_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_14_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_14_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_46 u_Butterfly_Stage5_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_38_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_38_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[45]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[45]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_46_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_46_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_46_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_46_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_46_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_46_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_62 u_Butterfly_Stage5_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_54_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_54_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[61]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[61]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_62_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_62_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_62_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_62_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_62_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_62_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_46 u_Butterfly_Stage6_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_46_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_46_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[45]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[45]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_62_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_62_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_46_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_46_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_46_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_46_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_14 u_Butterfly_Stage7_14 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_14_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_14_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[13]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[13]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_46_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_46_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_14_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_14_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_14_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_14_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_13 = Butterfly_Stage7_14_out1_re;

  Butterfly_Stage5_15 u_Butterfly_Stage5_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_7_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_7_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[14]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[14]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_15_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_15_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_15_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_15_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_15_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_15_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_31 u_Butterfly_Stage5_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_23_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_23_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[30]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[30]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_31_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_31_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_31_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_31_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_31_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_31_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_15 u_Butterfly_Stage6_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_15_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_15_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[14]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[14]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_31_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_31_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_15_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_15_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_15_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_15_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_47 u_Butterfly_Stage5_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_39_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_39_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[46]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[46]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_47_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_47_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_47_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_47_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_47_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_47_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_63 u_Butterfly_Stage5_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_55_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_55_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[62]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[62]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_63_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_63_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_63_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_63_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_63_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_63_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_47 u_Butterfly_Stage6_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_47_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_47_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[46]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[46]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_63_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_63_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_47_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_47_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_47_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_47_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_15 u_Butterfly_Stage7_15 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_15_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_15_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[14]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[14]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_47_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_47_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_15_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_15_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_15_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_15_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_14 = Butterfly_Stage7_15_out1_re;

  Butterfly_Stage5_16 u_Butterfly_Stage5_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_8_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_8_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[15]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[15]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_16_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_16_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_16_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_16_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_16_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_16_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_32 u_Butterfly_Stage5_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_24_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_24_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[31]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[31]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_32_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_32_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_32_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_32_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_32_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_32_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_16 u_Butterfly_Stage6_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_16_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_16_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[15]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[15]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_32_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_32_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_16_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_16_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_16_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_16_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage5_48 u_Butterfly_Stage5_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_40_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_40_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[47]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[47]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_48_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_48_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_48_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_48_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_48_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_48_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage5_64 u_Butterfly_Stage5_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage4_56_out2_re),  // sfix30_En20
                                             .A_m_im(Butterfly_Stage4_56_out2_im),  // sfix30_En20
                                             .W_re(Data_Type_Conversion4_out1_re[63]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion4_out1_im[63]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage4_64_out2_re),  // sfix30_En20
                                             .B_m_N_2_im(Butterfly_Stage4_64_out2_im),  // sfix30_En20
                                             .X_m_re(Butterfly_Stage5_64_out1_re),  // sfix33_En22
                                             .X_m_im(Butterfly_Stage5_64_out1_im),  // sfix33_En22
                                             .X_m_N_2_re(Butterfly_Stage5_64_out2_re),  // sfix33_En22
                                             .X_m_N_2_im(Butterfly_Stage5_64_out2_im)  // sfix33_En22
                                             );

  Butterfly_Stage6_48 u_Butterfly_Stage6_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_48_out1_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_48_out1_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[47]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[47]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_64_out1_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_64_out1_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_48_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_48_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_48_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_48_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_16 u_Butterfly_Stage7_16 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_16_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_16_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[15]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[15]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_48_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_48_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_16_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_16_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_16_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_16_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_15 = Butterfly_Stage7_16_out1_re;

  Butterfly_Stage6_17 u_Butterfly_Stage6_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_1_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_1_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[16]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[16]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_17_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_17_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_17_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_17_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_17_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_17_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_49 u_Butterfly_Stage6_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_33_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_33_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[48]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[48]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_49_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_49_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_49_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_49_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_49_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_49_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_17 u_Butterfly_Stage7_17 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_17_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_17_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[16]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[16]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_49_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_49_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_17_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_17_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_17_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_17_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_16 = Butterfly_Stage7_17_out1_re;

  Butterfly_Stage6_18 u_Butterfly_Stage6_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_2_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_2_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[17]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[17]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_18_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_18_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_18_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_18_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_18_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_18_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_50 u_Butterfly_Stage6_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_34_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_34_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[49]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[49]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_50_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_50_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_50_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_50_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_50_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_50_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_18 u_Butterfly_Stage7_18 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_18_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_18_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[17]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[17]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_50_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_50_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_18_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_18_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_18_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_18_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_17 = Butterfly_Stage7_18_out1_re;

  Butterfly_Stage6_19 u_Butterfly_Stage6_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_3_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_3_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[18]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[18]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_19_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_19_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_19_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_19_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_19_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_19_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_51 u_Butterfly_Stage6_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_35_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_35_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[50]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[50]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_51_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_51_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_51_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_51_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_51_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_51_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_19 u_Butterfly_Stage7_19 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_19_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_19_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[18]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[18]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_51_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_51_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_19_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_19_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_19_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_19_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_18 = Butterfly_Stage7_19_out1_re;

  Butterfly_Stage6_20 u_Butterfly_Stage6_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_4_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_4_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[19]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[19]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_20_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_20_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_20_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_20_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_20_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_20_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_52 u_Butterfly_Stage6_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_36_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_36_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[51]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[51]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_52_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_52_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_52_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_52_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_52_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_52_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_20 u_Butterfly_Stage7_20 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_20_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_20_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[19]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[19]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_52_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_52_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_20_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_20_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_20_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_20_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_19 = Butterfly_Stage7_20_out1_re;

  Butterfly_Stage6_21 u_Butterfly_Stage6_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_5_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_5_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[20]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[20]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_21_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_21_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_21_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_21_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_21_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_21_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_53 u_Butterfly_Stage6_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_37_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_37_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[52]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[52]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_53_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_53_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_53_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_53_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_53_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_53_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_21 u_Butterfly_Stage7_21 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_21_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_21_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[20]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[20]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_53_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_53_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_21_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_21_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_21_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_21_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_20 = Butterfly_Stage7_21_out1_re;

  Butterfly_Stage6_22 u_Butterfly_Stage6_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_6_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_6_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[21]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[21]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_22_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_22_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_22_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_22_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_22_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_22_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_54 u_Butterfly_Stage6_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_38_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_38_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[53]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[53]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_54_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_54_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_54_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_54_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_54_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_54_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_22 u_Butterfly_Stage7_22 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_22_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_22_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[21]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[21]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_54_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_54_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_22_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_22_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_22_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_22_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_21 = Butterfly_Stage7_22_out1_re;

  Butterfly_Stage6_23 u_Butterfly_Stage6_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_7_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_7_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[22]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[22]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_23_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_23_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_23_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_23_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_23_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_23_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_55 u_Butterfly_Stage6_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_39_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_39_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[54]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[54]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_55_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_55_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_55_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_55_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_55_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_55_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_23 u_Butterfly_Stage7_23 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_23_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_23_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[22]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[22]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_55_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_55_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_23_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_23_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_23_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_23_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_22 = Butterfly_Stage7_23_out1_re;

  Butterfly_Stage6_24 u_Butterfly_Stage6_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_8_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_8_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[23]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[23]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_24_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_24_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_24_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_24_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_24_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_24_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_56 u_Butterfly_Stage6_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_40_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_40_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[55]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[55]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_56_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_56_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_56_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_56_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_56_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_56_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_24 u_Butterfly_Stage7_24 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_24_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_24_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[23]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[23]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_56_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_56_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_24_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_24_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_24_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_24_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_23 = Butterfly_Stage7_24_out1_re;

  Butterfly_Stage6_25 u_Butterfly_Stage6_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_9_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_9_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[24]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[24]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_25_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_25_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_25_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_25_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_25_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_25_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_57 u_Butterfly_Stage6_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_41_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_41_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[56]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[56]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_57_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_57_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_57_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_57_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_57_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_57_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_25 u_Butterfly_Stage7_25 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_25_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_25_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[24]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[24]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_57_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_57_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_25_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_25_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_25_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_25_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_24 = Butterfly_Stage7_25_out1_re;

  Butterfly_Stage6_26 u_Butterfly_Stage6_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_10_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_10_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[25]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[25]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_26_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_26_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_26_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_26_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_26_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_26_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_58 u_Butterfly_Stage6_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_42_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_42_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[57]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[57]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_58_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_58_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_58_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_58_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_58_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_58_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_26 u_Butterfly_Stage7_26 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_26_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_26_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[25]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[25]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_58_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_58_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_26_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_26_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_26_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_26_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_25 = Butterfly_Stage7_26_out1_re;

  Butterfly_Stage6_27 u_Butterfly_Stage6_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_11_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_11_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[26]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[26]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_27_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_27_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_27_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_27_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_27_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_27_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_59 u_Butterfly_Stage6_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_43_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_43_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[58]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[58]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_59_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_59_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_59_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_59_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_59_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_59_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_27 u_Butterfly_Stage7_27 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_27_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_27_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[26]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[26]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_59_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_59_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_27_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_27_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_27_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_27_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_26 = Butterfly_Stage7_27_out1_re;

  Butterfly_Stage6_28 u_Butterfly_Stage6_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_12_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_12_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[27]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[27]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_28_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_28_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_28_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_28_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_28_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_28_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_60 u_Butterfly_Stage6_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_44_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_44_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[59]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[59]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_60_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_60_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_60_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_60_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_60_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_60_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_28 u_Butterfly_Stage7_28 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_28_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_28_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[27]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[27]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_60_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_60_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_28_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_28_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_28_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_28_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_27 = Butterfly_Stage7_28_out1_re;

  Butterfly_Stage6_29 u_Butterfly_Stage6_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_13_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_13_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[28]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[28]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_29_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_29_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_29_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_29_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_29_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_29_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_61 u_Butterfly_Stage6_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_45_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_45_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[60]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[60]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_61_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_61_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_61_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_61_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_61_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_61_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_29 u_Butterfly_Stage7_29 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_29_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_29_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[28]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[28]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_61_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_61_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_29_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_29_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_29_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_29_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_28 = Butterfly_Stage7_29_out1_re;

  Butterfly_Stage6_30 u_Butterfly_Stage6_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_14_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_14_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[29]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[29]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_30_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_30_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_30_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_30_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_30_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_30_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_62 u_Butterfly_Stage6_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_46_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_46_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[61]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[61]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_62_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_62_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_62_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_62_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_62_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_62_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_30 u_Butterfly_Stage7_30 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_30_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_30_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[29]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[29]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_62_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_62_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_30_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_30_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_30_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_30_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_29 = Butterfly_Stage7_30_out1_re;

  Butterfly_Stage6_31 u_Butterfly_Stage6_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_15_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_15_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[30]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[30]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_31_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_31_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_31_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_31_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_31_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_31_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_63 u_Butterfly_Stage6_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_47_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_47_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[62]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[62]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_63_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_63_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_63_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_63_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_63_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_63_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_31 u_Butterfly_Stage7_31 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_31_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_31_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[30]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[30]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_63_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_63_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_31_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_31_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_31_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_31_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_30 = Butterfly_Stage7_31_out1_re;

  Butterfly_Stage6_32 u_Butterfly_Stage6_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_16_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_16_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[31]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[31]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_32_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_32_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_32_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_32_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_32_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_32_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage6_64 u_Butterfly_Stage6_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage5_48_out2_re),  // sfix33_En22
                                             .A_m_im(Butterfly_Stage5_48_out2_im),  // sfix33_En22
                                             .W_re(Data_Type_Conversion5_out1_re[63]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion5_out1_im[63]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage5_64_out2_re),  // sfix33_En22
                                             .B_m_N_2_im(Butterfly_Stage5_64_out2_im),  // sfix33_En22
                                             .X_m_re(Butterfly_Stage6_64_out1_re),  // sfix30_En19
                                             .X_m_im(Butterfly_Stage6_64_out1_im),  // sfix30_En19
                                             .X_m_N_2_re(Butterfly_Stage6_64_out2_re),  // sfix31_En19
                                             .X_m_N_2_im(Butterfly_Stage6_64_out2_im)  // sfix31_En19
                                             );

  Butterfly_Stage7_32 u_Butterfly_Stage7_32 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_32_out1_re),  // sfix30_En19
                                             .A_m_im(Butterfly_Stage6_32_out1_im),  // sfix30_En19
                                             .W_re(Data_Type_Conversion6_out1_re[31]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[31]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_64_out1_re),  // sfix30_En19
                                             .B_m_N_2_im(Butterfly_Stage6_64_out1_im),  // sfix30_En19
                                             .X_m_re(Butterfly_Stage7_32_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_32_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_32_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_32_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_31 = Butterfly_Stage7_32_out1_re;

  Butterfly_Stage7_33 u_Butterfly_Stage7_33 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_1_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_1_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[32]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[32]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_33_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_33_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_33_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_33_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_33_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_33_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_32 = Butterfly_Stage7_33_out1_re;

  Butterfly_Stage7_34 u_Butterfly_Stage7_34 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_2_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_2_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[33]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[33]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_34_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_34_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_34_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_34_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_34_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_34_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_33 = Butterfly_Stage7_34_out1_re;

  Butterfly_Stage7_35 u_Butterfly_Stage7_35 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_3_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_3_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[34]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[34]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_35_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_35_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_35_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_35_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_35_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_35_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_34 = Butterfly_Stage7_35_out1_re;

  Butterfly_Stage7_36 u_Butterfly_Stage7_36 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_4_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_4_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[35]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[35]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_36_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_36_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_36_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_36_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_36_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_36_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_35 = Butterfly_Stage7_36_out1_re;

  Butterfly_Stage7_37 u_Butterfly_Stage7_37 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_5_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_5_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[36]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[36]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_37_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_37_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_37_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_37_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_37_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_37_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_36 = Butterfly_Stage7_37_out1_re;

  Butterfly_Stage7_38 u_Butterfly_Stage7_38 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_6_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_6_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[37]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[37]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_38_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_38_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_38_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_38_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_38_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_38_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_37 = Butterfly_Stage7_38_out1_re;

  Butterfly_Stage7_39 u_Butterfly_Stage7_39 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_7_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_7_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[38]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[38]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_39_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_39_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_39_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_39_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_39_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_39_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_38 = Butterfly_Stage7_39_out1_re;

  Butterfly_Stage7_40 u_Butterfly_Stage7_40 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_8_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_8_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[39]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[39]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_40_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_40_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_40_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_40_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_40_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_40_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_39 = Butterfly_Stage7_40_out1_re;

  Butterfly_Stage7_41 u_Butterfly_Stage7_41 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_9_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_9_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[40]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[40]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_41_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_41_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_41_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_41_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_41_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_41_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_40 = Butterfly_Stage7_41_out1_re;

  Butterfly_Stage7_42 u_Butterfly_Stage7_42 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_10_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_10_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[41]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[41]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_42_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_42_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_42_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_42_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_42_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_42_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_41 = Butterfly_Stage7_42_out1_re;

  Butterfly_Stage7_43 u_Butterfly_Stage7_43 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_11_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_11_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[42]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[42]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_43_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_43_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_43_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_43_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_43_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_43_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_42 = Butterfly_Stage7_43_out1_re;

  Butterfly_Stage7_44 u_Butterfly_Stage7_44 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_12_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_12_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[43]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[43]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_44_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_44_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_44_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_44_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_44_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_44_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_43 = Butterfly_Stage7_44_out1_re;

  Butterfly_Stage7_45 u_Butterfly_Stage7_45 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_13_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_13_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[44]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[44]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_45_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_45_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_45_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_45_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_45_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_45_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_44 = Butterfly_Stage7_45_out1_re;

  Butterfly_Stage7_46 u_Butterfly_Stage7_46 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_14_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_14_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[45]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[45]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_46_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_46_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_46_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_46_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_46_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_46_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_45 = Butterfly_Stage7_46_out1_re;

  Butterfly_Stage7_47 u_Butterfly_Stage7_47 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_15_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_15_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[46]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[46]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_47_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_47_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_47_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_47_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_47_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_47_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_46 = Butterfly_Stage7_47_out1_re;

  Butterfly_Stage7_48 u_Butterfly_Stage7_48 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_16_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_16_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[47]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[47]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_48_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_48_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_48_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_48_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_48_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_48_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_47 = Butterfly_Stage7_48_out1_re;

  Butterfly_Stage7_49 u_Butterfly_Stage7_49 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_17_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_17_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[48]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[48]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_49_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_49_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_49_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_49_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_49_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_49_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_48 = Butterfly_Stage7_49_out1_re;

  Butterfly_Stage7_50 u_Butterfly_Stage7_50 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_18_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_18_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[49]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[49]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_50_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_50_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_50_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_50_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_50_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_50_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_49 = Butterfly_Stage7_50_out1_re;

  Butterfly_Stage7_51 u_Butterfly_Stage7_51 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_19_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_19_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[50]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[50]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_51_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_51_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_51_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_51_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_51_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_51_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_50 = Butterfly_Stage7_51_out1_re;

  Butterfly_Stage7_52 u_Butterfly_Stage7_52 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_20_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_20_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[51]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[51]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_52_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_52_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_52_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_52_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_52_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_52_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_51 = Butterfly_Stage7_52_out1_re;

  Butterfly_Stage7_53 u_Butterfly_Stage7_53 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_21_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_21_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[52]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[52]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_53_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_53_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_53_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_53_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_53_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_53_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_52 = Butterfly_Stage7_53_out1_re;

  Butterfly_Stage7_54 u_Butterfly_Stage7_54 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_22_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_22_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[53]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[53]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_54_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_54_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_54_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_54_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_54_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_54_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_53 = Butterfly_Stage7_54_out1_re;

  Butterfly_Stage7_55 u_Butterfly_Stage7_55 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_23_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_23_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[54]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[54]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_55_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_55_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_55_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_55_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_55_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_55_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_54 = Butterfly_Stage7_55_out1_re;

  Butterfly_Stage7_56 u_Butterfly_Stage7_56 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_24_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_24_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[55]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[55]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_56_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_56_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_56_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_56_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_56_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_56_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_55 = Butterfly_Stage7_56_out1_re;

  Butterfly_Stage7_57 u_Butterfly_Stage7_57 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_25_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_25_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[56]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[56]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_57_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_57_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_57_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_57_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_57_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_57_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_56 = Butterfly_Stage7_57_out1_re;

  Butterfly_Stage7_58 u_Butterfly_Stage7_58 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_26_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_26_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[57]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[57]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_58_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_58_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_58_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_58_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_58_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_58_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_57 = Butterfly_Stage7_58_out1_re;

  Butterfly_Stage7_59 u_Butterfly_Stage7_59 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_27_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_27_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[58]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[58]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_59_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_59_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_59_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_59_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_59_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_59_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_58 = Butterfly_Stage7_59_out1_re;

  Butterfly_Stage7_60 u_Butterfly_Stage7_60 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_28_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_28_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[59]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[59]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_60_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_60_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_60_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_60_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_60_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_60_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_59 = Butterfly_Stage7_60_out1_re;

  Butterfly_Stage7_61 u_Butterfly_Stage7_61 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_29_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_29_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[60]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[60]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_61_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_61_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_61_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_61_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_61_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_61_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_60 = Butterfly_Stage7_61_out1_re;

  Butterfly_Stage7_62 u_Butterfly_Stage7_62 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_30_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_30_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[61]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[61]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_62_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_62_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_62_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_62_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_62_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_62_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_61 = Butterfly_Stage7_62_out1_re;

  Butterfly_Stage7_63 u_Butterfly_Stage7_63 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_31_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_31_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[62]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[62]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_63_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_63_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_63_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_63_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_63_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_63_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_62 = Butterfly_Stage7_63_out1_re;

  Butterfly_Stage7_64 u_Butterfly_Stage7_64 (.clk(clk),
                                             .reset(reset),
  
                                             .A_m_re(Butterfly_Stage6_32_out2_re),  // sfix31_En19
                                             .A_m_im(Butterfly_Stage6_32_out2_im),  // sfix31_En19
                                             .W_re(Data_Type_Conversion6_out1_re[63]),  // sfix15_En13
                                             .W_im(Data_Type_Conversion6_out1_im[63]),  // sfix15_En13
                                             .B_m_N_2_re(Butterfly_Stage6_64_out2_re),  // sfix31_En19
                                             .B_m_N_2_im(Butterfly_Stage6_64_out2_im),  // sfix31_En19
                                             .X_m_re(Butterfly_Stage7_64_out1_re),  // sfix29_En17
                                             .X_m_im(Butterfly_Stage7_64_out1_im),  // sfix29_En17
                                             .X_m_N_2_re(Butterfly_Stage7_64_out2_re),  // sfix29_En17
                                             .X_m_N_2_im(Butterfly_Stage7_64_out2_im)  // sfix29_En17
                                             );

  assign Out1_re_63 = Butterfly_Stage7_64_out1_re;

  assign Out1_re_64 = Butterfly_Stage7_1_out2_re;

  assign Out1_re_65 = Butterfly_Stage7_2_out2_re;

  assign Out1_re_66 = Butterfly_Stage7_3_out2_re;

  assign Out1_re_67 = Butterfly_Stage7_4_out2_re;

  assign Out1_re_68 = Butterfly_Stage7_5_out2_re;

  assign Out1_re_69 = Butterfly_Stage7_6_out2_re;

  assign Out1_re_70 = Butterfly_Stage7_7_out2_re;

  assign Out1_re_71 = Butterfly_Stage7_8_out2_re;

  assign Out1_re_72 = Butterfly_Stage7_9_out2_re;

  assign Out1_re_73 = Butterfly_Stage7_10_out2_re;

  assign Out1_re_74 = Butterfly_Stage7_11_out2_re;

  assign Out1_re_75 = Butterfly_Stage7_12_out2_re;

  assign Out1_re_76 = Butterfly_Stage7_13_out2_re;

  assign Out1_re_77 = Butterfly_Stage7_14_out2_re;

  assign Out1_re_78 = Butterfly_Stage7_15_out2_re;

  assign Out1_re_79 = Butterfly_Stage7_16_out2_re;

  assign Out1_re_80 = Butterfly_Stage7_17_out2_re;

  assign Out1_re_81 = Butterfly_Stage7_18_out2_re;

  assign Out1_re_82 = Butterfly_Stage7_19_out2_re;

  assign Out1_re_83 = Butterfly_Stage7_20_out2_re;

  assign Out1_re_84 = Butterfly_Stage7_21_out2_re;

  assign Out1_re_85 = Butterfly_Stage7_22_out2_re;

  assign Out1_re_86 = Butterfly_Stage7_23_out2_re;

  assign Out1_re_87 = Butterfly_Stage7_24_out2_re;

  assign Out1_re_88 = Butterfly_Stage7_25_out2_re;

  assign Out1_re_89 = Butterfly_Stage7_26_out2_re;

  assign Out1_re_90 = Butterfly_Stage7_27_out2_re;

  assign Out1_re_91 = Butterfly_Stage7_28_out2_re;

  assign Out1_re_92 = Butterfly_Stage7_29_out2_re;

  assign Out1_re_93 = Butterfly_Stage7_30_out2_re;

  assign Out1_re_94 = Butterfly_Stage7_31_out2_re;

  assign Out1_re_95 = Butterfly_Stage7_32_out2_re;

  assign Out1_re_96 = Butterfly_Stage7_33_out2_re;

  assign Out1_re_97 = Butterfly_Stage7_34_out2_re;

  assign Out1_re_98 = Butterfly_Stage7_35_out2_re;

  assign Out1_re_99 = Butterfly_Stage7_36_out2_re;

  assign Out1_re_100 = Butterfly_Stage7_37_out2_re;

  assign Out1_re_101 = Butterfly_Stage7_38_out2_re;

  assign Out1_re_102 = Butterfly_Stage7_39_out2_re;

  assign Out1_re_103 = Butterfly_Stage7_40_out2_re;

  assign Out1_re_104 = Butterfly_Stage7_41_out2_re;

  assign Out1_re_105 = Butterfly_Stage7_42_out2_re;

  assign Out1_re_106 = Butterfly_Stage7_43_out2_re;

  assign Out1_re_107 = Butterfly_Stage7_44_out2_re;

  assign Out1_re_108 = Butterfly_Stage7_45_out2_re;

  assign Out1_re_109 = Butterfly_Stage7_46_out2_re;

  assign Out1_re_110 = Butterfly_Stage7_47_out2_re;

  assign Out1_re_111 = Butterfly_Stage7_48_out2_re;

  assign Out1_re_112 = Butterfly_Stage7_49_out2_re;

  assign Out1_re_113 = Butterfly_Stage7_50_out2_re;

  assign Out1_re_114 = Butterfly_Stage7_51_out2_re;

  assign Out1_re_115 = Butterfly_Stage7_52_out2_re;

  assign Out1_re_116 = Butterfly_Stage7_53_out2_re;

  assign Out1_re_117 = Butterfly_Stage7_54_out2_re;

  assign Out1_re_118 = Butterfly_Stage7_55_out2_re;

  assign Out1_re_119 = Butterfly_Stage7_56_out2_re;

  assign Out1_re_120 = Butterfly_Stage7_57_out2_re;

  assign Out1_re_121 = Butterfly_Stage7_58_out2_re;

  assign Out1_re_122 = Butterfly_Stage7_59_out2_re;

  assign Out1_re_123 = Butterfly_Stage7_60_out2_re;

  assign Out1_re_124 = Butterfly_Stage7_61_out2_re;

  assign Out1_re_125 = Butterfly_Stage7_62_out2_re;

  assign Out1_re_126 = Butterfly_Stage7_63_out2_re;

  assign Out1_re_127 = Butterfly_Stage7_64_out2_re;

  assign Out1_im_0 = Butterfly_Stage7_1_out1_im;

  assign Out1_im_1 = Butterfly_Stage7_2_out1_im;

  assign Out1_im_2 = Butterfly_Stage7_3_out1_im;

  assign Out1_im_3 = Butterfly_Stage7_4_out1_im;

  assign Out1_im_4 = Butterfly_Stage7_5_out1_im;

  assign Out1_im_5 = Butterfly_Stage7_6_out1_im;

  assign Out1_im_6 = Butterfly_Stage7_7_out1_im;

  assign Out1_im_7 = Butterfly_Stage7_8_out1_im;

  assign Out1_im_8 = Butterfly_Stage7_9_out1_im;

  assign Out1_im_9 = Butterfly_Stage7_10_out1_im;

  assign Out1_im_10 = Butterfly_Stage7_11_out1_im;

  assign Out1_im_11 = Butterfly_Stage7_12_out1_im;

  assign Out1_im_12 = Butterfly_Stage7_13_out1_im;

  assign Out1_im_13 = Butterfly_Stage7_14_out1_im;

  assign Out1_im_14 = Butterfly_Stage7_15_out1_im;

  assign Out1_im_15 = Butterfly_Stage7_16_out1_im;

  assign Out1_im_16 = Butterfly_Stage7_17_out1_im;

  assign Out1_im_17 = Butterfly_Stage7_18_out1_im;

  assign Out1_im_18 = Butterfly_Stage7_19_out1_im;

  assign Out1_im_19 = Butterfly_Stage7_20_out1_im;

  assign Out1_im_20 = Butterfly_Stage7_21_out1_im;

  assign Out1_im_21 = Butterfly_Stage7_22_out1_im;

  assign Out1_im_22 = Butterfly_Stage7_23_out1_im;

  assign Out1_im_23 = Butterfly_Stage7_24_out1_im;

  assign Out1_im_24 = Butterfly_Stage7_25_out1_im;

  assign Out1_im_25 = Butterfly_Stage7_26_out1_im;

  assign Out1_im_26 = Butterfly_Stage7_27_out1_im;

  assign Out1_im_27 = Butterfly_Stage7_28_out1_im;

  assign Out1_im_28 = Butterfly_Stage7_29_out1_im;

  assign Out1_im_29 = Butterfly_Stage7_30_out1_im;

  assign Out1_im_30 = Butterfly_Stage7_31_out1_im;

  assign Out1_im_31 = Butterfly_Stage7_32_out1_im;

  assign Out1_im_32 = Butterfly_Stage7_33_out1_im;

  assign Out1_im_33 = Butterfly_Stage7_34_out1_im;

  assign Out1_im_34 = Butterfly_Stage7_35_out1_im;

  assign Out1_im_35 = Butterfly_Stage7_36_out1_im;

  assign Out1_im_36 = Butterfly_Stage7_37_out1_im;

  assign Out1_im_37 = Butterfly_Stage7_38_out1_im;

  assign Out1_im_38 = Butterfly_Stage7_39_out1_im;

  assign Out1_im_39 = Butterfly_Stage7_40_out1_im;

  assign Out1_im_40 = Butterfly_Stage7_41_out1_im;

  assign Out1_im_41 = Butterfly_Stage7_42_out1_im;

  assign Out1_im_42 = Butterfly_Stage7_43_out1_im;

  assign Out1_im_43 = Butterfly_Stage7_44_out1_im;

  assign Out1_im_44 = Butterfly_Stage7_45_out1_im;

  assign Out1_im_45 = Butterfly_Stage7_46_out1_im;

  assign Out1_im_46 = Butterfly_Stage7_47_out1_im;

  assign Out1_im_47 = Butterfly_Stage7_48_out1_im;

  assign Out1_im_48 = Butterfly_Stage7_49_out1_im;

  assign Out1_im_49 = Butterfly_Stage7_50_out1_im;

  assign Out1_im_50 = Butterfly_Stage7_51_out1_im;

  assign Out1_im_51 = Butterfly_Stage7_52_out1_im;

  assign Out1_im_52 = Butterfly_Stage7_53_out1_im;

  assign Out1_im_53 = Butterfly_Stage7_54_out1_im;

  assign Out1_im_54 = Butterfly_Stage7_55_out1_im;

  assign Out1_im_55 = Butterfly_Stage7_56_out1_im;

  assign Out1_im_56 = Butterfly_Stage7_57_out1_im;

  assign Out1_im_57 = Butterfly_Stage7_58_out1_im;

  assign Out1_im_58 = Butterfly_Stage7_59_out1_im;

  assign Out1_im_59 = Butterfly_Stage7_60_out1_im;

  assign Out1_im_60 = Butterfly_Stage7_61_out1_im;

  assign Out1_im_61 = Butterfly_Stage7_62_out1_im;

  assign Out1_im_62 = Butterfly_Stage7_63_out1_im;

  assign Out1_im_63 = Butterfly_Stage7_64_out1_im;

  assign Out1_im_64 = Butterfly_Stage7_1_out2_im;

  assign Out1_im_65 = Butterfly_Stage7_2_out2_im;

  assign Out1_im_66 = Butterfly_Stage7_3_out2_im;

  assign Out1_im_67 = Butterfly_Stage7_4_out2_im;

  assign Out1_im_68 = Butterfly_Stage7_5_out2_im;

  assign Out1_im_69 = Butterfly_Stage7_6_out2_im;

  assign Out1_im_70 = Butterfly_Stage7_7_out2_im;

  assign Out1_im_71 = Butterfly_Stage7_8_out2_im;

  assign Out1_im_72 = Butterfly_Stage7_9_out2_im;

  assign Out1_im_73 = Butterfly_Stage7_10_out2_im;

  assign Out1_im_74 = Butterfly_Stage7_11_out2_im;

  assign Out1_im_75 = Butterfly_Stage7_12_out2_im;

  assign Out1_im_76 = Butterfly_Stage7_13_out2_im;

  assign Out1_im_77 = Butterfly_Stage7_14_out2_im;

  assign Out1_im_78 = Butterfly_Stage7_15_out2_im;

  assign Out1_im_79 = Butterfly_Stage7_16_out2_im;

  assign Out1_im_80 = Butterfly_Stage7_17_out2_im;

  assign Out1_im_81 = Butterfly_Stage7_18_out2_im;

  assign Out1_im_82 = Butterfly_Stage7_19_out2_im;

  assign Out1_im_83 = Butterfly_Stage7_20_out2_im;

  assign Out1_im_84 = Butterfly_Stage7_21_out2_im;

  assign Out1_im_85 = Butterfly_Stage7_22_out2_im;

  assign Out1_im_86 = Butterfly_Stage7_23_out2_im;

  assign Out1_im_87 = Butterfly_Stage7_24_out2_im;

  assign Out1_im_88 = Butterfly_Stage7_25_out2_im;

  assign Out1_im_89 = Butterfly_Stage7_26_out2_im;

  assign Out1_im_90 = Butterfly_Stage7_27_out2_im;

  assign Out1_im_91 = Butterfly_Stage7_28_out2_im;

  assign Out1_im_92 = Butterfly_Stage7_29_out2_im;

  assign Out1_im_93 = Butterfly_Stage7_30_out2_im;

  assign Out1_im_94 = Butterfly_Stage7_31_out2_im;

  assign Out1_im_95 = Butterfly_Stage7_32_out2_im;

  assign Out1_im_96 = Butterfly_Stage7_33_out2_im;

  assign Out1_im_97 = Butterfly_Stage7_34_out2_im;

  assign Out1_im_98 = Butterfly_Stage7_35_out2_im;

  assign Out1_im_99 = Butterfly_Stage7_36_out2_im;

  assign Out1_im_100 = Butterfly_Stage7_37_out2_im;

  assign Out1_im_101 = Butterfly_Stage7_38_out2_im;

  assign Out1_im_102 = Butterfly_Stage7_39_out2_im;

  assign Out1_im_103 = Butterfly_Stage7_40_out2_im;

  assign Out1_im_104 = Butterfly_Stage7_41_out2_im;

  assign Out1_im_105 = Butterfly_Stage7_42_out2_im;

  assign Out1_im_106 = Butterfly_Stage7_43_out2_im;

  assign Out1_im_107 = Butterfly_Stage7_44_out2_im;

  assign Out1_im_108 = Butterfly_Stage7_45_out2_im;

  assign Out1_im_109 = Butterfly_Stage7_46_out2_im;

  assign Out1_im_110 = Butterfly_Stage7_47_out2_im;

  assign Out1_im_111 = Butterfly_Stage7_48_out2_im;

  assign Out1_im_112 = Butterfly_Stage7_49_out2_im;

  assign Out1_im_113 = Butterfly_Stage7_50_out2_im;

  assign Out1_im_114 = Butterfly_Stage7_51_out2_im;

  assign Out1_im_115 = Butterfly_Stage7_52_out2_im;

  assign Out1_im_116 = Butterfly_Stage7_53_out2_im;

  assign Out1_im_117 = Butterfly_Stage7_54_out2_im;

  assign Out1_im_118 = Butterfly_Stage7_55_out2_im;

  assign Out1_im_119 = Butterfly_Stage7_56_out2_im;

  assign Out1_im_120 = Butterfly_Stage7_57_out2_im;

  assign Out1_im_121 = Butterfly_Stage7_58_out2_im;

  assign Out1_im_122 = Butterfly_Stage7_59_out2_im;

  assign Out1_im_123 = Butterfly_Stage7_60_out2_im;

  assign Out1_im_124 = Butterfly_Stage7_61_out2_im;

  assign Out1_im_125 = Butterfly_Stage7_62_out2_im;

  assign Out1_im_126 = Butterfly_Stage7_63_out2_im;

  assign Out1_im_127 = Butterfly_Stage7_64_out2_im;



endmodule  // FFTblock_FP_libblocks

