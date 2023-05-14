////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TrafficLight_synthesis.v
// /___/   /\     Timestamp: Mon Jan 18 11:03:53 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TrafficLight.ngc TrafficLight_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: TrafficLight.ngc
// Output file	: G:\TrafficLight\netgen\synthesis\TrafficLight_synthesis.v
// # of Modules	: 1
// Design Name	: TrafficLight
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TrafficLight (
  cp, r, g, y
);
  input cp;
  output r;
  output g;
  output y;
  wire cp_BUFGP_0;
  wire \A1/cp_o_1 ;
  wire curr_state_FSM_FFd2_2;
  wire g_OBUF_3;
  wire r_OBUF_4;
  wire y_OBUF_5;
  wire \curr_time[3]_count[3]_equal_2_o ;
  wire N0;
  wire N1;
  wire \A1/n0001_inv ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<8> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<9> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<10> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<11> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<12> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<13> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<14> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<15> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<16> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<17> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<18> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<19> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<20> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<21> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<22> ;
  wire \A1/temp[23]_GND_6_o_add_0_OUT<23> ;
  wire \Result<0>1 ;
  wire \Result<1>1_55 ;
  wire \Result<2>1_56 ;
  wire \Result<3>1_57 ;
  wire \curr_state_FSM_FFd2-In ;
  wire \curr_state_FSM_FFd1-In ;
  wire curr_state_FSM_FFd1_80;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_lut<0> ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<0>_110 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_111 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_112 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_113 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_114 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_115 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_116 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_117 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_118 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_119 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_120 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_121 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_122 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_123 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_124 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_125 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_126 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_127 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_128 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_129 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_130 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_131 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_132 ;
  wire \A1/n0001_inv1_133 ;
  wire \A1/n0001_inv2_134 ;
  wire \A1/n0001_inv3_135 ;
  wire \A1/n0001_inv4_136 ;
  wire \A1/Mcount_temp_cy<1>_rt_141 ;
  wire \A1/Mcount_temp_cy<2>_rt_142 ;
  wire \A1/Mcount_temp_cy<3>_rt_143 ;
  wire \A1/Mcount_temp_cy<4>_rt_144 ;
  wire \A1/Mcount_temp_cy<5>_rt_145 ;
  wire \A1/Mcount_temp_cy<6>_rt_146 ;
  wire \A1/Mcount_temp_cy<7>_rt_147 ;
  wire \A1/Mcount_temp_cy<8>_rt_148 ;
  wire \A1/Mcount_temp_cy<9>_rt_149 ;
  wire \A1/Mcount_temp_cy<10>_rt_150 ;
  wire \A1/Mcount_temp_cy<11>_rt_151 ;
  wire \A1/Mcount_temp_cy<12>_rt_152 ;
  wire \A1/Mcount_temp_cy<13>_rt_153 ;
  wire \A1/Mcount_temp_cy<14>_rt_154 ;
  wire \A1/Mcount_temp_cy<15>_rt_155 ;
  wire \A1/Mcount_temp_cy<16>_rt_156 ;
  wire \A1/Mcount_temp_cy<17>_rt_157 ;
  wire \A1/Mcount_temp_cy<18>_rt_158 ;
  wire \A1/Mcount_temp_cy<19>_rt_159 ;
  wire \A1/Mcount_temp_cy<20>_rt_160 ;
  wire \A1/Mcount_temp_cy<21>_rt_161 ;
  wire \A1/Mcount_temp_cy<22>_rt_162 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_rt_163 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_rt_164 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_rt_165 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_rt_166 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_rt_167 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_rt_168 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_rt_169 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_rt_170 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_rt_171 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_rt_172 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_rt_173 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_rt_174 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_rt_175 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_rt_176 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_rt_177 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_rt_178 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_rt_179 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_rt_180 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_rt_181 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_rt_182 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_rt_183 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_rt_184 ;
  wire \A1/Mcount_temp_xor<23>_rt_185 ;
  wire \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<23>_rt_186 ;
  wire \A1/cp_o_dpot_187 ;
  wire \A1/temp_0_rstpot_188 ;
  wire \A1/temp_1_rstpot_189 ;
  wire \A1/temp_2_rstpot_190 ;
  wire \A1/temp_3_rstpot_191 ;
  wire \A1/temp_4_rstpot_192 ;
  wire \A1/temp_5_rstpot_193 ;
  wire \A1/temp_6_rstpot_194 ;
  wire \A1/temp_7_rstpot_195 ;
  wire \A1/temp_8_rstpot_196 ;
  wire \A1/temp_9_rstpot_197 ;
  wire \A1/temp_10_rstpot_198 ;
  wire \A1/temp_11_rstpot_199 ;
  wire \A1/temp_12_rstpot_200 ;
  wire \A1/temp_13_rstpot_201 ;
  wire \A1/temp_14_rstpot_202 ;
  wire \A1/temp_15_rstpot_203 ;
  wire \A1/temp_16_rstpot_204 ;
  wire \A1/temp_17_rstpot_205 ;
  wire \A1/temp_18_rstpot_206 ;
  wire \A1/temp_19_rstpot_207 ;
  wire \A1/temp_20_rstpot_208 ;
  wire \A1/temp_21_rstpot_209 ;
  wire \A1/temp_22_rstpot_210 ;
  wire \A1/temp_23_rstpot_211 ;
  wire N6;
  wire [23 : 0] \A1/temp ;
  wire [23 : 0] Result;
  wire [3 : 0] count;
  wire [0 : 0] \A1/Mcount_temp_lut ;
  wire [22 : 0] \A1/Mcount_temp_cy ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \A1/cp_o  (
    .C(cp_BUFGP_0),
    .CE(\A1/temp[23]_GND_6_o_add_0_OUT<23> ),
    .D(\A1/cp_o_dpot_187 ),
    .Q(\A1/cp_o_1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  curr_state_FSM_FFd2 (
    .C(\A1/cp_o_1 ),
    .D(\curr_state_FSM_FFd2-In ),
    .Q(curr_state_FSM_FFd2_2)
  );
  FD #(
    .INIT ( 1'b0 ))
  curr_state_FSM_FFd1 (
    .C(\A1/cp_o_1 ),
    .D(\curr_state_FSM_FFd1-In ),
    .Q(curr_state_FSM_FFd1_80)
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_0 (
    .C(\A1/cp_o_1 ),
    .D(Result[0]),
    .R(\curr_time[3]_count[3]_equal_2_o ),
    .Q(count[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_1 (
    .C(\A1/cp_o_1 ),
    .D(Result[1]),
    .R(\curr_time[3]_count[3]_equal_2_o ),
    .Q(count[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_2 (
    .C(\A1/cp_o_1 ),
    .D(Result[2]),
    .R(\curr_time[3]_count[3]_equal_2_o ),
    .Q(count[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_3 (
    .C(\A1/cp_o_1 ),
    .D(Result[3]),
    .R(\curr_time[3]_count[3]_equal_2_o ),
    .Q(count[3])
  );
  MUXCY   \A1/Mcount_temp_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\A1/Mcount_temp_lut [0]),
    .O(\A1/Mcount_temp_cy [0])
  );
  XORCY   \A1/Mcount_temp_xor<0>  (
    .CI(N1),
    .LI(\A1/Mcount_temp_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \A1/Mcount_temp_cy<1>  (
    .CI(\A1/Mcount_temp_cy [0]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<1>_rt_141 ),
    .O(\A1/Mcount_temp_cy [1])
  );
  XORCY   \A1/Mcount_temp_xor<1>  (
    .CI(\A1/Mcount_temp_cy [0]),
    .LI(\A1/Mcount_temp_cy<1>_rt_141 ),
    .O(\Result<1>1_55 )
  );
  MUXCY   \A1/Mcount_temp_cy<2>  (
    .CI(\A1/Mcount_temp_cy [1]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<2>_rt_142 ),
    .O(\A1/Mcount_temp_cy [2])
  );
  XORCY   \A1/Mcount_temp_xor<2>  (
    .CI(\A1/Mcount_temp_cy [1]),
    .LI(\A1/Mcount_temp_cy<2>_rt_142 ),
    .O(\Result<2>1_56 )
  );
  MUXCY   \A1/Mcount_temp_cy<3>  (
    .CI(\A1/Mcount_temp_cy [2]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<3>_rt_143 ),
    .O(\A1/Mcount_temp_cy [3])
  );
  XORCY   \A1/Mcount_temp_xor<3>  (
    .CI(\A1/Mcount_temp_cy [2]),
    .LI(\A1/Mcount_temp_cy<3>_rt_143 ),
    .O(\Result<3>1_57 )
  );
  MUXCY   \A1/Mcount_temp_cy<4>  (
    .CI(\A1/Mcount_temp_cy [3]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<4>_rt_144 ),
    .O(\A1/Mcount_temp_cy [4])
  );
  XORCY   \A1/Mcount_temp_xor<4>  (
    .CI(\A1/Mcount_temp_cy [3]),
    .LI(\A1/Mcount_temp_cy<4>_rt_144 ),
    .O(Result[4])
  );
  MUXCY   \A1/Mcount_temp_cy<5>  (
    .CI(\A1/Mcount_temp_cy [4]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<5>_rt_145 ),
    .O(\A1/Mcount_temp_cy [5])
  );
  XORCY   \A1/Mcount_temp_xor<5>  (
    .CI(\A1/Mcount_temp_cy [4]),
    .LI(\A1/Mcount_temp_cy<5>_rt_145 ),
    .O(Result[5])
  );
  MUXCY   \A1/Mcount_temp_cy<6>  (
    .CI(\A1/Mcount_temp_cy [5]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<6>_rt_146 ),
    .O(\A1/Mcount_temp_cy [6])
  );
  XORCY   \A1/Mcount_temp_xor<6>  (
    .CI(\A1/Mcount_temp_cy [5]),
    .LI(\A1/Mcount_temp_cy<6>_rt_146 ),
    .O(Result[6])
  );
  MUXCY   \A1/Mcount_temp_cy<7>  (
    .CI(\A1/Mcount_temp_cy [6]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<7>_rt_147 ),
    .O(\A1/Mcount_temp_cy [7])
  );
  XORCY   \A1/Mcount_temp_xor<7>  (
    .CI(\A1/Mcount_temp_cy [6]),
    .LI(\A1/Mcount_temp_cy<7>_rt_147 ),
    .O(Result[7])
  );
  MUXCY   \A1/Mcount_temp_cy<8>  (
    .CI(\A1/Mcount_temp_cy [7]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<8>_rt_148 ),
    .O(\A1/Mcount_temp_cy [8])
  );
  XORCY   \A1/Mcount_temp_xor<8>  (
    .CI(\A1/Mcount_temp_cy [7]),
    .LI(\A1/Mcount_temp_cy<8>_rt_148 ),
    .O(Result[8])
  );
  MUXCY   \A1/Mcount_temp_cy<9>  (
    .CI(\A1/Mcount_temp_cy [8]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<9>_rt_149 ),
    .O(\A1/Mcount_temp_cy [9])
  );
  XORCY   \A1/Mcount_temp_xor<9>  (
    .CI(\A1/Mcount_temp_cy [8]),
    .LI(\A1/Mcount_temp_cy<9>_rt_149 ),
    .O(Result[9])
  );
  MUXCY   \A1/Mcount_temp_cy<10>  (
    .CI(\A1/Mcount_temp_cy [9]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<10>_rt_150 ),
    .O(\A1/Mcount_temp_cy [10])
  );
  XORCY   \A1/Mcount_temp_xor<10>  (
    .CI(\A1/Mcount_temp_cy [9]),
    .LI(\A1/Mcount_temp_cy<10>_rt_150 ),
    .O(Result[10])
  );
  MUXCY   \A1/Mcount_temp_cy<11>  (
    .CI(\A1/Mcount_temp_cy [10]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<11>_rt_151 ),
    .O(\A1/Mcount_temp_cy [11])
  );
  XORCY   \A1/Mcount_temp_xor<11>  (
    .CI(\A1/Mcount_temp_cy [10]),
    .LI(\A1/Mcount_temp_cy<11>_rt_151 ),
    .O(Result[11])
  );
  MUXCY   \A1/Mcount_temp_cy<12>  (
    .CI(\A1/Mcount_temp_cy [11]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<12>_rt_152 ),
    .O(\A1/Mcount_temp_cy [12])
  );
  XORCY   \A1/Mcount_temp_xor<12>  (
    .CI(\A1/Mcount_temp_cy [11]),
    .LI(\A1/Mcount_temp_cy<12>_rt_152 ),
    .O(Result[12])
  );
  MUXCY   \A1/Mcount_temp_cy<13>  (
    .CI(\A1/Mcount_temp_cy [12]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<13>_rt_153 ),
    .O(\A1/Mcount_temp_cy [13])
  );
  XORCY   \A1/Mcount_temp_xor<13>  (
    .CI(\A1/Mcount_temp_cy [12]),
    .LI(\A1/Mcount_temp_cy<13>_rt_153 ),
    .O(Result[13])
  );
  MUXCY   \A1/Mcount_temp_cy<14>  (
    .CI(\A1/Mcount_temp_cy [13]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<14>_rt_154 ),
    .O(\A1/Mcount_temp_cy [14])
  );
  XORCY   \A1/Mcount_temp_xor<14>  (
    .CI(\A1/Mcount_temp_cy [13]),
    .LI(\A1/Mcount_temp_cy<14>_rt_154 ),
    .O(Result[14])
  );
  MUXCY   \A1/Mcount_temp_cy<15>  (
    .CI(\A1/Mcount_temp_cy [14]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<15>_rt_155 ),
    .O(\A1/Mcount_temp_cy [15])
  );
  XORCY   \A1/Mcount_temp_xor<15>  (
    .CI(\A1/Mcount_temp_cy [14]),
    .LI(\A1/Mcount_temp_cy<15>_rt_155 ),
    .O(Result[15])
  );
  MUXCY   \A1/Mcount_temp_cy<16>  (
    .CI(\A1/Mcount_temp_cy [15]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<16>_rt_156 ),
    .O(\A1/Mcount_temp_cy [16])
  );
  XORCY   \A1/Mcount_temp_xor<16>  (
    .CI(\A1/Mcount_temp_cy [15]),
    .LI(\A1/Mcount_temp_cy<16>_rt_156 ),
    .O(Result[16])
  );
  MUXCY   \A1/Mcount_temp_cy<17>  (
    .CI(\A1/Mcount_temp_cy [16]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<17>_rt_157 ),
    .O(\A1/Mcount_temp_cy [17])
  );
  XORCY   \A1/Mcount_temp_xor<17>  (
    .CI(\A1/Mcount_temp_cy [16]),
    .LI(\A1/Mcount_temp_cy<17>_rt_157 ),
    .O(Result[17])
  );
  MUXCY   \A1/Mcount_temp_cy<18>  (
    .CI(\A1/Mcount_temp_cy [17]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<18>_rt_158 ),
    .O(\A1/Mcount_temp_cy [18])
  );
  XORCY   \A1/Mcount_temp_xor<18>  (
    .CI(\A1/Mcount_temp_cy [17]),
    .LI(\A1/Mcount_temp_cy<18>_rt_158 ),
    .O(Result[18])
  );
  MUXCY   \A1/Mcount_temp_cy<19>  (
    .CI(\A1/Mcount_temp_cy [18]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<19>_rt_159 ),
    .O(\A1/Mcount_temp_cy [19])
  );
  XORCY   \A1/Mcount_temp_xor<19>  (
    .CI(\A1/Mcount_temp_cy [18]),
    .LI(\A1/Mcount_temp_cy<19>_rt_159 ),
    .O(Result[19])
  );
  MUXCY   \A1/Mcount_temp_cy<20>  (
    .CI(\A1/Mcount_temp_cy [19]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<20>_rt_160 ),
    .O(\A1/Mcount_temp_cy [20])
  );
  XORCY   \A1/Mcount_temp_xor<20>  (
    .CI(\A1/Mcount_temp_cy [19]),
    .LI(\A1/Mcount_temp_cy<20>_rt_160 ),
    .O(Result[20])
  );
  MUXCY   \A1/Mcount_temp_cy<21>  (
    .CI(\A1/Mcount_temp_cy [20]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<21>_rt_161 ),
    .O(\A1/Mcount_temp_cy [21])
  );
  XORCY   \A1/Mcount_temp_xor<21>  (
    .CI(\A1/Mcount_temp_cy [20]),
    .LI(\A1/Mcount_temp_cy<21>_rt_161 ),
    .O(Result[21])
  );
  MUXCY   \A1/Mcount_temp_cy<22>  (
    .CI(\A1/Mcount_temp_cy [21]),
    .DI(N1),
    .S(\A1/Mcount_temp_cy<22>_rt_162 ),
    .O(\A1/Mcount_temp_cy [22])
  );
  XORCY   \A1/Mcount_temp_xor<22>  (
    .CI(\A1/Mcount_temp_cy [21]),
    .LI(\A1/Mcount_temp_cy<22>_rt_162 ),
    .O(Result[22])
  );
  XORCY   \A1/Mcount_temp_xor<23>  (
    .CI(\A1/Mcount_temp_cy [22]),
    .LI(\A1/Mcount_temp_xor<23>_rt_185 ),
    .O(Result[23])
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_lut<0> ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<0>_110 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<0>_110 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_rt_163 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_111 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_111 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_rt_164 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_112 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_112 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_rt_165 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_113 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_113 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_rt_166 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_114 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_114 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_rt_167 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_115 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_115 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_rt_168 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_116 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_116 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_rt_169 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_117 )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_117 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_rt_170 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_118 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<8>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_117 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_rt_170 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<8> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_118 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_rt_171 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_119 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<9>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_118 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_rt_171 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<9> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_119 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_rt_172 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_120 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<10>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_119 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_rt_172 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<10> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_120 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_rt_173 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_121 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<11>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_120 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_rt_173 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<11> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_121 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_rt_174 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_122 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<12>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_121 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_rt_174 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<12> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_122 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_rt_175 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_123 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<13>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_122 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_rt_175 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<13> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_123 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_rt_176 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_124 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<14>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_123 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_rt_176 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<14> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_124 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_rt_177 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_125 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<15>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_124 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_rt_177 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<15> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_125 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_rt_178 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_126 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<16>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_125 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_rt_178 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<16> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_126 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_rt_179 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_127 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<17>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_126 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_rt_179 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<17> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_127 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_rt_180 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_128 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<18>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_127 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_rt_180 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<18> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_128 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_rt_181 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_129 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<19>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_128 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_rt_181 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<19> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_129 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_rt_182 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_130 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<20>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_129 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_rt_182 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<20> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_130 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_rt_183 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_131 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<21>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_130 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_rt_183 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<21> )
  );
  MUXCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_131 ),
    .DI(N1),
    .S(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_rt_184 ),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_132 )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<22>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_131 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_rt_184 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<22> )
  );
  XORCY   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<23>  (
    .CI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_132 ),
    .LI(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<23>_rt_186 ),
    .O(\A1/temp[23]_GND_6_o_add_0_OUT<23> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \curr_state__n0027<0>1  (
    .I0(curr_state_FSM_FFd1_80),
    .I1(curr_state_FSM_FFd2_2),
    .O(r_OBUF_4)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  g1 (
    .I0(curr_state_FSM_FFd1_80),
    .I1(curr_state_FSM_FFd2_2),
    .O(g_OBUF_3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Result<1>1  (
    .I0(count[1]),
    .I1(count[0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(count[2]),
    .I1(count[0]),
    .I2(count[1]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Result<3>1  (
    .I0(count[3]),
    .I1(count[0]),
    .I2(count[1]),
    .I3(count[2]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \A1/n0001_inv1  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<20> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<21> ),
    .O(\A1/n0001_inv1_133 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \A1/n0001_inv2  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<8> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<9> ),
    .I2(\A1/temp[23]_GND_6_o_add_0_OUT<10> ),
    .O(\A1/n0001_inv2_134 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF8FFFFFFF0 ))
  \A1/n0001_inv3  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<11> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<12> ),
    .I2(\A1/temp[23]_GND_6_o_add_0_OUT<13> ),
    .I3(\A1/temp[23]_GND_6_o_add_0_OUT<14> ),
    .I4(\A1/temp[23]_GND_6_o_add_0_OUT<15> ),
    .I5(\A1/n0001_inv2_134 ),
    .O(\A1/n0001_inv3_135 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \A1/n0001_inv4  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<16> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<17> ),
    .I2(\A1/temp[23]_GND_6_o_add_0_OUT<18> ),
    .O(\A1/n0001_inv4_136 )
  );
  LUT6 #(
    .INIT ( 64'hF0C0E0C0E0C0E0C0 ))
  \A1/n0001_inv5  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<19> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<22> ),
    .I2(\A1/temp[23]_GND_6_o_add_0_OUT<23> ),
    .I3(\A1/n0001_inv1_133 ),
    .I4(\A1/n0001_inv4_136 ),
    .I5(\A1/n0001_inv3_135 ),
    .O(\A1/n0001_inv )
  );
  OBUF   r_OBUF (
    .I(r_OBUF_4),
    .O(r)
  );
  OBUF   g_OBUF (
    .I(g_OBUF_3),
    .O(g)
  );
  OBUF   y_OBUF (
    .I(y_OBUF_5),
    .O(y)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<1>_rt  (
    .I0(\A1/temp [1]),
    .O(\A1/Mcount_temp_cy<1>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<2>_rt  (
    .I0(\A1/temp [2]),
    .O(\A1/Mcount_temp_cy<2>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<3>_rt  (
    .I0(\A1/temp [3]),
    .O(\A1/Mcount_temp_cy<3>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<4>_rt  (
    .I0(\A1/temp [4]),
    .O(\A1/Mcount_temp_cy<4>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<5>_rt  (
    .I0(\A1/temp [5]),
    .O(\A1/Mcount_temp_cy<5>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<6>_rt  (
    .I0(\A1/temp [6]),
    .O(\A1/Mcount_temp_cy<6>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<7>_rt  (
    .I0(\A1/temp [7]),
    .O(\A1/Mcount_temp_cy<7>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<8>_rt  (
    .I0(\A1/temp [8]),
    .O(\A1/Mcount_temp_cy<8>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<9>_rt  (
    .I0(\A1/temp [9]),
    .O(\A1/Mcount_temp_cy<9>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<10>_rt  (
    .I0(\A1/temp [10]),
    .O(\A1/Mcount_temp_cy<10>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<11>_rt  (
    .I0(\A1/temp [11]),
    .O(\A1/Mcount_temp_cy<11>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<12>_rt  (
    .I0(\A1/temp [12]),
    .O(\A1/Mcount_temp_cy<12>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<13>_rt  (
    .I0(\A1/temp [13]),
    .O(\A1/Mcount_temp_cy<13>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<14>_rt  (
    .I0(\A1/temp [14]),
    .O(\A1/Mcount_temp_cy<14>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<15>_rt  (
    .I0(\A1/temp [15]),
    .O(\A1/Mcount_temp_cy<15>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<16>_rt  (
    .I0(\A1/temp [16]),
    .O(\A1/Mcount_temp_cy<16>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<17>_rt  (
    .I0(\A1/temp [17]),
    .O(\A1/Mcount_temp_cy<17>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<18>_rt  (
    .I0(\A1/temp [18]),
    .O(\A1/Mcount_temp_cy<18>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<19>_rt  (
    .I0(\A1/temp [19]),
    .O(\A1/Mcount_temp_cy<19>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<20>_rt  (
    .I0(\A1/temp [20]),
    .O(\A1/Mcount_temp_cy<20>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<21>_rt  (
    .I0(\A1/temp [21]),
    .O(\A1/Mcount_temp_cy<21>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_cy<22>_rt  (
    .I0(\A1/temp [22]),
    .O(\A1/Mcount_temp_cy<22>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_rt  (
    .I0(\A1/temp [1]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<1>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_rt  (
    .I0(\A1/temp [2]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<2>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_rt  (
    .I0(\A1/temp [3]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<3>_rt_165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_rt  (
    .I0(\A1/temp [4]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<4>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_rt  (
    .I0(\A1/temp [5]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<5>_rt_167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_rt  (
    .I0(\A1/temp [6]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<6>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_rt  (
    .I0(\A1/temp [7]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<7>_rt_169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_rt  (
    .I0(\A1/temp [8]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<8>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_rt  (
    .I0(\A1/temp [9]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<9>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_rt  (
    .I0(\A1/temp [10]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<10>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_rt  (
    .I0(\A1/temp [11]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<11>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_rt  (
    .I0(\A1/temp [12]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<12>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_rt  (
    .I0(\A1/temp [13]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<13>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_rt  (
    .I0(\A1/temp [14]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<14>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_rt  (
    .I0(\A1/temp [15]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<15>_rt_177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_rt  (
    .I0(\A1/temp [16]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<16>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_rt  (
    .I0(\A1/temp [17]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<17>_rt_179 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_rt  (
    .I0(\A1/temp [18]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<18>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_rt  (
    .I0(\A1/temp [19]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<19>_rt_181 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_rt  (
    .I0(\A1/temp [20]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<20>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_rt  (
    .I0(\A1/temp [21]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<21>_rt_183 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_rt  (
    .I0(\A1/temp [22]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_cy<22>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Mcount_temp_xor<23>_rt  (
    .I0(\A1/temp [23]),
    .O(\A1/Mcount_temp_xor<23>_rt_185 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<23>_rt  (
    .I0(\A1/temp [23]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_xor<23>_rt_186 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_0_rstpot  (
    .I0(\Result<0>1 ),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_0_rstpot_188 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_0  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_0_rstpot_188 ),
    .Q(\A1/temp [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_1_rstpot  (
    .I0(\Result<1>1_55 ),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_1_rstpot_189 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_1  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_1_rstpot_189 ),
    .Q(\A1/temp [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_2_rstpot  (
    .I0(\Result<2>1_56 ),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_2_rstpot_190 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_2  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_2_rstpot_190 ),
    .Q(\A1/temp [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_3_rstpot  (
    .I0(\Result<3>1_57 ),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_3_rstpot_191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_3  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_3_rstpot_191 ),
    .Q(\A1/temp [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_4_rstpot  (
    .I0(Result[4]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_4_rstpot_192 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_4  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_4_rstpot_192 ),
    .Q(\A1/temp [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_5_rstpot  (
    .I0(Result[5]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_5_rstpot_193 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_5  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_5_rstpot_193 ),
    .Q(\A1/temp [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_6_rstpot  (
    .I0(Result[6]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_6_rstpot_194 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_6  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_6_rstpot_194 ),
    .Q(\A1/temp [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_7_rstpot  (
    .I0(Result[7]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_7_rstpot_195 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_7  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_7_rstpot_195 ),
    .Q(\A1/temp [7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_8_rstpot  (
    .I0(Result[8]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_8_rstpot_196 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_8  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_8_rstpot_196 ),
    .Q(\A1/temp [8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_9_rstpot  (
    .I0(Result[9]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_9_rstpot_197 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_9  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_9_rstpot_197 ),
    .Q(\A1/temp [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_10_rstpot  (
    .I0(Result[10]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_10_rstpot_198 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_10  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_10_rstpot_198 ),
    .Q(\A1/temp [10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_11_rstpot  (
    .I0(Result[11]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_11_rstpot_199 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_11  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_11_rstpot_199 ),
    .Q(\A1/temp [11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_12_rstpot  (
    .I0(Result[12]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_12_rstpot_200 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_12  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_12_rstpot_200 ),
    .Q(\A1/temp [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_13_rstpot  (
    .I0(Result[13]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_13_rstpot_201 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_13  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_13_rstpot_201 ),
    .Q(\A1/temp [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_14_rstpot  (
    .I0(Result[14]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_14_rstpot_202 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_14  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_14_rstpot_202 ),
    .Q(\A1/temp [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_15_rstpot  (
    .I0(Result[15]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_15_rstpot_203 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_15  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_15_rstpot_203 ),
    .Q(\A1/temp [15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_16_rstpot  (
    .I0(Result[16]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_16_rstpot_204 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_16  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_16_rstpot_204 ),
    .Q(\A1/temp [16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_17_rstpot  (
    .I0(Result[17]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_17_rstpot_205 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_17  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_17_rstpot_205 ),
    .Q(\A1/temp [17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_18_rstpot  (
    .I0(Result[18]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_18_rstpot_206 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_18  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_18_rstpot_206 ),
    .Q(\A1/temp [18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_19_rstpot  (
    .I0(Result[19]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_19_rstpot_207 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_19  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_19_rstpot_207 ),
    .Q(\A1/temp [19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_20_rstpot  (
    .I0(Result[20]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_20_rstpot_208 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_20  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_20_rstpot_208 ),
    .Q(\A1/temp [20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_21_rstpot  (
    .I0(Result[21]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_21_rstpot_209 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_21  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_21_rstpot_209 ),
    .Q(\A1/temp [21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_22_rstpot  (
    .I0(Result[22]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_22_rstpot_210 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_22  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_22_rstpot_210 ),
    .Q(\A1/temp [22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A1/temp_23_rstpot  (
    .I0(Result[23]),
    .I1(\A1/n0001_inv ),
    .O(\A1/temp_23_rstpot_211 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \A1/temp_23  (
    .C(cp_BUFGP_0),
    .D(\A1/temp_23_rstpot_211 ),
    .Q(\A1/temp [23])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \A1/n0001_inv5_rstpot_SW0  (
    .I0(\A1/temp[23]_GND_6_o_add_0_OUT<20> ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<21> ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h5A555A565A565A56 ))
  \A1/cp_o_dpot  (
    .I0(\A1/cp_o_1 ),
    .I1(\A1/temp[23]_GND_6_o_add_0_OUT<19> ),
    .I2(\A1/temp[23]_GND_6_o_add_0_OUT<22> ),
    .I3(N6),
    .I4(\A1/n0001_inv4_136 ),
    .I5(\A1/n0001_inv3_135 ),
    .O(\A1/cp_o_dpot_187 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000414 ))
  \curr_time[3]_count[3]_equal_2_o41  (
    .I0(count[3]),
    .I1(curr_state_FSM_FFd2_2),
    .I2(count[1]),
    .I3(curr_state_FSM_FFd1_80),
    .I4(count[2]),
    .I5(count[0]),
    .O(\curr_time[3]_count[3]_equal_2_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA9AAAAAAAA ))
  \curr_state_FSM_FFd1-In1  (
    .I0(curr_state_FSM_FFd1_80),
    .I1(count[3]),
    .I2(count[1]),
    .I3(count[2]),
    .I4(count[0]),
    .I5(curr_state_FSM_FFd2_2),
    .O(\curr_state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAA8AAAAAAB8 ))
  \curr_state_FSM_FFd2-In1  (
    .I0(curr_state_FSM_FFd2_2),
    .I1(count[3]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(count[2]),
    .I5(curr_state_FSM_FFd1_80),
    .O(\curr_state_FSM_FFd2-In )
  );
  BUFGP   cp_BUFGP (
    .I(cp),
    .O(cp_BUFGP_0)
  );
  INV   \A1/Mcount_temp_lut<0>_INV_0  (
    .I(\A1/temp [0]),
    .O(\A1/Mcount_temp_lut [0])
  );
  INV   \A1/Madd_temp[23]_GND_6_o_add_0_OUT_lut<0>_INV_0  (
    .I(\A1/temp [0]),
    .O(\A1/Madd_temp[23]_GND_6_o_add_0_OUT_lut<0> )
  );
  INV   y1_INV_0 (
    .I(curr_state_FSM_FFd2_2),
    .O(y_OBUF_5)
  );
  INV   \Mcount_count_xor<0>11_INV_0  (
    .I(count[0]),
    .O(Result[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

