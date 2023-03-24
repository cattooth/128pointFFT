// Project Name:		"N-point FFT"
// Author:				"N. V. Kvashina"
//
// File Description:	"Testbench for FFTblock_FP_libblocks.v"
//

`timescale 1 ns / 1 ns

module FFTblock_FP_libblocks_TB ();

	// Reading data from .txt files
	initial $readmemb("../Source/inpData128Samples.txt", inp_data);
	initial $readmemb("../Source/outData128Samples_re.txt", out_data_re);
	initial $readmemb("../Source/outData128Samples_im.txt", out_data_im);

	// Input matricies
	reg signed [7 : 0] inp_data [1 : 128];
	reg signed [28 : 0] out_data_re [1 : 128];
	reg signed [28 : 0] out_data_im [1 : 128];

	// Inputs
	reg clk = 0;
	reg rst = 1;
	reg ready = 0;
	reg [1:128] errors_re = 0;
	reg [1:128] errors_im = 0;

	reg signed [7 : 0] in_re_0 = 0;
	reg signed [7 : 0] in_re_1 = 0;
	reg signed [7 : 0] in_re_2 = 0;
	reg signed [7 : 0] in_re_3 = 0;
	reg signed [7 : 0] in_re_4 = 0;
	reg signed [7 : 0] in_re_5 = 0;
	reg signed [7 : 0] in_re_6 = 0;
	reg signed [7 : 0] in_re_7 = 0;
	reg signed [7 : 0] in_re_8 = 0;
	reg signed [7 : 0] in_re_9 = 0;
	reg signed [7 : 0] in_re_10 = 0;
	reg signed [7 : 0] in_re_11 = 0;
	reg signed [7 : 0] in_re_12 = 0;
	reg signed [7 : 0] in_re_13 = 0;
	reg signed [7 : 0] in_re_14 = 0;
	reg signed [7 : 0] in_re_15 = 0;
	reg signed [7 : 0] in_re_16 = 0;
	reg signed [7 : 0] in_re_17 = 0;
	reg signed [7 : 0] in_re_18 = 0;
	reg signed [7 : 0] in_re_19 = 0;
	reg signed [7 : 0] in_re_20 = 0;
	reg signed [7 : 0] in_re_21 = 0;
	reg signed [7 : 0] in_re_22 = 0;
	reg signed [7 : 0] in_re_23 = 0;
	reg signed [7 : 0] in_re_24 = 0;
	reg signed [7 : 0] in_re_25 = 0;
	reg signed [7 : 0] in_re_26 = 0;
	reg signed [7 : 0] in_re_27 = 0;
	reg signed [7 : 0] in_re_28 = 0;
	reg signed [7 : 0] in_re_29 = 0;
	reg signed [7 : 0] in_re_30 = 0;
	reg signed [7 : 0] in_re_31 = 0;
	reg signed [7 : 0] in_re_32 = 0;
	reg signed [7 : 0] in_re_33 = 0;
	reg signed [7 : 0] in_re_34 = 0;
	reg signed [7 : 0] in_re_35 = 0;
	reg signed [7 : 0] in_re_36 = 0;
	reg signed [7 : 0] in_re_37 = 0;
	reg signed [7 : 0] in_re_38 = 0;
	reg signed [7 : 0] in_re_39 = 0;
	reg signed [7 : 0] in_re_40 = 0;
	reg signed [7 : 0] in_re_41 = 0;
	reg signed [7 : 0] in_re_42 = 0;
	reg signed [7 : 0] in_re_43 = 0;
	reg signed [7 : 0] in_re_44 = 0;
	reg signed [7 : 0] in_re_45 = 0;
	reg signed [7 : 0] in_re_46 = 0;
	reg signed [7 : 0] in_re_47 = 0;
	reg signed [7 : 0] in_re_48 = 0;
	reg signed [7 : 0] in_re_49 = 0;
	reg signed [7 : 0] in_re_50 = 0;
	reg signed [7 : 0] in_re_51 = 0;
	reg signed [7 : 0] in_re_52 = 0;
	reg signed [7 : 0] in_re_53 = 0;
	reg signed [7 : 0] in_re_54 = 0;
	reg signed [7 : 0] in_re_55 = 0;
	reg signed [7 : 0] in_re_56 = 0;
	reg signed [7 : 0] in_re_57 = 0;
	reg signed [7 : 0] in_re_58 = 0;
	reg signed [7 : 0] in_re_59 = 0;
	reg signed [7 : 0] in_re_60 = 0;
	reg signed [7 : 0] in_re_61 = 0;
	reg signed [7 : 0] in_re_62 = 0;
	reg signed [7 : 0] in_re_63 = 0;
	reg signed [7 : 0] in_re_64 = 0;
	reg signed [7 : 0] in_re_65 = 0;
	reg signed [7 : 0] in_re_66 = 0;
	reg signed [7 : 0] in_re_67 = 0;
	reg signed [7 : 0] in_re_68 = 0;
	reg signed [7 : 0] in_re_69 = 0;
	reg signed [7 : 0] in_re_70 = 0;
	reg signed [7 : 0] in_re_71 = 0;
	reg signed [7 : 0] in_re_72 = 0;
	reg signed [7 : 0] in_re_73 = 0;
	reg signed [7 : 0] in_re_74 = 0;
	reg signed [7 : 0] in_re_75 = 0;
	reg signed [7 : 0] in_re_76 = 0;
	reg signed [7 : 0] in_re_77 = 0;
	reg signed [7 : 0] in_re_78 = 0;
	reg signed [7 : 0] in_re_79 = 0;
	reg signed [7 : 0] in_re_80 = 0;
	reg signed [7 : 0] in_re_81 = 0;
	reg signed [7 : 0] in_re_82 = 0;
	reg signed [7 : 0] in_re_83 = 0;
	reg signed [7 : 0] in_re_84 = 0;
	reg signed [7 : 0] in_re_85 = 0;
	reg signed [7 : 0] in_re_86 = 0;
	reg signed [7 : 0] in_re_87 = 0;
	reg signed [7 : 0] in_re_88 = 0;
	reg signed [7 : 0] in_re_89 = 0;
	reg signed [7 : 0] in_re_90 = 0;
	reg signed [7 : 0] in_re_91 = 0;
	reg signed [7 : 0] in_re_92 = 0;
	reg signed [7 : 0] in_re_93 = 0;
	reg signed [7 : 0] in_re_94 = 0;
	reg signed [7 : 0] in_re_95 = 0;
	reg signed [7 : 0] in_re_96 = 0;
	reg signed [7 : 0] in_re_97 = 0;
	reg signed [7 : 0] in_re_98 = 0;
	reg signed [7 : 0] in_re_99 = 0;
	reg signed [7 : 0] in_re_100 = 0;
	reg signed [7 : 0] in_re_101 = 0;
	reg signed [7 : 0] in_re_102 = 0;
	reg signed [7 : 0] in_re_103 = 0;
	reg signed [7 : 0] in_re_104 = 0;
	reg signed [7 : 0] in_re_105 = 0;
	reg signed [7 : 0] in_re_106 = 0;
	reg signed [7 : 0] in_re_107 = 0;
	reg signed [7 : 0] in_re_108 = 0;
	reg signed [7 : 0] in_re_109 = 0;
	reg signed [7 : 0] in_re_110 = 0;
	reg signed [7 : 0] in_re_111 = 0;
	reg signed [7 : 0] in_re_112 = 0;
	reg signed [7 : 0] in_re_113 = 0;
	reg signed [7 : 0] in_re_114 = 0;
	reg signed [7 : 0] in_re_115 = 0;
	reg signed [7 : 0] in_re_116 = 0;
	reg signed [7 : 0] in_re_117 = 0;
	reg signed [7 : 0] in_re_118 = 0;
	reg signed [7 : 0] in_re_119 = 0;
	reg signed [7 : 0] in_re_120 = 0;
	reg signed [7 : 0] in_re_121 = 0;
	reg signed [7 : 0] in_re_122 = 0;
	reg signed [7 : 0] in_re_123 = 0;
	reg signed [7 : 0] in_re_124 = 0;
	reg signed [7 : 0] in_re_125 = 0;
	reg signed [7 : 0] in_re_126 = 0;
	reg signed [7 : 0] in_re_127 = 0;


	reg signed [7 : 0] in_im_0 = 0;
	reg signed [7 : 0] in_im_1 = 0;
	reg signed [7 : 0] in_im_2 = 0;
	reg signed [7 : 0] in_im_3 = 0;
	reg signed [7 : 0] in_im_4 = 0;
	reg signed [7 : 0] in_im_5 = 0;
	reg signed [7 : 0] in_im_6 = 0;
	reg signed [7 : 0] in_im_7 = 0;
	reg signed [7 : 0] in_im_8 = 0;
	reg signed [7 : 0] in_im_9 = 0;
	reg signed [7 : 0] in_im_10 = 0;
	reg signed [7 : 0] in_im_11 = 0;
	reg signed [7 : 0] in_im_12 = 0;
	reg signed [7 : 0] in_im_13 = 0;
	reg signed [7 : 0] in_im_14 = 0;
	reg signed [7 : 0] in_im_15 = 0;
	reg signed [7 : 0] in_im_16 = 0;
	reg signed [7 : 0] in_im_17 = 0;
	reg signed [7 : 0] in_im_18 = 0;
	reg signed [7 : 0] in_im_19 = 0;
	reg signed [7 : 0] in_im_20 = 0;
	reg signed [7 : 0] in_im_21 = 0;
	reg signed [7 : 0] in_im_22 = 0;
	reg signed [7 : 0] in_im_23 = 0;
	reg signed [7 : 0] in_im_24 = 0;
	reg signed [7 : 0] in_im_25 = 0;
	reg signed [7 : 0] in_im_26 = 0;
	reg signed [7 : 0] in_im_27 = 0;
	reg signed [7 : 0] in_im_28 = 0;
	reg signed [7 : 0] in_im_29 = 0;
	reg signed [7 : 0] in_im_30 = 0;
	reg signed [7 : 0] in_im_31 = 0;
	reg signed [7 : 0] in_im_32 = 0;
	reg signed [7 : 0] in_im_33 = 0;
	reg signed [7 : 0] in_im_34 = 0;
	reg signed [7 : 0] in_im_35 = 0;
	reg signed [7 : 0] in_im_36 = 0;
	reg signed [7 : 0] in_im_37 = 0;
	reg signed [7 : 0] in_im_38 = 0;
	reg signed [7 : 0] in_im_39 = 0;
	reg signed [7 : 0] in_im_40 = 0;
	reg signed [7 : 0] in_im_41 = 0;
	reg signed [7 : 0] in_im_42 = 0;
	reg signed [7 : 0] in_im_43 = 0;
	reg signed [7 : 0] in_im_44 = 0;
	reg signed [7 : 0] in_im_45 = 0;
	reg signed [7 : 0] in_im_46 = 0;
	reg signed [7 : 0] in_im_47 = 0;
	reg signed [7 : 0] in_im_48 = 0;
	reg signed [7 : 0] in_im_49 = 0;
	reg signed [7 : 0] in_im_50 = 0;
	reg signed [7 : 0] in_im_51 = 0;
	reg signed [7 : 0] in_im_52 = 0;
	reg signed [7 : 0] in_im_53 = 0;
	reg signed [7 : 0] in_im_54 = 0;
	reg signed [7 : 0] in_im_55 = 0;
	reg signed [7 : 0] in_im_56 = 0;
	reg signed [7 : 0] in_im_57 = 0;
	reg signed [7 : 0] in_im_58 = 0;
	reg signed [7 : 0] in_im_59 = 0;
	reg signed [7 : 0] in_im_60 = 0;
	reg signed [7 : 0] in_im_61 = 0;
	reg signed [7 : 0] in_im_62 = 0;
	reg signed [7 : 0] in_im_63 = 0;
	reg signed [7 : 0] in_im_64 = 0;
	reg signed [7 : 0] in_im_65 = 0;
	reg signed [7 : 0] in_im_66 = 0;
	reg signed [7 : 0] in_im_67 = 0;
	reg signed [7 : 0] in_im_68 = 0;
	reg signed [7 : 0] in_im_69 = 0;
	reg signed [7 : 0] in_im_70 = 0;
	reg signed [7 : 0] in_im_71 = 0;
	reg signed [7 : 0] in_im_72 = 0;
	reg signed [7 : 0] in_im_73 = 0;
	reg signed [7 : 0] in_im_74 = 0;
	reg signed [7 : 0] in_im_75 = 0;
	reg signed [7 : 0] in_im_76 = 0;
	reg signed [7 : 0] in_im_77 = 0;
	reg signed [7 : 0] in_im_78 = 0;
	reg signed [7 : 0] in_im_79 = 0;
	reg signed [7 : 0] in_im_80 = 0;
	reg signed [7 : 0] in_im_81 = 0;
	reg signed [7 : 0] in_im_82 = 0;
	reg signed [7 : 0] in_im_83 = 0;
	reg signed [7 : 0] in_im_84 = 0;
	reg signed [7 : 0] in_im_85 = 0;
	reg signed [7 : 0] in_im_86 = 0;
	reg signed [7 : 0] in_im_87 = 0;
	reg signed [7 : 0] in_im_88 = 0;
	reg signed [7 : 0] in_im_89 = 0;
	reg signed [7 : 0] in_im_90 = 0;
	reg signed [7 : 0] in_im_91 = 0;
	reg signed [7 : 0] in_im_92 = 0;
	reg signed [7 : 0] in_im_93 = 0;
	reg signed [7 : 0] in_im_94 = 0;
	reg signed [7 : 0] in_im_95 = 0;
	reg signed [7 : 0] in_im_96 = 0;
	reg signed [7 : 0] in_im_97 = 0;
	reg signed [7 : 0] in_im_98 = 0;
	reg signed [7 : 0] in_im_99 = 0;
	reg signed [7 : 0] in_im_100 = 0;
	reg signed [7 : 0] in_im_101 = 0;
	reg signed [7 : 0] in_im_102 = 0;
	reg signed [7 : 0] in_im_103 = 0;
	reg signed [7 : 0] in_im_104 = 0;
	reg signed [7 : 0] in_im_105 = 0;
	reg signed [7 : 0] in_im_106 = 0;
	reg signed [7 : 0] in_im_107 = 0;
	reg signed [7 : 0] in_im_108 = 0;
	reg signed [7 : 0] in_im_109 = 0;
	reg signed [7 : 0] in_im_110 = 0;
	reg signed [7 : 0] in_im_111 = 0;
	reg signed [7 : 0] in_im_112 = 0;
	reg signed [7 : 0] in_im_113 = 0;
	reg signed [7 : 0] in_im_114 = 0;
	reg signed [7 : 0] in_im_115 = 0;
	reg signed [7 : 0] in_im_116 = 0;
	reg signed [7 : 0] in_im_117 = 0;
	reg signed [7 : 0] in_im_118 = 0;
	reg signed [7 : 0] in_im_119 = 0;
	reg signed [7 : 0] in_im_120 = 0;
	reg signed [7 : 0] in_im_121 = 0;
	reg signed [7 : 0] in_im_122 = 0;
	reg signed [7 : 0] in_im_123 = 0;
	reg signed [7 : 0] in_im_124 = 0;
	reg signed [7 : 0] in_im_125 = 0;
	reg signed [7 : 0] in_im_126 = 0;
	reg signed [7 : 0] in_im_127 = 0;


	// Outputs
	wire signed [28 : 0] out_re_0;
	wire signed [28 : 0] out_re_1;
	wire signed [28 : 0] out_re_2;
	wire signed [28 : 0] out_re_3;
	wire signed [28 : 0] out_re_4;
	wire signed [28 : 0] out_re_5;
	wire signed [28 : 0] out_re_6;
	wire signed [28 : 0] out_re_7;
	wire signed [28 : 0] out_re_8;
	wire signed [28 : 0] out_re_9;
	wire signed [28 : 0] out_re_10;
	wire signed [28 : 0] out_re_11;
	wire signed [28 : 0] out_re_12;
	wire signed [28 : 0] out_re_13;
	wire signed [28 : 0] out_re_14;
	wire signed [28 : 0] out_re_15;
	wire signed [28 : 0] out_re_16;
	wire signed [28 : 0] out_re_17;
	wire signed [28 : 0] out_re_18;
	wire signed [28 : 0] out_re_19;
	wire signed [28 : 0] out_re_20;
	wire signed [28 : 0] out_re_21;
	wire signed [28 : 0] out_re_22;
	wire signed [28 : 0] out_re_23;
	wire signed [28 : 0] out_re_24;
	wire signed [28 : 0] out_re_25;
	wire signed [28 : 0] out_re_26;
	wire signed [28 : 0] out_re_27;
	wire signed [28 : 0] out_re_28;
	wire signed [28 : 0] out_re_29;
	wire signed [28 : 0] out_re_30;
	wire signed [28 : 0] out_re_31;
	wire signed [28 : 0] out_re_32;
	wire signed [28 : 0] out_re_33;
	wire signed [28 : 0] out_re_34;
	wire signed [28 : 0] out_re_35;
	wire signed [28 : 0] out_re_36;
	wire signed [28 : 0] out_re_37;
	wire signed [28 : 0] out_re_38;
	wire signed [28 : 0] out_re_39;
	wire signed [28 : 0] out_re_40;
	wire signed [28 : 0] out_re_41;
	wire signed [28 : 0] out_re_42;
	wire signed [28 : 0] out_re_43;
	wire signed [28 : 0] out_re_44;
	wire signed [28 : 0] out_re_45;
	wire signed [28 : 0] out_re_46;
	wire signed [28 : 0] out_re_47;
	wire signed [28 : 0] out_re_48;
	wire signed [28 : 0] out_re_49;
	wire signed [28 : 0] out_re_50;
	wire signed [28 : 0] out_re_51;
	wire signed [28 : 0] out_re_52;
	wire signed [28 : 0] out_re_53;
	wire signed [28 : 0] out_re_54;
	wire signed [28 : 0] out_re_55;
	wire signed [28 : 0] out_re_56;
	wire signed [28 : 0] out_re_57;
	wire signed [28 : 0] out_re_58;
	wire signed [28 : 0] out_re_59;
	wire signed [28 : 0] out_re_60;
	wire signed [28 : 0] out_re_61;
	wire signed [28 : 0] out_re_62;
	wire signed [28 : 0] out_re_63;
	wire signed [28 : 0] out_re_64;
	wire signed [28 : 0] out_re_65;
	wire signed [28 : 0] out_re_66;
	wire signed [28 : 0] out_re_67;
	wire signed [28 : 0] out_re_68;
	wire signed [28 : 0] out_re_69;
	wire signed [28 : 0] out_re_70;
	wire signed [28 : 0] out_re_71;
	wire signed [28 : 0] out_re_72;
	wire signed [28 : 0] out_re_73;
	wire signed [28 : 0] out_re_74;
	wire signed [28 : 0] out_re_75;
	wire signed [28 : 0] out_re_76;
	wire signed [28 : 0] out_re_77;
	wire signed [28 : 0] out_re_78;
	wire signed [28 : 0] out_re_79;
	wire signed [28 : 0] out_re_80;
	wire signed [28 : 0] out_re_81;
	wire signed [28 : 0] out_re_82;
	wire signed [28 : 0] out_re_83;
	wire signed [28 : 0] out_re_84;
	wire signed [28 : 0] out_re_85;
	wire signed [28 : 0] out_re_86;
	wire signed [28 : 0] out_re_87;
	wire signed [28 : 0] out_re_88;
	wire signed [28 : 0] out_re_89;
	wire signed [28 : 0] out_re_90;
	wire signed [28 : 0] out_re_91;
	wire signed [28 : 0] out_re_92;
	wire signed [28 : 0] out_re_93;
	wire signed [28 : 0] out_re_94;
	wire signed [28 : 0] out_re_95;
	wire signed [28 : 0] out_re_96;
	wire signed [28 : 0] out_re_97;
	wire signed [28 : 0] out_re_98;
	wire signed [28 : 0] out_re_99;
	wire signed [28 : 0] out_re_100;
	wire signed [28 : 0] out_re_101;
	wire signed [28 : 0] out_re_102;
	wire signed [28 : 0] out_re_103;
	wire signed [28 : 0] out_re_104;
	wire signed [28 : 0] out_re_105;
	wire signed [28 : 0] out_re_106;
	wire signed [28 : 0] out_re_107;
	wire signed [28 : 0] out_re_108;
	wire signed [28 : 0] out_re_109;
	wire signed [28 : 0] out_re_110;
	wire signed [28 : 0] out_re_111;
	wire signed [28 : 0] out_re_112;
	wire signed [28 : 0] out_re_113;
	wire signed [28 : 0] out_re_114;
	wire signed [28 : 0] out_re_115;
	wire signed [28 : 0] out_re_116;
	wire signed [28 : 0] out_re_117;
	wire signed [28 : 0] out_re_118;
	wire signed [28 : 0] out_re_119;
	wire signed [28 : 0] out_re_120;
	wire signed [28 : 0] out_re_121;
	wire signed [28 : 0] out_re_122;
	wire signed [28 : 0] out_re_123;
	wire signed [28 : 0] out_re_124;
	wire signed [28 : 0] out_re_125;
	wire signed [28 : 0] out_re_126;
	wire signed [28 : 0] out_re_127;


	wire signed [28 : 0] out_im_0;
	wire signed [28 : 0] out_im_1;
	wire signed [28 : 0] out_im_2;
	wire signed [28 : 0] out_im_3;
	wire signed [28 : 0] out_im_4;
	wire signed [28 : 0] out_im_5;
	wire signed [28 : 0] out_im_6;
	wire signed [28 : 0] out_im_7;
	wire signed [28 : 0] out_im_8;
	wire signed [28 : 0] out_im_9;
	wire signed [28 : 0] out_im_10;
	wire signed [28 : 0] out_im_11;
	wire signed [28 : 0] out_im_12;
	wire signed [28 : 0] out_im_13;
	wire signed [28 : 0] out_im_14;
	wire signed [28 : 0] out_im_15;
	wire signed [28 : 0] out_im_16;
	wire signed [28 : 0] out_im_17;
	wire signed [28 : 0] out_im_18;
	wire signed [28 : 0] out_im_19;
	wire signed [28 : 0] out_im_20;
	wire signed [28 : 0] out_im_21;
	wire signed [28 : 0] out_im_22;
	wire signed [28 : 0] out_im_23;
	wire signed [28 : 0] out_im_24;
	wire signed [28 : 0] out_im_25;
	wire signed [28 : 0] out_im_26;
	wire signed [28 : 0] out_im_27;
	wire signed [28 : 0] out_im_28;
	wire signed [28 : 0] out_im_29;
	wire signed [28 : 0] out_im_30;
	wire signed [28 : 0] out_im_31;
	wire signed [28 : 0] out_im_32;
	wire signed [28 : 0] out_im_33;
	wire signed [28 : 0] out_im_34;
	wire signed [28 : 0] out_im_35;
	wire signed [28 : 0] out_im_36;
	wire signed [28 : 0] out_im_37;
	wire signed [28 : 0] out_im_38;
	wire signed [28 : 0] out_im_39;
	wire signed [28 : 0] out_im_40;
	wire signed [28 : 0] out_im_41;
	wire signed [28 : 0] out_im_42;
	wire signed [28 : 0] out_im_43;
	wire signed [28 : 0] out_im_44;
	wire signed [28 : 0] out_im_45;
	wire signed [28 : 0] out_im_46;
	wire signed [28 : 0] out_im_47;
	wire signed [28 : 0] out_im_48;
	wire signed [28 : 0] out_im_49;
	wire signed [28 : 0] out_im_50;
	wire signed [28 : 0] out_im_51;
	wire signed [28 : 0] out_im_52;
	wire signed [28 : 0] out_im_53;
	wire signed [28 : 0] out_im_54;
	wire signed [28 : 0] out_im_55;
	wire signed [28 : 0] out_im_56;
	wire signed [28 : 0] out_im_57;
	wire signed [28 : 0] out_im_58;
	wire signed [28 : 0] out_im_59;
	wire signed [28 : 0] out_im_60;
	wire signed [28 : 0] out_im_61;
	wire signed [28 : 0] out_im_62;
	wire signed [28 : 0] out_im_63;
	wire signed [28 : 0] out_im_64;
	wire signed [28 : 0] out_im_65;
	wire signed [28 : 0] out_im_66;
	wire signed [28 : 0] out_im_67;
	wire signed [28 : 0] out_im_68;
	wire signed [28 : 0] out_im_69;
	wire signed [28 : 0] out_im_70;
	wire signed [28 : 0] out_im_71;
	wire signed [28 : 0] out_im_72;
	wire signed [28 : 0] out_im_73;
	wire signed [28 : 0] out_im_74;
	wire signed [28 : 0] out_im_75;
	wire signed [28 : 0] out_im_76;
	wire signed [28 : 0] out_im_77;
	wire signed [28 : 0] out_im_78;
	wire signed [28 : 0] out_im_79;
	wire signed [28 : 0] out_im_80;
	wire signed [28 : 0] out_im_81;
	wire signed [28 : 0] out_im_82;
	wire signed [28 : 0] out_im_83;
	wire signed [28 : 0] out_im_84;
	wire signed [28 : 0] out_im_85;
	wire signed [28 : 0] out_im_86;
	wire signed [28 : 0] out_im_87;
	wire signed [28 : 0] out_im_88;
	wire signed [28 : 0] out_im_89;
	wire signed [28 : 0] out_im_90;
	wire signed [28 : 0] out_im_91;
	wire signed [28 : 0] out_im_92;
	wire signed [28 : 0] out_im_93;
	wire signed [28 : 0] out_im_94;
	wire signed [28 : 0] out_im_95;
	wire signed [28 : 0] out_im_96;
	wire signed [28 : 0] out_im_97;
	wire signed [28 : 0] out_im_98;
	wire signed [28 : 0] out_im_99;
	wire signed [28 : 0] out_im_100;
	wire signed [28 : 0] out_im_101;
	wire signed [28 : 0] out_im_102;
	wire signed [28 : 0] out_im_103;
	wire signed [28 : 0] out_im_104;
	wire signed [28 : 0] out_im_105;
	wire signed [28 : 0] out_im_106;
	wire signed [28 : 0] out_im_107;
	wire signed [28 : 0] out_im_108;
	wire signed [28 : 0] out_im_109;
	wire signed [28 : 0] out_im_110;
	wire signed [28 : 0] out_im_111;
	wire signed [28 : 0] out_im_112;
	wire signed [28 : 0] out_im_113;
	wire signed [28 : 0] out_im_114;
	wire signed [28 : 0] out_im_115;
	wire signed [28 : 0] out_im_116;
	wire signed [28 : 0] out_im_117;
	wire signed [28 : 0] out_im_118;
	wire signed [28 : 0] out_im_119;
	wire signed [28 : 0] out_im_120;
	wire signed [28 : 0] out_im_121;
	wire signed [28 : 0] out_im_122;
	wire signed [28 : 0] out_im_123;
	wire signed [28 : 0] out_im_124;
	wire signed [28 : 0] out_im_125;
	wire signed [28 : 0] out_im_126;
	wire signed [28 : 0] out_im_127;


	// Main UUT
	FFTblock_FP_libblocks instFFTblock (
	.clk(clk),
	.reset(rst),
	.In1_re_0(in_re_0),
	.In1_re_1(in_re_1),
	.In1_re_2(in_re_2),
	.In1_re_3(in_re_3),
	.In1_re_4(in_re_4),
	.In1_re_5(in_re_5),
	.In1_re_6(in_re_6),
	.In1_re_7(in_re_7),
	.In1_re_8(in_re_8),
	.In1_re_9(in_re_9),
	.In1_re_10(in_re_10),
	.In1_re_11(in_re_11),
	.In1_re_12(in_re_12),
	.In1_re_13(in_re_13),
	.In1_re_14(in_re_14),
	.In1_re_15(in_re_15),
	.In1_re_16(in_re_16),
	.In1_re_17(in_re_17),
	.In1_re_18(in_re_18),
	.In1_re_19(in_re_19),
	.In1_re_20(in_re_20),
	.In1_re_21(in_re_21),
	.In1_re_22(in_re_22),
	.In1_re_23(in_re_23),
	.In1_re_24(in_re_24),
	.In1_re_25(in_re_25),
	.In1_re_26(in_re_26),
	.In1_re_27(in_re_27),
	.In1_re_28(in_re_28),
	.In1_re_29(in_re_29),
	.In1_re_30(in_re_30),
	.In1_re_31(in_re_31),
	.In1_re_32(in_re_32),
	.In1_re_33(in_re_33),
	.In1_re_34(in_re_34),
	.In1_re_35(in_re_35),
	.In1_re_36(in_re_36),
	.In1_re_37(in_re_37),
	.In1_re_38(in_re_38),
	.In1_re_39(in_re_39),
	.In1_re_40(in_re_40),
	.In1_re_41(in_re_41),
	.In1_re_42(in_re_42),
	.In1_re_43(in_re_43),
	.In1_re_44(in_re_44),
	.In1_re_45(in_re_45),
	.In1_re_46(in_re_46),
	.In1_re_47(in_re_47),
	.In1_re_48(in_re_48),
	.In1_re_49(in_re_49),
	.In1_re_50(in_re_50),
	.In1_re_51(in_re_51),
	.In1_re_52(in_re_52),
	.In1_re_53(in_re_53),
	.In1_re_54(in_re_54),
	.In1_re_55(in_re_55),
	.In1_re_56(in_re_56),
	.In1_re_57(in_re_57),
	.In1_re_58(in_re_58),
	.In1_re_59(in_re_59),
	.In1_re_60(in_re_60),
	.In1_re_61(in_re_61),
	.In1_re_62(in_re_62),
	.In1_re_63(in_re_63),
	.In1_re_64(in_re_64),
	.In1_re_65(in_re_65),
	.In1_re_66(in_re_66),
	.In1_re_67(in_re_67),
	.In1_re_68(in_re_68),
	.In1_re_69(in_re_69),
	.In1_re_70(in_re_70),
	.In1_re_71(in_re_71),
	.In1_re_72(in_re_72),
	.In1_re_73(in_re_73),
	.In1_re_74(in_re_74),
	.In1_re_75(in_re_75),
	.In1_re_76(in_re_76),
	.In1_re_77(in_re_77),
	.In1_re_78(in_re_78),
	.In1_re_79(in_re_79),
	.In1_re_80(in_re_80),
	.In1_re_81(in_re_81),
	.In1_re_82(in_re_82),
	.In1_re_83(in_re_83),
	.In1_re_84(in_re_84),
	.In1_re_85(in_re_85),
	.In1_re_86(in_re_86),
	.In1_re_87(in_re_87),
	.In1_re_88(in_re_88),
	.In1_re_89(in_re_89),
	.In1_re_90(in_re_90),
	.In1_re_91(in_re_91),
	.In1_re_92(in_re_92),
	.In1_re_93(in_re_93),
	.In1_re_94(in_re_94),
	.In1_re_95(in_re_95),
	.In1_re_96(in_re_96),
	.In1_re_97(in_re_97),
	.In1_re_98(in_re_98),
	.In1_re_99(in_re_99),
	.In1_re_100(in_re_100),
	.In1_re_101(in_re_101),
	.In1_re_102(in_re_102),
	.In1_re_103(in_re_103),
	.In1_re_104(in_re_104),
	.In1_re_105(in_re_105),
	.In1_re_106(in_re_106),
	.In1_re_107(in_re_107),
	.In1_re_108(in_re_108),
	.In1_re_109(in_re_109),
	.In1_re_110(in_re_110),
	.In1_re_111(in_re_111),
	.In1_re_112(in_re_112),
	.In1_re_113(in_re_113),
	.In1_re_114(in_re_114),
	.In1_re_115(in_re_115),
	.In1_re_116(in_re_116),
	.In1_re_117(in_re_117),
	.In1_re_118(in_re_118),
	.In1_re_119(in_re_119),
	.In1_re_120(in_re_120),
	.In1_re_121(in_re_121),
	.In1_re_122(in_re_122),
	.In1_re_123(in_re_123),
	.In1_re_124(in_re_124),
	.In1_re_125(in_re_125),
	.In1_re_126(in_re_126),
	.In1_re_127(in_re_127),
	.In1_im_0(in_im_0),
	.In1_im_1(in_im_1),
	.In1_im_2(in_im_2),
	.In1_im_3(in_im_3),
	.In1_im_4(in_im_4),
	.In1_im_5(in_im_5),
	.In1_im_6(in_im_6),
	.In1_im_7(in_im_7),
	.In1_im_8(in_im_8),
	.In1_im_9(in_im_9),
	.In1_im_10(in_im_10),
	.In1_im_11(in_im_11),
	.In1_im_12(in_im_12),
	.In1_im_13(in_im_13),
	.In1_im_14(in_im_14),
	.In1_im_15(in_im_15),
	.In1_im_16(in_im_16),
	.In1_im_17(in_im_17),
	.In1_im_18(in_im_18),
	.In1_im_19(in_im_19),
	.In1_im_20(in_im_20),
	.In1_im_21(in_im_21),
	.In1_im_22(in_im_22),
	.In1_im_23(in_im_23),
	.In1_im_24(in_im_24),
	.In1_im_25(in_im_25),
	.In1_im_26(in_im_26),
	.In1_im_27(in_im_27),
	.In1_im_28(in_im_28),
	.In1_im_29(in_im_29),
	.In1_im_30(in_im_30),
	.In1_im_31(in_im_31),
	.In1_im_32(in_im_32),
	.In1_im_33(in_im_33),
	.In1_im_34(in_im_34),
	.In1_im_35(in_im_35),
	.In1_im_36(in_im_36),
	.In1_im_37(in_im_37),
	.In1_im_38(in_im_38),
	.In1_im_39(in_im_39),
	.In1_im_40(in_im_40),
	.In1_im_41(in_im_41),
	.In1_im_42(in_im_42),
	.In1_im_43(in_im_43),
	.In1_im_44(in_im_44),
	.In1_im_45(in_im_45),
	.In1_im_46(in_im_46),
	.In1_im_47(in_im_47),
	.In1_im_48(in_im_48),
	.In1_im_49(in_im_49),
	.In1_im_50(in_im_50),
	.In1_im_51(in_im_51),
	.In1_im_52(in_im_52),
	.In1_im_53(in_im_53),
	.In1_im_54(in_im_54),
	.In1_im_55(in_im_55),
	.In1_im_56(in_im_56),
	.In1_im_57(in_im_57),
	.In1_im_58(in_im_58),
	.In1_im_59(in_im_59),
	.In1_im_60(in_im_60),
	.In1_im_61(in_im_61),
	.In1_im_62(in_im_62),
	.In1_im_63(in_im_63),
	.In1_im_64(in_im_64),
	.In1_im_65(in_im_65),
	.In1_im_66(in_im_66),
	.In1_im_67(in_im_67),
	.In1_im_68(in_im_68),
	.In1_im_69(in_im_69),
	.In1_im_70(in_im_70),
	.In1_im_71(in_im_71),
	.In1_im_72(in_im_72),
	.In1_im_73(in_im_73),
	.In1_im_74(in_im_74),
	.In1_im_75(in_im_75),
	.In1_im_76(in_im_76),
	.In1_im_77(in_im_77),
	.In1_im_78(in_im_78),
	.In1_im_79(in_im_79),
	.In1_im_80(in_im_80),
	.In1_im_81(in_im_81),
	.In1_im_82(in_im_82),
	.In1_im_83(in_im_83),
	.In1_im_84(in_im_84),
	.In1_im_85(in_im_85),
	.In1_im_86(in_im_86),
	.In1_im_87(in_im_87),
	.In1_im_88(in_im_88),
	.In1_im_89(in_im_89),
	.In1_im_90(in_im_90),
	.In1_im_91(in_im_91),
	.In1_im_92(in_im_92),
	.In1_im_93(in_im_93),
	.In1_im_94(in_im_94),
	.In1_im_95(in_im_95),
	.In1_im_96(in_im_96),
	.In1_im_97(in_im_97),
	.In1_im_98(in_im_98),
	.In1_im_99(in_im_99),
	.In1_im_100(in_im_100),
	.In1_im_101(in_im_101),
	.In1_im_102(in_im_102),
	.In1_im_103(in_im_103),
	.In1_im_104(in_im_104),
	.In1_im_105(in_im_105),
	.In1_im_106(in_im_106),
	.In1_im_107(in_im_107),
	.In1_im_108(in_im_108),
	.In1_im_109(in_im_109),
	.In1_im_110(in_im_110),
	.In1_im_111(in_im_111),
	.In1_im_112(in_im_112),
	.In1_im_113(in_im_113),
	.In1_im_114(in_im_114),
	.In1_im_115(in_im_115),
	.In1_im_116(in_im_116),
	.In1_im_117(in_im_117),
	.In1_im_118(in_im_118),
	.In1_im_119(in_im_119),
	.In1_im_120(in_im_120),
	.In1_im_121(in_im_121),
	.In1_im_122(in_im_122),
	.In1_im_123(in_im_123),
	.In1_im_124(in_im_124),
	.In1_im_125(in_im_125),
	.In1_im_126(in_im_126),
	.In1_im_127(in_im_127),
	.Out1_re_0(out_re_0),
	.Out1_re_1(out_re_1),
	.Out1_re_2(out_re_2),
	.Out1_re_3(out_re_3),
	.Out1_re_4(out_re_4),
	.Out1_re_5(out_re_5),
	.Out1_re_6(out_re_6),
	.Out1_re_7(out_re_7),
	.Out1_re_8(out_re_8),
	.Out1_re_9(out_re_9),
	.Out1_re_10(out_re_10),
	.Out1_re_11(out_re_11),
	.Out1_re_12(out_re_12),
	.Out1_re_13(out_re_13),
	.Out1_re_14(out_re_14),
	.Out1_re_15(out_re_15),
	.Out1_re_16(out_re_16),
	.Out1_re_17(out_re_17),
	.Out1_re_18(out_re_18),
	.Out1_re_19(out_re_19),
	.Out1_re_20(out_re_20),
	.Out1_re_21(out_re_21),
	.Out1_re_22(out_re_22),
	.Out1_re_23(out_re_23),
	.Out1_re_24(out_re_24),
	.Out1_re_25(out_re_25),
	.Out1_re_26(out_re_26),
	.Out1_re_27(out_re_27),
	.Out1_re_28(out_re_28),
	.Out1_re_29(out_re_29),
	.Out1_re_30(out_re_30),
	.Out1_re_31(out_re_31),
	.Out1_re_32(out_re_32),
	.Out1_re_33(out_re_33),
	.Out1_re_34(out_re_34),
	.Out1_re_35(out_re_35),
	.Out1_re_36(out_re_36),
	.Out1_re_37(out_re_37),
	.Out1_re_38(out_re_38),
	.Out1_re_39(out_re_39),
	.Out1_re_40(out_re_40),
	.Out1_re_41(out_re_41),
	.Out1_re_42(out_re_42),
	.Out1_re_43(out_re_43),
	.Out1_re_44(out_re_44),
	.Out1_re_45(out_re_45),
	.Out1_re_46(out_re_46),
	.Out1_re_47(out_re_47),
	.Out1_re_48(out_re_48),
	.Out1_re_49(out_re_49),
	.Out1_re_50(out_re_50),
	.Out1_re_51(out_re_51),
	.Out1_re_52(out_re_52),
	.Out1_re_53(out_re_53),
	.Out1_re_54(out_re_54),
	.Out1_re_55(out_re_55),
	.Out1_re_56(out_re_56),
	.Out1_re_57(out_re_57),
	.Out1_re_58(out_re_58),
	.Out1_re_59(out_re_59),
	.Out1_re_60(out_re_60),
	.Out1_re_61(out_re_61),
	.Out1_re_62(out_re_62),
	.Out1_re_63(out_re_63),
	.Out1_re_64(out_re_64),
	.Out1_re_65(out_re_65),
	.Out1_re_66(out_re_66),
	.Out1_re_67(out_re_67),
	.Out1_re_68(out_re_68),
	.Out1_re_69(out_re_69),
	.Out1_re_70(out_re_70),
	.Out1_re_71(out_re_71),
	.Out1_re_72(out_re_72),
	.Out1_re_73(out_re_73),
	.Out1_re_74(out_re_74),
	.Out1_re_75(out_re_75),
	.Out1_re_76(out_re_76),
	.Out1_re_77(out_re_77),
	.Out1_re_78(out_re_78),
	.Out1_re_79(out_re_79),
	.Out1_re_80(out_re_80),
	.Out1_re_81(out_re_81),
	.Out1_re_82(out_re_82),
	.Out1_re_83(out_re_83),
	.Out1_re_84(out_re_84),
	.Out1_re_85(out_re_85),
	.Out1_re_86(out_re_86),
	.Out1_re_87(out_re_87),
	.Out1_re_88(out_re_88),
	.Out1_re_89(out_re_89),
	.Out1_re_90(out_re_90),
	.Out1_re_91(out_re_91),
	.Out1_re_92(out_re_92),
	.Out1_re_93(out_re_93),
	.Out1_re_94(out_re_94),
	.Out1_re_95(out_re_95),
	.Out1_re_96(out_re_96),
	.Out1_re_97(out_re_97),
	.Out1_re_98(out_re_98),
	.Out1_re_99(out_re_99),
	.Out1_re_100(out_re_100),
	.Out1_re_101(out_re_101),
	.Out1_re_102(out_re_102),
	.Out1_re_103(out_re_103),
	.Out1_re_104(out_re_104),
	.Out1_re_105(out_re_105),
	.Out1_re_106(out_re_106),
	.Out1_re_107(out_re_107),
	.Out1_re_108(out_re_108),
	.Out1_re_109(out_re_109),
	.Out1_re_110(out_re_110),
	.Out1_re_111(out_re_111),
	.Out1_re_112(out_re_112),
	.Out1_re_113(out_re_113),
	.Out1_re_114(out_re_114),
	.Out1_re_115(out_re_115),
	.Out1_re_116(out_re_116),
	.Out1_re_117(out_re_117),
	.Out1_re_118(out_re_118),
	.Out1_re_119(out_re_119),
	.Out1_re_120(out_re_120),
	.Out1_re_121(out_re_121),
	.Out1_re_122(out_re_122),
	.Out1_re_123(out_re_123),
	.Out1_re_124(out_re_124),
	.Out1_re_125(out_re_125),
	.Out1_re_126(out_re_126),
	.Out1_re_127(out_re_127),
	.Out1_im_0(out_im_0),
	.Out1_im_1(out_im_1),
	.Out1_im_2(out_im_2),
	.Out1_im_3(out_im_3),
	.Out1_im_4(out_im_4),
	.Out1_im_5(out_im_5),
	.Out1_im_6(out_im_6),
	.Out1_im_7(out_im_7),
	.Out1_im_8(out_im_8),
	.Out1_im_9(out_im_9),
	.Out1_im_10(out_im_10),
	.Out1_im_11(out_im_11),
	.Out1_im_12(out_im_12),
	.Out1_im_13(out_im_13),
	.Out1_im_14(out_im_14),
	.Out1_im_15(out_im_15),
	.Out1_im_16(out_im_16),
	.Out1_im_17(out_im_17),
	.Out1_im_18(out_im_18),
	.Out1_im_19(out_im_19),
	.Out1_im_20(out_im_20),
	.Out1_im_21(out_im_21),
	.Out1_im_22(out_im_22),
	.Out1_im_23(out_im_23),
	.Out1_im_24(out_im_24),
	.Out1_im_25(out_im_25),
	.Out1_im_26(out_im_26),
	.Out1_im_27(out_im_27),
	.Out1_im_28(out_im_28),
	.Out1_im_29(out_im_29),
	.Out1_im_30(out_im_30),
	.Out1_im_31(out_im_31),
	.Out1_im_32(out_im_32),
	.Out1_im_33(out_im_33),
	.Out1_im_34(out_im_34),
	.Out1_im_35(out_im_35),
	.Out1_im_36(out_im_36),
	.Out1_im_37(out_im_37),
	.Out1_im_38(out_im_38),
	.Out1_im_39(out_im_39),
	.Out1_im_40(out_im_40),
	.Out1_im_41(out_im_41),
	.Out1_im_42(out_im_42),
	.Out1_im_43(out_im_43),
	.Out1_im_44(out_im_44),
	.Out1_im_45(out_im_45),
	.Out1_im_46(out_im_46),
	.Out1_im_47(out_im_47),
	.Out1_im_48(out_im_48),
	.Out1_im_49(out_im_49),
	.Out1_im_50(out_im_50),
	.Out1_im_51(out_im_51),
	.Out1_im_52(out_im_52),
	.Out1_im_53(out_im_53),
	.Out1_im_54(out_im_54),
	.Out1_im_55(out_im_55),
	.Out1_im_56(out_im_56),
	.Out1_im_57(out_im_57),
	.Out1_im_58(out_im_58),
	.Out1_im_59(out_im_59),
	.Out1_im_60(out_im_60),
	.Out1_im_61(out_im_61),
	.Out1_im_62(out_im_62),
	.Out1_im_63(out_im_63),
	.Out1_im_64(out_im_64),
	.Out1_im_65(out_im_65),
	.Out1_im_66(out_im_66),
	.Out1_im_67(out_im_67),
	.Out1_im_68(out_im_68),
	.Out1_im_69(out_im_69),
	.Out1_im_70(out_im_70),
	.Out1_im_71(out_im_71),
	.Out1_im_72(out_im_72),
	.Out1_im_73(out_im_73),
	.Out1_im_74(out_im_74),
	.Out1_im_75(out_im_75),
	.Out1_im_76(out_im_76),
	.Out1_im_77(out_im_77),
	.Out1_im_78(out_im_78),
	.Out1_im_79(out_im_79),
	.Out1_im_80(out_im_80),
	.Out1_im_81(out_im_81),
	.Out1_im_82(out_im_82),
	.Out1_im_83(out_im_83),
	.Out1_im_84(out_im_84),
	.Out1_im_85(out_im_85),
	.Out1_im_86(out_im_86),
	.Out1_im_87(out_im_87),
	.Out1_im_88(out_im_88),
	.Out1_im_89(out_im_89),
	.Out1_im_90(out_im_90),
	.Out1_im_91(out_im_91),
	.Out1_im_92(out_im_92),
	.Out1_im_93(out_im_93),
	.Out1_im_94(out_im_94),
	.Out1_im_95(out_im_95),
	.Out1_im_96(out_im_96),
	.Out1_im_97(out_im_97),
	.Out1_im_98(out_im_98),
	.Out1_im_99(out_im_99),
	.Out1_im_100(out_im_100),
	.Out1_im_101(out_im_101),
	.Out1_im_102(out_im_102),
	.Out1_im_103(out_im_103),
	.Out1_im_104(out_im_104),
	.Out1_im_105(out_im_105),
	.Out1_im_106(out_im_106),
	.Out1_im_107(out_im_107),
	.Out1_im_108(out_im_108),
	.Out1_im_109(out_im_109),
	.Out1_im_110(out_im_110),
	.Out1_im_111(out_im_111),
	.Out1_im_112(out_im_112),
	.Out1_im_113(out_im_113),
	.Out1_im_114(out_im_114),
	.Out1_im_115(out_im_115),
	.Out1_im_116(out_im_116),
	.Out1_im_117(out_im_117),
	.Out1_im_118(out_im_118),
	.Out1_im_119(out_im_119),
	.Out1_im_120(out_im_120),
	.Out1_im_121(out_im_121),
	.Out1_im_122(out_im_122),
	.Out1_im_123(out_im_123),
	.Out1_im_124(out_im_124),
	.Out1_im_125(out_im_125),
	.Out1_im_126(out_im_126),
	.Out1_im_127(out_im_127)
	);

	// Data synchronization
	always @(posedge clk)
	begin
		if (rst)
			begin
				in_re_0 <= 0;
				in_re_1 <= 0;
				in_re_2 <= 0;
				in_re_3 <= 0;
				in_re_4 <= 0;
				in_re_5 <= 0;
				in_re_6 <= 0;
				in_re_7 <= 0;
				in_re_8 <= 0;
				in_re_9 <= 0;
				in_re_10 <= 0;
				in_re_11 <= 0;
				in_re_12 <= 0;
				in_re_13 <= 0;
				in_re_14 <= 0;
				in_re_15 <= 0;
				in_re_16 <= 0;
				in_re_17 <= 0;
				in_re_18 <= 0;
				in_re_19 <= 0;
				in_re_20 <= 0;
				in_re_21 <= 0;
				in_re_22 <= 0;
				in_re_23 <= 0;
				in_re_24 <= 0;
				in_re_25 <= 0;
				in_re_26 <= 0;
				in_re_27 <= 0;
				in_re_28 <= 0;
				in_re_29 <= 0;
				in_re_30 <= 0;
				in_re_31 <= 0;
				in_re_32 <= 0;
				in_re_33 <= 0;
				in_re_34 <= 0;
				in_re_35 <= 0;
				in_re_36 <= 0;
				in_re_37 <= 0;
				in_re_38 <= 0;
				in_re_39 <= 0;
				in_re_40 <= 0;
				in_re_41 <= 0;
				in_re_42 <= 0;
				in_re_43 <= 0;
				in_re_44 <= 0;
				in_re_45 <= 0;
				in_re_46 <= 0;
				in_re_47 <= 0;
				in_re_48 <= 0;
				in_re_49 <= 0;
				in_re_50 <= 0;
				in_re_51 <= 0;
				in_re_52 <= 0;
				in_re_53 <= 0;
				in_re_54 <= 0;
				in_re_55 <= 0;
				in_re_56 <= 0;
				in_re_57 <= 0;
				in_re_58 <= 0;
				in_re_59 <= 0;
				in_re_60 <= 0;
				in_re_61 <= 0;
				in_re_62 <= 0;
				in_re_63 <= 0;
				in_re_64 <= 0;
				in_re_65 <= 0;
				in_re_66 <= 0;
				in_re_67 <= 0;
				in_re_68 <= 0;
				in_re_69 <= 0;
				in_re_70 <= 0;
				in_re_71 <= 0;
				in_re_72 <= 0;
				in_re_73 <= 0;
				in_re_74 <= 0;
				in_re_75 <= 0;
				in_re_76 <= 0;
				in_re_77 <= 0;
				in_re_78 <= 0;
				in_re_79 <= 0;
				in_re_80 <= 0;
				in_re_81 <= 0;
				in_re_82 <= 0;
				in_re_83 <= 0;
				in_re_84 <= 0;
				in_re_85 <= 0;
				in_re_86 <= 0;
				in_re_87 <= 0;
				in_re_88 <= 0;
				in_re_89 <= 0;
				in_re_90 <= 0;
				in_re_91 <= 0;
				in_re_92 <= 0;
				in_re_93 <= 0;
				in_re_94 <= 0;
				in_re_95 <= 0;
				in_re_96 <= 0;
				in_re_97 <= 0;
				in_re_98 <= 0;
				in_re_99 <= 0;
				in_re_100 <= 0;
				in_re_101 <= 0;
				in_re_102 <= 0;
				in_re_103 <= 0;
				in_re_104 <= 0;
				in_re_105 <= 0;
				in_re_106 <= 0;
				in_re_107 <= 0;
				in_re_108 <= 0;
				in_re_109 <= 0;
				in_re_110 <= 0;
				in_re_111 <= 0;
				in_re_112 <= 0;
				in_re_113 <= 0;
				in_re_114 <= 0;
				in_re_115 <= 0;
				in_re_116 <= 0;
				in_re_117 <= 0;
				in_re_118 <= 0;
				in_re_119 <= 0;
				in_re_120 <= 0;
				in_re_121 <= 0;
				in_re_122 <= 0;
				in_re_123 <= 0;
				in_re_124 <= 0;
				in_re_125 <= 0;
				in_re_126 <= 0;
				in_re_127 <= 0;

				in_im_0 <= 0;
				in_im_1 <= 0;
				in_im_2 <= 0;
				in_im_3 <= 0;
				in_im_4 <= 0;
				in_im_5 <= 0;
				in_im_6 <= 0;
				in_im_7 <= 0;
				in_im_8 <= 0;
				in_im_9 <= 0;
				in_im_10 <= 0;
				in_im_11 <= 0;
				in_im_12 <= 0;
				in_im_13 <= 0;
				in_im_14 <= 0;
				in_im_15 <= 0;
				in_im_16 <= 0;
				in_im_17 <= 0;
				in_im_18 <= 0;
				in_im_19 <= 0;
				in_im_20 <= 0;
				in_im_21 <= 0;
				in_im_22 <= 0;
				in_im_23 <= 0;
				in_im_24 <= 0;
				in_im_25 <= 0;
				in_im_26 <= 0;
				in_im_27 <= 0;
				in_im_28 <= 0;
				in_im_29 <= 0;
				in_im_30 <= 0;
				in_im_31 <= 0;
				in_im_32 <= 0;
				in_im_33 <= 0;
				in_im_34 <= 0;
				in_im_35 <= 0;
				in_im_36 <= 0;
				in_im_37 <= 0;
				in_im_38 <= 0;
				in_im_39 <= 0;
				in_im_40 <= 0;
				in_im_41 <= 0;
				in_im_42 <= 0;
				in_im_43 <= 0;
				in_im_44 <= 0;
				in_im_45 <= 0;
				in_im_46 <= 0;
				in_im_47 <= 0;
				in_im_48 <= 0;
				in_im_49 <= 0;
				in_im_50 <= 0;
				in_im_51 <= 0;
				in_im_52 <= 0;
				in_im_53 <= 0;
				in_im_54 <= 0;
				in_im_55 <= 0;
				in_im_56 <= 0;
				in_im_57 <= 0;
				in_im_58 <= 0;
				in_im_59 <= 0;
				in_im_60 <= 0;
				in_im_61 <= 0;
				in_im_62 <= 0;
				in_im_63 <= 0;
				in_im_64 <= 0;
				in_im_65 <= 0;
				in_im_66 <= 0;
				in_im_67 <= 0;
				in_im_68 <= 0;
				in_im_69 <= 0;
				in_im_70 <= 0;
				in_im_71 <= 0;
				in_im_72 <= 0;
				in_im_73 <= 0;
				in_im_74 <= 0;
				in_im_75 <= 0;
				in_im_76 <= 0;
				in_im_77 <= 0;
				in_im_78 <= 0;
				in_im_79 <= 0;
				in_im_80 <= 0;
				in_im_81 <= 0;
				in_im_82 <= 0;
				in_im_83 <= 0;
				in_im_84 <= 0;
				in_im_85 <= 0;
				in_im_86 <= 0;
				in_im_87 <= 0;
				in_im_88 <= 0;
				in_im_89 <= 0;
				in_im_90 <= 0;
				in_im_91 <= 0;
				in_im_92 <= 0;
				in_im_93 <= 0;
				in_im_94 <= 0;
				in_im_95 <= 0;
				in_im_96 <= 0;
				in_im_97 <= 0;
				in_im_98 <= 0;
				in_im_99 <= 0;
				in_im_100 <= 0;
				in_im_101 <= 0;
				in_im_102 <= 0;
				in_im_103 <= 0;
				in_im_104 <= 0;
				in_im_105 <= 0;
				in_im_106 <= 0;
				in_im_107 <= 0;
				in_im_108 <= 0;
				in_im_109 <= 0;
				in_im_110 <= 0;
				in_im_111 <= 0;
				in_im_112 <= 0;
				in_im_113 <= 0;
				in_im_114 <= 0;
				in_im_115 <= 0;
				in_im_116 <= 0;
				in_im_117 <= 0;
				in_im_118 <= 0;
				in_im_119 <= 0;
				in_im_120 <= 0;
				in_im_121 <= 0;
				in_im_122 <= 0;
				in_im_123 <= 0;
				in_im_124 <= 0;
				in_im_125 <= 0;
				in_im_126 <= 0;
				in_im_127 <= 0;
			end
		else
			begin
				in_re_0 <= inp_data[1];
				in_re_1 <= inp_data[2];
				in_re_2 <= inp_data[3];
				in_re_3 <= inp_data[4];
				in_re_4 <= inp_data[5];
				in_re_5 <= inp_data[6];
				in_re_6 <= inp_data[7];
				in_re_7 <= inp_data[8];
				in_re_8 <= inp_data[9];
				in_re_9 <= inp_data[10];
				in_re_10 <= inp_data[11];
				in_re_11 <= inp_data[12];
				in_re_12 <= inp_data[13];
				in_re_13 <= inp_data[14];
				in_re_14 <= inp_data[15];
				in_re_15 <= inp_data[16];
				in_re_16 <= inp_data[17];
				in_re_17 <= inp_data[18];
				in_re_18 <= inp_data[19];
				in_re_19 <= inp_data[20];
				in_re_20 <= inp_data[21];
				in_re_21 <= inp_data[22];
				in_re_22 <= inp_data[23];
				in_re_23 <= inp_data[24];
				in_re_24 <= inp_data[25];
				in_re_25 <= inp_data[26];
				in_re_26 <= inp_data[27];
				in_re_27 <= inp_data[28];
				in_re_28 <= inp_data[29];
				in_re_29 <= inp_data[30];
				in_re_30 <= inp_data[31];
				in_re_31 <= inp_data[32];
				in_re_32 <= inp_data[33];
				in_re_33 <= inp_data[34];
				in_re_34 <= inp_data[35];
				in_re_35 <= inp_data[36];
				in_re_36 <= inp_data[37];
				in_re_37 <= inp_data[38];
				in_re_38 <= inp_data[39];
				in_re_39 <= inp_data[40];
				in_re_40 <= inp_data[41];
				in_re_41 <= inp_data[42];
				in_re_42 <= inp_data[43];
				in_re_43 <= inp_data[44];
				in_re_44 <= inp_data[45];
				in_re_45 <= inp_data[46];
				in_re_46 <= inp_data[47];
				in_re_47 <= inp_data[48];
				in_re_48 <= inp_data[49];
				in_re_49 <= inp_data[50];
				in_re_50 <= inp_data[51];
				in_re_51 <= inp_data[52];
				in_re_52 <= inp_data[53];
				in_re_53 <= inp_data[54];
				in_re_54 <= inp_data[55];
				in_re_55 <= inp_data[56];
				in_re_56 <= inp_data[57];
				in_re_57 <= inp_data[58];
				in_re_58 <= inp_data[59];
				in_re_59 <= inp_data[60];
				in_re_60 <= inp_data[61];
				in_re_61 <= inp_data[62];
				in_re_62 <= inp_data[63];
				in_re_63 <= inp_data[64];
				in_re_64 <= inp_data[65];
				in_re_65 <= inp_data[66];
				in_re_66 <= inp_data[67];
				in_re_67 <= inp_data[68];
				in_re_68 <= inp_data[69];
				in_re_69 <= inp_data[70];
				in_re_70 <= inp_data[71];
				in_re_71 <= inp_data[72];
				in_re_72 <= inp_data[73];
				in_re_73 <= inp_data[74];
				in_re_74 <= inp_data[75];
				in_re_75 <= inp_data[76];
				in_re_76 <= inp_data[77];
				in_re_77 <= inp_data[78];
				in_re_78 <= inp_data[79];
				in_re_79 <= inp_data[80];
				in_re_80 <= inp_data[81];
				in_re_81 <= inp_data[82];
				in_re_82 <= inp_data[83];
				in_re_83 <= inp_data[84];
				in_re_84 <= inp_data[85];
				in_re_85 <= inp_data[86];
				in_re_86 <= inp_data[87];
				in_re_87 <= inp_data[88];
				in_re_88 <= inp_data[89];
				in_re_89 <= inp_data[90];
				in_re_90 <= inp_data[91];
				in_re_91 <= inp_data[92];
				in_re_92 <= inp_data[93];
				in_re_93 <= inp_data[94];
				in_re_94 <= inp_data[95];
				in_re_95 <= inp_data[96];
				in_re_96 <= inp_data[97];
				in_re_97 <= inp_data[98];
				in_re_98 <= inp_data[99];
				in_re_99 <= inp_data[100];
				in_re_100 <= inp_data[101];
				in_re_101 <= inp_data[102];
				in_re_102 <= inp_data[103];
				in_re_103 <= inp_data[104];
				in_re_104 <= inp_data[105];
				in_re_105 <= inp_data[106];
				in_re_106 <= inp_data[107];
				in_re_107 <= inp_data[108];
				in_re_108 <= inp_data[109];
				in_re_109 <= inp_data[110];
				in_re_110 <= inp_data[111];
				in_re_111 <= inp_data[112];
				in_re_112 <= inp_data[113];
				in_re_113 <= inp_data[114];
				in_re_114 <= inp_data[115];
				in_re_115 <= inp_data[116];
				in_re_116 <= inp_data[117];
				in_re_117 <= inp_data[118];
				in_re_118 <= inp_data[119];
				in_re_119 <= inp_data[120];
				in_re_120 <= inp_data[121];
				in_re_121 <= inp_data[122];
				in_re_122 <= inp_data[123];
				in_re_123 <= inp_data[124];
				in_re_124 <= inp_data[125];
				in_re_125 <= inp_data[126];
				in_re_126 <= inp_data[127];
				in_re_127 <= inp_data[128];

				in_im_0 <= 0;
				in_im_1 <= 0;
				in_im_2 <= 0;
				in_im_3 <= 0;
				in_im_4 <= 0;
				in_im_5 <= 0;
				in_im_6 <= 0;
				in_im_7 <= 0;
				in_im_8 <= 0;
				in_im_9 <= 0;
				in_im_10 <= 0;
				in_im_11 <= 0;
				in_im_12 <= 0;
				in_im_13 <= 0;
				in_im_14 <= 0;
				in_im_15 <= 0;
				in_im_16 <= 0;
				in_im_17 <= 0;
				in_im_18 <= 0;
				in_im_19 <= 0;
				in_im_20 <= 0;
				in_im_21 <= 0;
				in_im_22 <= 0;
				in_im_23 <= 0;
				in_im_24 <= 0;
				in_im_25 <= 0;
				in_im_26 <= 0;
				in_im_27 <= 0;
				in_im_28 <= 0;
				in_im_29 <= 0;
				in_im_30 <= 0;
				in_im_31 <= 0;
				in_im_32 <= 0;
				in_im_33 <= 0;
				in_im_34 <= 0;
				in_im_35 <= 0;
				in_im_36 <= 0;
				in_im_37 <= 0;
				in_im_38 <= 0;
				in_im_39 <= 0;
				in_im_40 <= 0;
				in_im_41 <= 0;
				in_im_42 <= 0;
				in_im_43 <= 0;
				in_im_44 <= 0;
				in_im_45 <= 0;
				in_im_46 <= 0;
				in_im_47 <= 0;
				in_im_48 <= 0;
				in_im_49 <= 0;
				in_im_50 <= 0;
				in_im_51 <= 0;
				in_im_52 <= 0;
				in_im_53 <= 0;
				in_im_54 <= 0;
				in_im_55 <= 0;
				in_im_56 <= 0;
				in_im_57 <= 0;
				in_im_58 <= 0;
				in_im_59 <= 0;
				in_im_60 <= 0;
				in_im_61 <= 0;
				in_im_62 <= 0;
				in_im_63 <= 0;
				in_im_64 <= 0;
				in_im_65 <= 0;
				in_im_66 <= 0;
				in_im_67 <= 0;
				in_im_68 <= 0;
				in_im_69 <= 0;
				in_im_70 <= 0;
				in_im_71 <= 0;
				in_im_72 <= 0;
				in_im_73 <= 0;
				in_im_74 <= 0;
				in_im_75 <= 0;
				in_im_76 <= 0;
				in_im_77 <= 0;
				in_im_78 <= 0;
				in_im_79 <= 0;
				in_im_80 <= 0;
				in_im_81 <= 0;
				in_im_82 <= 0;
				in_im_83 <= 0;
				in_im_84 <= 0;
				in_im_85 <= 0;
				in_im_86 <= 0;
				in_im_87 <= 0;
				in_im_88 <= 0;
				in_im_89 <= 0;
				in_im_90 <= 0;
				in_im_91 <= 0;
				in_im_92 <= 0;
				in_im_93 <= 0;
				in_im_94 <= 0;
				in_im_95 <= 0;
				in_im_96 <= 0;
				in_im_97 <= 0;
				in_im_98 <= 0;
				in_im_99 <= 0;
				in_im_100 <= 0;
				in_im_101 <= 0;
				in_im_102 <= 0;
				in_im_103 <= 0;
				in_im_104 <= 0;
				in_im_105 <= 0;
				in_im_106 <= 0;
				in_im_107 <= 0;
				in_im_108 <= 0;
				in_im_109 <= 0;
				in_im_110 <= 0;
				in_im_111 <= 0;
				in_im_112 <= 0;
				in_im_113 <= 0;
				in_im_114 <= 0;
				in_im_115 <= 0;
				in_im_116 <= 0;
				in_im_117 <= 0;
				in_im_118 <= 0;
				in_im_119 <= 0;
				in_im_120 <= 0;
				in_im_121 <= 0;
				in_im_122 <= 0;
				in_im_123 <= 0;
				in_im_124 <= 0;
				in_im_125 <= 0;
				in_im_126 <= 0;
				in_im_127 <= 0;
			end
	end

	always@(posedge clk or posedge rst)
	begin
		if (rst)
			begin
				errors_re[1 : 128] <= 0;
				errors_im[1 : 128] <= 0;
			end
		else if (ready)
			begin
				errors_re[1] <= out_data_re[1] - out_re_0;
				errors_re[2] <= out_data_re[2] - out_re_1;
				errors_re[3] <= out_data_re[3] - out_re_2;
				errors_re[4] <= out_data_re[4] - out_re_3;
				errors_re[5] <= out_data_re[5] - out_re_4;
				errors_re[6] <= out_data_re[6] - out_re_5;
				errors_re[7] <= out_data_re[7] - out_re_6;
				errors_re[8] <= out_data_re[8] - out_re_7;
				errors_re[9] <= out_data_re[9] - out_re_8;
				errors_re[10] <= out_data_re[10] - out_re_9;
				errors_re[11] <= out_data_re[11] - out_re_10;
				errors_re[12] <= out_data_re[12] - out_re_11;
				errors_re[13] <= out_data_re[13] - out_re_12;
				errors_re[14] <= out_data_re[14] - out_re_13;
				errors_re[15] <= out_data_re[15] - out_re_14;
				errors_re[16] <= out_data_re[16] - out_re_15;
				errors_re[17] <= out_data_re[17] - out_re_16;
				errors_re[18] <= out_data_re[18] - out_re_17;
				errors_re[19] <= out_data_re[19] - out_re_18;
				errors_re[20] <= out_data_re[20] - out_re_19;
				errors_re[21] <= out_data_re[21] - out_re_20;
				errors_re[22] <= out_data_re[22] - out_re_21;
				errors_re[23] <= out_data_re[23] - out_re_22;
				errors_re[24] <= out_data_re[24] - out_re_23;
				errors_re[25] <= out_data_re[25] - out_re_24;
				errors_re[26] <= out_data_re[26] - out_re_25;
				errors_re[27] <= out_data_re[27] - out_re_26;
				errors_re[28] <= out_data_re[28] - out_re_27;
				errors_re[29] <= out_data_re[29] - out_re_28;
				errors_re[30] <= out_data_re[30] - out_re_29;
				errors_re[31] <= out_data_re[31] - out_re_30;
				errors_re[32] <= out_data_re[32] - out_re_31;
				errors_re[33] <= out_data_re[33] - out_re_32;
				errors_re[34] <= out_data_re[34] - out_re_33;
				errors_re[35] <= out_data_re[35] - out_re_34;
				errors_re[36] <= out_data_re[36] - out_re_35;
				errors_re[37] <= out_data_re[37] - out_re_36;
				errors_re[38] <= out_data_re[38] - out_re_37;
				errors_re[39] <= out_data_re[39] - out_re_38;
				errors_re[40] <= out_data_re[40] - out_re_39;
				errors_re[41] <= out_data_re[41] - out_re_40;
				errors_re[42] <= out_data_re[42] - out_re_41;
				errors_re[43] <= out_data_re[43] - out_re_42;
				errors_re[44] <= out_data_re[44] - out_re_43;
				errors_re[45] <= out_data_re[45] - out_re_44;
				errors_re[46] <= out_data_re[46] - out_re_45;
				errors_re[47] <= out_data_re[47] - out_re_46;
				errors_re[48] <= out_data_re[48] - out_re_47;
				errors_re[49] <= out_data_re[49] - out_re_48;
				errors_re[50] <= out_data_re[50] - out_re_49;
				errors_re[51] <= out_data_re[51] - out_re_50;
				errors_re[52] <= out_data_re[52] - out_re_51;
				errors_re[53] <= out_data_re[53] - out_re_52;
				errors_re[54] <= out_data_re[54] - out_re_53;
				errors_re[55] <= out_data_re[55] - out_re_54;
				errors_re[56] <= out_data_re[56] - out_re_55;
				errors_re[57] <= out_data_re[57] - out_re_56;
				errors_re[58] <= out_data_re[58] - out_re_57;
				errors_re[59] <= out_data_re[59] - out_re_58;
				errors_re[60] <= out_data_re[60] - out_re_59;
				errors_re[61] <= out_data_re[61] - out_re_60;
				errors_re[62] <= out_data_re[62] - out_re_61;
				errors_re[63] <= out_data_re[63] - out_re_62;
				errors_re[64] <= out_data_re[64] - out_re_63;
				errors_re[65] <= out_data_re[65] - out_re_64;
				errors_re[66] <= out_data_re[66] - out_re_65;
				errors_re[67] <= out_data_re[67] - out_re_66;
				errors_re[68] <= out_data_re[68] - out_re_67;
				errors_re[69] <= out_data_re[69] - out_re_68;
				errors_re[70] <= out_data_re[70] - out_re_69;
				errors_re[71] <= out_data_re[71] - out_re_70;
				errors_re[72] <= out_data_re[72] - out_re_71;
				errors_re[73] <= out_data_re[73] - out_re_72;
				errors_re[74] <= out_data_re[74] - out_re_73;
				errors_re[75] <= out_data_re[75] - out_re_74;
				errors_re[76] <= out_data_re[76] - out_re_75;
				errors_re[77] <= out_data_re[77] - out_re_76;
				errors_re[78] <= out_data_re[78] - out_re_77;
				errors_re[79] <= out_data_re[79] - out_re_78;
				errors_re[80] <= out_data_re[80] - out_re_79;
				errors_re[81] <= out_data_re[81] - out_re_80;
				errors_re[82] <= out_data_re[82] - out_re_81;
				errors_re[83] <= out_data_re[83] - out_re_82;
				errors_re[84] <= out_data_re[84] - out_re_83;
				errors_re[85] <= out_data_re[85] - out_re_84;
				errors_re[86] <= out_data_re[86] - out_re_85;
				errors_re[87] <= out_data_re[87] - out_re_86;
				errors_re[88] <= out_data_re[88] - out_re_87;
				errors_re[89] <= out_data_re[89] - out_re_88;
				errors_re[90] <= out_data_re[90] - out_re_89;
				errors_re[91] <= out_data_re[91] - out_re_90;
				errors_re[92] <= out_data_re[92] - out_re_91;
				errors_re[93] <= out_data_re[93] - out_re_92;
				errors_re[94] <= out_data_re[94] - out_re_93;
				errors_re[95] <= out_data_re[95] - out_re_94;
				errors_re[96] <= out_data_re[96] - out_re_95;
				errors_re[97] <= out_data_re[97] - out_re_96;
				errors_re[98] <= out_data_re[98] - out_re_97;
				errors_re[99] <= out_data_re[99] - out_re_98;
				errors_re[100] <= out_data_re[100] - out_re_99;
				errors_re[101] <= out_data_re[101] - out_re_100;
				errors_re[102] <= out_data_re[102] - out_re_101;
				errors_re[103] <= out_data_re[103] - out_re_102;
				errors_re[104] <= out_data_re[104] - out_re_103;
				errors_re[105] <= out_data_re[105] - out_re_104;
				errors_re[106] <= out_data_re[106] - out_re_105;
				errors_re[107] <= out_data_re[107] - out_re_106;
				errors_re[108] <= out_data_re[108] - out_re_107;
				errors_re[109] <= out_data_re[109] - out_re_108;
				errors_re[110] <= out_data_re[110] - out_re_109;
				errors_re[111] <= out_data_re[111] - out_re_110;
				errors_re[112] <= out_data_re[112] - out_re_111;
				errors_re[113] <= out_data_re[113] - out_re_112;
				errors_re[114] <= out_data_re[114] - out_re_113;
				errors_re[115] <= out_data_re[115] - out_re_114;
				errors_re[116] <= out_data_re[116] - out_re_115;
				errors_re[117] <= out_data_re[117] - out_re_116;
				errors_re[118] <= out_data_re[118] - out_re_117;
				errors_re[119] <= out_data_re[119] - out_re_118;
				errors_re[120] <= out_data_re[120] - out_re_119;
				errors_re[121] <= out_data_re[121] - out_re_120;
				errors_re[122] <= out_data_re[122] - out_re_121;
				errors_re[123] <= out_data_re[123] - out_re_122;
				errors_re[124] <= out_data_re[124] - out_re_123;
				errors_re[125] <= out_data_re[125] - out_re_124;
				errors_re[126] <= out_data_re[126] - out_re_125;
				errors_re[127] <= out_data_re[127] - out_re_126;
				errors_re[128] <= out_data_re[128] - out_re_127;

				errors_im[1] <= out_data_im[1] - out_im_0;
				errors_im[2] <= out_data_im[2] - out_im_1;
				errors_im[3] <= out_data_im[3] - out_im_2;
				errors_im[4] <= out_data_im[4] - out_im_3;
				errors_im[5] <= out_data_im[5] - out_im_4;
				errors_im[6] <= out_data_im[6] - out_im_5;
				errors_im[7] <= out_data_im[7] - out_im_6;
				errors_im[8] <= out_data_im[8] - out_im_7;
				errors_im[9] <= out_data_im[9] - out_im_8;
				errors_im[10] <= out_data_im[10] - out_im_9;
				errors_im[11] <= out_data_im[11] - out_im_10;
				errors_im[12] <= out_data_im[12] - out_im_11;
				errors_im[13] <= out_data_im[13] - out_im_12;
				errors_im[14] <= out_data_im[14] - out_im_13;
				errors_im[15] <= out_data_im[15] - out_im_14;
				errors_im[16] <= out_data_im[16] - out_im_15;
				errors_im[17] <= out_data_im[17] - out_im_16;
				errors_im[18] <= out_data_im[18] - out_im_17;
				errors_im[19] <= out_data_im[19] - out_im_18;
				errors_im[20] <= out_data_im[20] - out_im_19;
				errors_im[21] <= out_data_im[21] - out_im_20;
				errors_im[22] <= out_data_im[22] - out_im_21;
				errors_im[23] <= out_data_im[23] - out_im_22;
				errors_im[24] <= out_data_im[24] - out_im_23;
				errors_im[25] <= out_data_im[25] - out_im_24;
				errors_im[26] <= out_data_im[26] - out_im_25;
				errors_im[27] <= out_data_im[27] - out_im_26;
				errors_im[28] <= out_data_im[28] - out_im_27;
				errors_im[29] <= out_data_im[29] - out_im_28;
				errors_im[30] <= out_data_im[30] - out_im_29;
				errors_im[31] <= out_data_im[31] - out_im_30;
				errors_im[32] <= out_data_im[32] - out_im_31;
				errors_im[33] <= out_data_im[33] - out_im_32;
				errors_im[34] <= out_data_im[34] - out_im_33;
				errors_im[35] <= out_data_im[35] - out_im_34;
				errors_im[36] <= out_data_im[36] - out_im_35;
				errors_im[37] <= out_data_im[37] - out_im_36;
				errors_im[38] <= out_data_im[38] - out_im_37;
				errors_im[39] <= out_data_im[39] - out_im_38;
				errors_im[40] <= out_data_im[40] - out_im_39;
				errors_im[41] <= out_data_im[41] - out_im_40;
				errors_im[42] <= out_data_im[42] - out_im_41;
				errors_im[43] <= out_data_im[43] - out_im_42;
				errors_im[44] <= out_data_im[44] - out_im_43;
				errors_im[45] <= out_data_im[45] - out_im_44;
				errors_im[46] <= out_data_im[46] - out_im_45;
				errors_im[47] <= out_data_im[47] - out_im_46;
				errors_im[48] <= out_data_im[48] - out_im_47;
				errors_im[49] <= out_data_im[49] - out_im_48;
				errors_im[50] <= out_data_im[50] - out_im_49;
				errors_im[51] <= out_data_im[51] - out_im_50;
				errors_im[52] <= out_data_im[52] - out_im_51;
				errors_im[53] <= out_data_im[53] - out_im_52;
				errors_im[54] <= out_data_im[54] - out_im_53;
				errors_im[55] <= out_data_im[55] - out_im_54;
				errors_im[56] <= out_data_im[56] - out_im_55;
				errors_im[57] <= out_data_im[57] - out_im_56;
				errors_im[58] <= out_data_im[58] - out_im_57;
				errors_im[59] <= out_data_im[59] - out_im_58;
				errors_im[60] <= out_data_im[60] - out_im_59;
				errors_im[61] <= out_data_im[61] - out_im_60;
				errors_im[62] <= out_data_im[62] - out_im_61;
				errors_im[63] <= out_data_im[63] - out_im_62;
				errors_im[64] <= out_data_im[64] - out_im_63;
				errors_im[65] <= out_data_im[65] - out_im_64;
				errors_im[66] <= out_data_im[66] - out_im_65;
				errors_im[67] <= out_data_im[67] - out_im_66;
				errors_im[68] <= out_data_im[68] - out_im_67;
				errors_im[69] <= out_data_im[69] - out_im_68;
				errors_im[70] <= out_data_im[70] - out_im_69;
				errors_im[71] <= out_data_im[71] - out_im_70;
				errors_im[72] <= out_data_im[72] - out_im_71;
				errors_im[73] <= out_data_im[73] - out_im_72;
				errors_im[74] <= out_data_im[74] - out_im_73;
				errors_im[75] <= out_data_im[75] - out_im_74;
				errors_im[76] <= out_data_im[76] - out_im_75;
				errors_im[77] <= out_data_im[77] - out_im_76;
				errors_im[78] <= out_data_im[78] - out_im_77;
				errors_im[79] <= out_data_im[79] - out_im_78;
				errors_im[80] <= out_data_im[80] - out_im_79;
				errors_im[81] <= out_data_im[81] - out_im_80;
				errors_im[82] <= out_data_im[82] - out_im_81;
				errors_im[83] <= out_data_im[83] - out_im_82;
				errors_im[84] <= out_data_im[84] - out_im_83;
				errors_im[85] <= out_data_im[85] - out_im_84;
				errors_im[86] <= out_data_im[86] - out_im_85;
				errors_im[87] <= out_data_im[87] - out_im_86;
				errors_im[88] <= out_data_im[88] - out_im_87;
				errors_im[89] <= out_data_im[89] - out_im_88;
				errors_im[90] <= out_data_im[90] - out_im_89;
				errors_im[91] <= out_data_im[91] - out_im_90;
				errors_im[92] <= out_data_im[92] - out_im_91;
				errors_im[93] <= out_data_im[93] - out_im_92;
				errors_im[94] <= out_data_im[94] - out_im_93;
				errors_im[95] <= out_data_im[95] - out_im_94;
				errors_im[96] <= out_data_im[96] - out_im_95;
				errors_im[97] <= out_data_im[97] - out_im_96;
				errors_im[98] <= out_data_im[98] - out_im_97;
				errors_im[99] <= out_data_im[99] - out_im_98;
				errors_im[100] <= out_data_im[100] - out_im_99;
				errors_im[101] <= out_data_im[101] - out_im_100;
				errors_im[102] <= out_data_im[102] - out_im_101;
				errors_im[103] <= out_data_im[103] - out_im_102;
				errors_im[104] <= out_data_im[104] - out_im_103;
				errors_im[105] <= out_data_im[105] - out_im_104;
				errors_im[106] <= out_data_im[106] - out_im_105;
				errors_im[107] <= out_data_im[107] - out_im_106;
				errors_im[108] <= out_data_im[108] - out_im_107;
				errors_im[109] <= out_data_im[109] - out_im_108;
				errors_im[110] <= out_data_im[110] - out_im_109;
				errors_im[111] <= out_data_im[111] - out_im_110;
				errors_im[112] <= out_data_im[112] - out_im_111;
				errors_im[113] <= out_data_im[113] - out_im_112;
				errors_im[114] <= out_data_im[114] - out_im_113;
				errors_im[115] <= out_data_im[115] - out_im_114;
				errors_im[116] <= out_data_im[116] - out_im_115;
				errors_im[117] <= out_data_im[117] - out_im_116;
				errors_im[118] <= out_data_im[118] - out_im_117;
				errors_im[119] <= out_data_im[119] - out_im_118;
				errors_im[120] <= out_data_im[120] - out_im_119;
				errors_im[121] <= out_data_im[121] - out_im_120;
				errors_im[122] <= out_data_im[122] - out_im_121;
				errors_im[123] <= out_data_im[123] - out_im_122;
				errors_im[124] <= out_data_im[124] - out_im_123;
				errors_im[125] <= out_data_im[125] - out_im_124;
				errors_im[126] <= out_data_im[126] - out_im_125;
				errors_im[127] <= out_data_im[127] - out_im_126;
				errors_im[128] <= out_data_im[128] - out_im_127;
			end
	end

	// Clock initialization
	initial
		forever #5 clk <= ! clk;

	initial
		$sdf_annotate("../Outputs/FFTblock_FP_libblocks.sdf", instFFTblock);


	// Control signals initialization
	initial
		begin
			#10	rst <= 0;
			#90	ready <= 1;
			#200 $finish;
		end

endmodule
