//
// Verilog description for cell CRC3_6, 
// 08/19/24 13:22:25
//
// LeonardoSpectrum Level 3, 2020a.2 
//


module CRC3_6 ( Clk, Rst, Data_valid, Data_in, config, Crc_out, Crc_valid ) ;

    input Clk ;
    input Rst ;
    input Data_valid ;
    input [37:0]Data_in ;
    input [2:0]config ;
    output [5:0]Crc_out ;
    output Crc_valid ;

    wire count_30, count_29, count_28, count_27, count_26, count_25, count_24, 
         count_23, count_22, count_21, count_20, count_19, count_18, count_17, 
         count_16, count_15, count_14, count_13, count_12, count_11, count_10, 
         count_9, count_8, count_7, count_6, count_5, count_4, count_3, count_2, 
         count_1, count_0, r_30, r_29, r_28, r_27, r_26, r_25, r_24, r_23, r_22, 
         r_21, r_20, r_19, r_18, r_17, r_16, r_15, r_14, r_13, r_12, r_11, r_10, 
         r_9, r_8, r_7, r_6, r_5, r_4, r_3, r_2, r_1, count_inc_9_carry_31, 
         count_inc_9_carry_30, count_inc_9_carry_29, count_inc_9_carry_28, 
         count_inc_9_carry_27, count_inc_9_carry_26, count_inc_9_carry_25, 
         count_inc_9_carry_24, count_inc_9_carry_23, count_inc_9_carry_22, 
         count_inc_9_carry_21, count_inc_9_carry_20, count_inc_9_carry_19, 
         count_inc_9_carry_18, count_inc_9_carry_17, count_inc_9_carry_16, 
         count_inc_9_carry_15, count_inc_9_carry_14, count_inc_9_carry_13, 
         count_inc_9_carry_12, count_inc_9_carry_11, count_inc_9_carry_10, 
         count_inc_9_carry_9, count_inc_9_carry_8, count_inc_9_carry_7, 
         count_inc_9_carry_6, count_inc_9_carry_5, count_inc_9_carry_4, 
         count_inc_9_carry_3, count_inc_9_carry_2, C0, nx4, nx16, nx24, nx34, 
         nx36, nx46, nx2427, count_31, nx2428, nx2430, nx50, nx58, nx70, nx72, 
         nx80, nx90, nx102, nx106, nx108, nx116, nx130, nx138, nx154, nx162, 
         nx170, nx190, nx198, nx206, nx224, nx232, nx240, nx262, nx270, nx278, 
         nx296, nx304, nx312, nx332, nx340, nx348, nx366, nx374, nx382, nx404, 
         nx412, nx424, nx430, nx442, nx454, nx460, nx468, nx482, nx486, nx502, 
         nx526, nx530, nx538, nx558, nx572, nx580, nx584, nx588, nx596, nx604, 
         nx608, nx624, nx634, nx646, nx654, nx700, nx770, nx774, nx780, nx800, 
         nx810, C4, nx832, nx838, nx848, nx872, nx876, nx884, nx892, nx906, 
         nx908, nx916, nx924, nx942, nx950, nx958, nx970, nx974, nx994, nx2439, 
         nx2442, nx2449, nx2452, nx2455, nx2461, nx2463, nx2465, nx2467, nx2471, 
         nx2473, nx2475, nx2477, nx2479, nx2483, nx2488, nx2493, nx2497, nx2520, 
         nx2540, nx2560, nx2580, nx2583, nx2585, nx2587, nx2591, nx2593, nx2595, 
         nx2597, nx2600, nx2602, nx2604, nx2607, nx2609, nx2615, nx2621, nx2624, 
         nx2627, nx2629, nx2632, nx2638, nx2644, nx2646, nx2649, nx2654, nx2656, 
         nx2658, nx2662, nx2664, nx2666, nx2668, nx2670, nx2675, nx2678, nx2681, 
         nx2686, nx2689, nx2690, nx2697, nx2699, nx2707, nx2709, nx2714, nx2715, 
         nx2716, nx2717, nx2721, nx2730;
    wire [30:0] \$dummy ;




    HA1A0 count_inc_9_D0_I0_dup_135 (.S (r_1), .CO (count_inc_9_carry_2), .A (
          count_1), .B (count_0)) ;
    HA1A0 count_inc_9_D0_I0_dup_136 (.S (r_2), .CO (count_inc_9_carry_3), .A (
          count_2), .B (count_inc_9_carry_2)) ;
    HA1A0 count_inc_9_D0_I0_dup_137 (.S (r_3), .CO (count_inc_9_carry_4), .A (
          count_3), .B (count_inc_9_carry_3)) ;
    HA1A0 count_inc_9_D0_I0_dup_138 (.S (r_4), .CO (count_inc_9_carry_5), .A (
          count_4), .B (count_inc_9_carry_4)) ;
    HA1A0 count_inc_9_D0_I0_dup_139 (.S (r_5), .CO (count_inc_9_carry_6), .A (
          count_5), .B (count_inc_9_carry_5)) ;
    HA1A0 count_inc_9_D0_I0_dup_140 (.S (r_6), .CO (count_inc_9_carry_7), .A (
          count_6), .B (count_inc_9_carry_6)) ;
    HA1A0 count_inc_9_D0_I0_dup_141 (.S (r_7), .CO (count_inc_9_carry_8), .A (
          count_7), .B (count_inc_9_carry_7)) ;
    HA1A0 count_inc_9_D0_I0_dup_142 (.S (r_8), .CO (count_inc_9_carry_9), .A (
          count_8), .B (count_inc_9_carry_8)) ;
    HA1A0 count_inc_9_D0_I0_dup_143 (.S (r_9), .CO (count_inc_9_carry_10), .A (
          count_9), .B (count_inc_9_carry_9)) ;
    HA1A0 count_inc_9_D0_I0_dup_144 (.S (r_10), .CO (count_inc_9_carry_11), .A (
          count_10), .B (count_inc_9_carry_10)) ;
    HA1A0 count_inc_9_D0_I0_dup_145 (.S (r_11), .CO (count_inc_9_carry_12), .A (
          count_11), .B (count_inc_9_carry_11)) ;
    HA1A0 count_inc_9_D0_I0_dup_146 (.S (r_12), .CO (count_inc_9_carry_13), .A (
          count_12), .B (count_inc_9_carry_12)) ;
    HA1A0 count_inc_9_D0_I0_dup_147 (.S (r_13), .CO (count_inc_9_carry_14), .A (
          count_13), .B (count_inc_9_carry_13)) ;
    HA1A0 count_inc_9_D0_I0_dup_148 (.S (r_14), .CO (count_inc_9_carry_15), .A (
          count_14), .B (count_inc_9_carry_14)) ;
    HA1A0 count_inc_9_D0_I0_dup_149 (.S (r_15), .CO (count_inc_9_carry_16), .A (
          count_15), .B (count_inc_9_carry_15)) ;
    HA1A0 count_inc_9_D0_I0_dup_150 (.S (r_16), .CO (count_inc_9_carry_17), .A (
          count_16), .B (count_inc_9_carry_16)) ;
    HA1A0 count_inc_9_D0_I0_dup_151 (.S (r_17), .CO (count_inc_9_carry_18), .A (
          count_17), .B (count_inc_9_carry_17)) ;
    HA1A0 count_inc_9_D0_I0_dup_152 (.S (r_18), .CO (count_inc_9_carry_19), .A (
          count_18), .B (count_inc_9_carry_18)) ;
    HA1A0 count_inc_9_D0_I0_dup_153 (.S (r_19), .CO (count_inc_9_carry_20), .A (
          count_19), .B (count_inc_9_carry_19)) ;
    HA1A0 count_inc_9_D0_I0_dup_154 (.S (r_20), .CO (count_inc_9_carry_21), .A (
          count_20), .B (count_inc_9_carry_20)) ;
    HA1A0 count_inc_9_D0_I0_dup_155 (.S (r_21), .CO (count_inc_9_carry_22), .A (
          count_21), .B (count_inc_9_carry_21)) ;
    HA1A0 count_inc_9_D0_I0_dup_156 (.S (r_22), .CO (count_inc_9_carry_23), .A (
          count_22), .B (count_inc_9_carry_22)) ;
    HA1A0 count_inc_9_D0_I0_dup_157 (.S (r_23), .CO (count_inc_9_carry_24), .A (
          count_23), .B (count_inc_9_carry_23)) ;
    HA1A0 count_inc_9_D0_I0_dup_158 (.S (r_24), .CO (count_inc_9_carry_25), .A (
          count_24), .B (count_inc_9_carry_24)) ;
    HA1A0 count_inc_9_D0_I0_dup_159 (.S (r_25), .CO (count_inc_9_carry_26), .A (
          count_25), .B (count_inc_9_carry_25)) ;
    HA1A0 count_inc_9_D0_I0_dup_160 (.S (r_26), .CO (count_inc_9_carry_27), .A (
          count_26), .B (count_inc_9_carry_26)) ;
    HA1A0 count_inc_9_D0_I0_dup_161 (.S (r_27), .CO (count_inc_9_carry_28), .A (
          count_27), .B (count_inc_9_carry_27)) ;
    HA1A0 count_inc_9_D0_I0_dup_162 (.S (r_28), .CO (count_inc_9_carry_29), .A (
          count_28), .B (count_inc_9_carry_28)) ;
    HA1A0 count_inc_9_D0_I0_dup_163 (.S (r_29), .CO (count_inc_9_carry_30), .A (
          count_29), .B (count_inc_9_carry_29)) ;
    HA1A0 count_inc_9_D0_I0_dup_164 (.S (r_30), .CO (count_inc_9_carry_31), .A (
          count_30), .B (count_inc_9_carry_30)) ;
    FD1H1 reg_count_0 (.Q (count_0), .XQ (nx2609), .D (nx90), .CK (Clk), .EN (
          nx2730)) ;
    NR2R0 ix91 (.X (nx90), .A1 (count_0), .A2 (nx2439)) ;
    AO2L1 ix2440 (.X (nx2439), .A1 (nx412), .A2 (nx530), .B1 (nx526), .B2 (
          nx2428)) ;
    ND2N0 ix413 (.X (nx412), .A1 (nx2442), .A2 (nx2580)) ;
    AOA4I0 ix2443 (.X (nx2442), .A1 (nx70), .A2 (nx106), .B (nx2493), .C (nx404)
           ) ;
    FD1H1 reg_count_4 (.Q (count_4), .XQ (nx2607), .D (nx50), .CK (Clk), .EN (
          nx2730)) ;
    AN2T0 ix51 (.X (nx50), .A1 (r_4), .A2 (nx2430)) ;
    IV1N0 ix2450 (.X (nx2449), .A (config[2])) ;
    AN4T0 ix527 (.X (nx526), .A1 (nx2452), .A2 (config[0]), .A3 (nx430), .A4 (
          nx2449)) ;
    IV1N0 ix2453 (.X (nx2452), .A (config[1])) ;
    ND2N0 ix431 (.X (nx430), .A1 (nx2455), .A2 (nx2580)) ;
    OAI3N0 ix2456 (.X (nx2455), .A1 (nx106), .A2 (nx2488), .B1 (nx412), .B2 (
           nx424)) ;
    AO1I0 ix107 (.X (nx106), .A1 (count_0), .A2 (count_1), .B (count_2)) ;
    FD1H1 reg_count_1 (.Q (count_1), .XQ (nx2604), .D (nx80), .CK (Clk), .EN (
          nx2730)) ;
    AN2T0 ix81 (.X (nx80), .A1 (r_1), .A2 (nx2430)) ;
    AO2L0 ix569 (.X (nx2427), .A1 (nx2461), .A2 (nx2452), .B1 (nx2463), .B2 (
          nx2467)) ;
    IV1N0 ix2462 (.X (nx2461), .A (config[0])) ;
    ND2N0 ix2464 (.X (nx2463), .A1 (Data_valid), .A2 (nx2465)) ;
    IV1N0 ix2466 (.X (nx2465), .A (Rst)) ;
    NR5R0 ix2468 (.X (nx2467), .A1 (count_31), .A2 (config[2]), .A3 (nx558), .A4 (
          config[0]), .A5 (nx2452)) ;
    OAOI0 ix443 (.X (nx442), .A1 (nx2471), .A2 (nx2475), .B (nx2477), .C (nx2597
          )) ;
    OR2T0 ix2472 (.X (nx2471), .A1 (config[2]), .A2 (nx2473)) ;
    NR2R1 ix2474 (.X (nx2473), .A1 (config[0]), .A2 (config[1])) ;
    MX2L0 ix2476 (.X (nx2475), .A (nx412), .B (nx430), .S (config[1])) ;
    OAI3N0 ix2480 (.X (nx2479), .A1 (nx2449), .A2 (nx486), .B1 (nx2461), .B2 (
           config[1])) ;
    ND2N0 ix469 (.X (nx468), .A1 (nx2483), .A2 (nx2580)) ;
    AOA4I0 ix2484 (.X (nx2483), .A1 (nx454), .A2 (nx460), .B (nx2493), .C (nx404
           )) ;
    FD1H1 reg_count_3 (.Q (count_3), .XQ (nx2488), .D (nx58), .CK (Clk), .EN (
          nx2730)) ;
    AN2T0 ix59 (.X (nx58), .A1 (r_3), .A2 (nx2430)) ;
    ND2N0 ix461 (.X (nx460), .A1 (count_1), .A2 (count_2)) ;
    FD1H1 reg_count_2 (.Q (count_2), .XQ (\$dummy [0]), .D (nx72), .CK (Clk), .EN (
          nx2730)) ;
    AN2T0 ix73 (.X (nx72), .A1 (r_2), .A2 (nx2430)) ;
    FD1H0 reg_count_5 (.Q (count_5), .XQ (nx2493), .D (nx538), .CK (Clk), .EN (
          nx2730)) ;
    AN2T0 ix539 (.X (nx538), .A1 (r_5), .A2 (nx2430)) ;
    NR3R1 ix405 (.X (nx404), .A1 (nx2497), .A2 (nx2540), .A3 (nx2560)) ;
    OR8T0 ix2498 (.X (nx2497), .A1 (count_30), .A2 (count_29), .A3 (count_28), .A4 (
          count_27), .A5 (count_24), .A6 (count_26), .A7 (count_25), .A8 (nx2520
          )) ;
    FD1H0 reg_count_30 (.Q (count_30), .XQ (\$dummy [1]), .D (nx108), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix109 (.X (nx108), .A1 (r_30), .A2 (nx2430)) ;
    FD1H0 reg_count_29 (.Q (count_29), .XQ (\$dummy [2]), .D (nx116), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix117 (.X (nx116), .A1 (r_29), .A2 (nx2430)) ;
    FD1H0 reg_count_28 (.Q (count_28), .XQ (\$dummy [3]), .D (nx130), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix131 (.X (nx130), .A1 (r_28), .A2 (nx2430)) ;
    FD1H0 reg_count_27 (.Q (count_27), .XQ (\$dummy [4]), .D (nx138), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix139 (.X (nx138), .A1 (r_27), .A2 (nx2430)) ;
    FD1H0 reg_count_24 (.Q (count_24), .XQ (\$dummy [5]), .D (nx154), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix155 (.X (nx154), .A1 (r_24), .A2 (nx2430)) ;
    FD1H0 reg_count_26 (.Q (count_26), .XQ (\$dummy [6]), .D (nx162), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix163 (.X (nx162), .A1 (r_26), .A2 (nx2430)) ;
    FD1H0 reg_count_25 (.Q (count_25), .XQ (\$dummy [7]), .D (nx170), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix171 (.X (nx170), .A1 (r_25), .A2 (nx2430)) ;
    OR6T0 ix2521 (.X (nx2520), .A1 (count_21), .A2 (count_23), .A3 (count_22), .A4 (
          count_18), .A5 (count_20), .A6 (count_19)) ;
    FD1H0 reg_count_21 (.Q (count_21), .XQ (\$dummy [8]), .D (nx190), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix191 (.X (nx190), .A1 (r_21), .A2 (nx2430)) ;
    FD1H0 reg_count_23 (.Q (count_23), .XQ (\$dummy [9]), .D (nx198), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix199 (.X (nx198), .A1 (r_23), .A2 (nx2430)) ;
    FD1H0 reg_count_22 (.Q (count_22), .XQ (\$dummy [10]), .D (nx206), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix207 (.X (nx206), .A1 (r_22), .A2 (nx2430)) ;
    FD1H0 reg_count_18 (.Q (count_18), .XQ (\$dummy [11]), .D (nx224), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix225 (.X (nx224), .A1 (r_18), .A2 (nx2430)) ;
    FD1H0 reg_count_20 (.Q (count_20), .XQ (\$dummy [12]), .D (nx232), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix233 (.X (nx232), .A1 (r_20), .A2 (nx2430)) ;
    FD1H0 reg_count_19 (.Q (count_19), .XQ (\$dummy [13]), .D (nx240), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix241 (.X (nx240), .A1 (r_19), .A2 (nx2430)) ;
    OR6T0 ix2541 (.X (nx2540), .A1 (count_15), .A2 (count_17), .A3 (count_16), .A4 (
          count_12), .A5 (count_14), .A6 (count_13)) ;
    FD1H0 reg_count_15 (.Q (count_15), .XQ (\$dummy [14]), .D (nx262), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix263 (.X (nx262), .A1 (r_15), .A2 (nx2430)) ;
    FD1H0 reg_count_17 (.Q (count_17), .XQ (\$dummy [15]), .D (nx270), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix271 (.X (nx270), .A1 (r_17), .A2 (nx2430)) ;
    FD1H0 reg_count_16 (.Q (count_16), .XQ (\$dummy [16]), .D (nx278), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix279 (.X (nx278), .A1 (r_16), .A2 (nx2430)) ;
    FD1H0 reg_count_12 (.Q (count_12), .XQ (\$dummy [17]), .D (nx296), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix297 (.X (nx296), .A1 (r_12), .A2 (nx2430)) ;
    FD1H0 reg_count_14 (.Q (count_14), .XQ (\$dummy [18]), .D (nx304), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix305 (.X (nx304), .A1 (r_14), .A2 (nx2430)) ;
    FD1H0 reg_count_13 (.Q (count_13), .XQ (\$dummy [19]), .D (nx312), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix313 (.X (nx312), .A1 (r_13), .A2 (nx2430)) ;
    OR6T0 ix2561 (.X (nx2560), .A1 (count_9), .A2 (count_11), .A3 (count_10), .A4 (
          count_6), .A5 (count_8), .A6 (count_7)) ;
    FD1H0 reg_count_9 (.Q (count_9), .XQ (\$dummy [20]), .D (nx332), .CK (Clk), 
          .EN (nx2730)) ;
    AN2T0 ix333 (.X (nx332), .A1 (r_9), .A2 (nx2430)) ;
    FD1H0 reg_count_11 (.Q (count_11), .XQ (\$dummy [21]), .D (nx340), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix341 (.X (nx340), .A1 (r_11), .A2 (nx2430)) ;
    FD1H0 reg_count_10 (.Q (count_10), .XQ (\$dummy [22]), .D (nx348), .CK (Clk)
          , .EN (nx2730)) ;
    AN2T0 ix349 (.X (nx348), .A1 (r_10), .A2 (nx2430)) ;
    FD1H0 reg_count_6 (.Q (count_6), .XQ (\$dummy [23]), .D (nx366), .CK (Clk), 
          .EN (nx2730)) ;
    AN2T0 ix367 (.X (nx366), .A1 (r_6), .A2 (nx2430)) ;
    FD1H0 reg_count_8 (.Q (count_8), .XQ (\$dummy [24]), .D (nx374), .CK (Clk), 
          .EN (nx2730)) ;
    AN2T0 ix375 (.X (nx374), .A1 (r_8), .A2 (nx2430)) ;
    FD1H0 reg_count_7 (.Q (count_7), .XQ (\$dummy [25]), .D (nx382), .CK (Clk), 
          .EN (nx2730)) ;
    AN2T0 ix383 (.X (nx382), .A1 (r_7), .A2 (nx2430)) ;
    FD1H0 reg_count_31 (.Q (count_31), .XQ (nx2580), .D (nx442), .CK (Clk), .EN (
          nx2730)) ;
    OAOI0 ix483 (.X (nx482), .A1 (nx2583), .A2 (count_3), .B (count_4), .C (
          count_5)) ;
    AO2I0 ix2586 (.X (nx2585), .A1 (nx468), .A2 (nx2587), .B1 (nx502), .B2 (
          nx2595)) ;
    NR2R0 ix2588 (.X (nx2587), .A1 (nx4), .A2 (nx2449)) ;
    ND2N0 ix5 (.X (nx4), .A1 (config[0]), .A2 (config[1])) ;
    OAI1A1 ix503 (.X (nx502), .A1 (nx2591), .A2 (nx2593), .B (nx2580)) ;
    AO1I1 ix2592 (.X (nx2591), .A1 (nx468), .A2 (nx482), .B (count_31)) ;
    OAOI0 ix559 (.X (nx558), .A1 (count_3), .A2 (nx2600), .B (count_4), .C (
          nx2602)) ;
    ND2N0 ix2603 (.X (nx2602), .A1 (nx2493), .A2 (nx404)) ;
    ND2N0 ix519 (.X (nx2428), .A1 (nx2479), .A2 (nx2585)) ;
    NR2R0 ix531 (.X (nx530), .A1 (config[2]), .A2 (nx2452)) ;
    FD1H0 reg_Crc_valid (.Q (Crc_valid), .XQ (\$dummy [26]), .D (nx46), .CK (Clk
          ), .EN (nx994)) ;
    ND2N0 ix995 (.X (nx994), .A1 (nx2473), .A2 (Rst)) ;
    NR2R0 ix983 (.X (Crc_out[0]), .A1 (nx2615), .A2 (nx2473)) ;
    OR3T0 ix975 (.X (nx974), .A1 (nx872), .A2 (nx832), .A3 (nx970)) ;
    OAI2N0 ix873 (.X (nx872), .A1 (nx502), .A2 (nx16), .B1 (nx486), .B2 (nx24)
           ) ;
    ND3N0 ix17 (.X (nx16), .A1 (nx2452), .A2 (config[2]), .A3 (config[0])) ;
    ND2N0 ix25 (.X (nx24), .A1 (nx2621), .A2 (config[2])) ;
    NR2R0 ix2622 (.X (nx2621), .A1 (config[0]), .A2 (nx2452)) ;
    OAI5R0 ix833 (.X (nx832), .A1 (nx2624), .A2 (nx430), .A3 (nx2595), .B1 (nx4)
           , .B2 (nx412), .B3 (config[2])) ;
    ND2N0 ix2625 (.X (nx2624), .A1 (nx2452), .A2 (config[0])) ;
    OAI3N0 ix971 (.X (nx970), .A1 (nx2627), .A2 (nx2471), .B1 (nx2690), .B2 (
           nx2717)) ;
    AO6L2 ix2630 (.X (nx2629), .A1 (count_5), .A2 (nx800), .B1 (nx770), .B2 (
          nx774), .C1 (nx424), .C2 (nx700)) ;
    ND2N0 ix801 (.X (nx800), .A1 (nx2632), .A2 (nx2638)) ;
    AO6L0 ix2633 (.X (nx2632), .A1 (Data_in[36]), .A2 (nx584), .B1 (Data_in[35])
          , .B2 (nx654), .C1 (Data_in[33]), .C2 (nx646)) ;
    NR2R1 ix655 (.X (nx654), .A1 (count_2), .A2 (nx102)) ;
    NR3R2 ix647 (.X (nx646), .A1 (nx2609), .A2 (count_2), .A3 (count_1)) ;
    AO6L0 ix2639 (.X (nx2638), .A1 (count_0), .A2 (nx780), .B1 (Data_in[32]), .B2 (
          nx624), .C1 (Data_in[34]), .C2 (nx634)) ;
    AN2T0 ix781 (.X (nx780), .A1 (Data_in[37]), .A2 (count_2)) ;
    NR3R2 ix625 (.X (nx624), .A1 (count_0), .A2 (count_2), .A3 (count_1)) ;
    NR3R2 ix635 (.X (nx634), .A1 (count_0), .A2 (count_2), .A3 (nx2604)) ;
    AOA4I0 ix771 (.X (nx770), .A1 (nx2644), .A2 (nx2646), .B (count_3), .C (
           nx2654)) ;
    AO8L0 ix2645 (.X (nx2644), .A1 (Data_in[19]), .A2 (nx654), .B1 (Data_in[17])
          , .B2 (nx646), .C1 (Data_in[18]), .C2 (nx634), .D1 (Data_in[16]), .D2 (
          nx624)) ;
    AO8L0 ix2647 (.X (nx2646), .A1 (Data_in[22]), .A2 (nx608), .B1 (Data_in[23])
          , .B2 (nx604), .C1 (Data_in[20]), .C2 (nx588), .D1 (Data_in[21]), .D2 (
          nx596)) ;
    NR2R0 ix609 (.X (nx608), .A1 (nx2604), .A2 (nx2649)) ;
    ND2N0 ix2650 (.X (nx2649), .A1 (count_2), .A2 (nx2609)) ;
    AN3T0 ix605 (.X (nx604), .A1 (count_2), .A2 (count_0), .A3 (count_1)) ;
    NR2R0 ix589 (.X (nx588), .A1 (count_1), .A2 (nx2649)) ;
    AN3T0 ix597 (.X (nx596), .A1 (count_0), .A2 (count_2), .A3 (nx2604)) ;
    AO1A0 ix2655 (.X (nx2654), .A1 (nx2656), .A2 (nx2658), .B (nx2488)) ;
    AO8L0 ix2657 (.X (nx2656), .A1 (Data_in[27]), .A2 (nx654), .B1 (Data_in[25])
          , .B2 (nx646), .C1 (Data_in[26]), .C2 (nx634), .D1 (Data_in[24]), .D2 (
          nx624)) ;
    AO8L0 ix2659 (.X (nx2658), .A1 (Data_in[30]), .A2 (nx608), .B1 (Data_in[31])
          , .B2 (nx604), .C1 (Data_in[28]), .C2 (nx588), .D1 (Data_in[29]), .D2 (
          nx596)) ;
    AOA4I0 ix701 (.X (nx700), .A1 (nx2662), .A2 (nx2664), .B (count_3), .C (
           nx2666)) ;
    AO8L0 ix2663 (.X (nx2662), .A1 (Data_in[3]), .A2 (nx654), .B1 (Data_in[1]), 
          .B2 (nx646), .C1 (Data_in[2]), .C2 (nx634), .D1 (Data_in[0]), .D2 (
          nx624)) ;
    AO8L0 ix2665 (.X (nx2664), .A1 (Data_in[6]), .A2 (nx608), .B1 (Data_in[7]), 
          .B2 (nx604), .C1 (Data_in[4]), .C2 (nx588), .D1 (Data_in[5]), .D2 (
          nx596)) ;
    AO1A0 ix2667 (.X (nx2666), .A1 (nx2668), .A2 (nx2670), .B (nx2488)) ;
    AO8L0 ix2669 (.X (nx2668), .A1 (Data_in[11]), .A2 (nx654), .B1 (Data_in[9])
          , .B2 (nx646), .C1 (Data_in[10]), .C2 (nx634), .D1 (Data_in[8]), .D2 (
          nx624)) ;
    AO8L0 ix2671 (.X (nx2670), .A1 (Data_in[14]), .A2 (nx608), .B1 (Data_in[15])
          , .B2 (nx604), .C1 (Data_in[12]), .C2 (nx588), .D1 (Data_in[13]), .D2 (
          nx596)) ;
    FD1H0 reg_C2 (.Q (\$dummy [27]), .XQ (nx2689), .D (nx876), .CK (Clk), .EN (
          nx572)) ;
    OR4T0 ix877 (.X (nx876), .A1 (nx580), .A2 (nx872), .A3 (nx832), .A4 (
          Crc_out[1])) ;
    NR2R0 ix857 (.X (Crc_out[1]), .A1 (nx2678), .A2 (nx2473)) ;
    FD1H0 reg_C1 (.Q (\$dummy [28]), .XQ (nx2678), .D (nx848), .CK (Clk), .EN (
          nx572)) ;
    AOA4I0 ix849 (.X (nx848), .A1 (nx2681), .A2 (nx2465), .B (nx2471), .C (
           nx2686)) ;
    FD1H0 reg_C0 (.Q (C0), .XQ (nx2615), .D (nx974), .CK (Clk), .EN (nx572)) ;
    AO1A0 ix573 (.X (nx572), .A1 (Rst), .A2 (nx36), .B (nx2730)) ;
    AOA4I0 ix2687 (.X (nx2686), .A1 (C0), .A2 (nx838), .B (nx832), .C (nx2465)
           ) ;
    OAI1A0 ix839 (.X (nx838), .A1 (nx2591), .A2 (nx24), .B (nx2585)) ;
    ND3N0 ix2691 (.X (nx2690), .A1 (nx958), .A2 (config[2]), .A3 (nx36)) ;
    FD1H0 reg_C5 (.Q (\$dummy [29]), .XQ (nx2716), .D (nx950), .CK (Clk), .EN (
          nx810)) ;
    AN2T0 ix951 (.X (nx950), .A1 (C4), .A2 (nx906)) ;
    FD1H0 reg_C4 (.Q (C4), .XQ (nx2715), .D (nx942), .CK (Clk), .EN (nx810)) ;
    OAI3N0 ix943 (.X (nx942), .A1 (nx468), .A2 (nx4), .B1 (nx2465), .B2 (nx2697)
           ) ;
    AOA4I0 ix2698 (.X (nx2697), .A1 (nx2699), .A2 (nx2452), .B (nx924), .C (nx36
           )) ;
    AO1A0 ix925 (.X (nx924), .A1 (nx2461), .A2 (nx2591), .B (nx916)) ;
    FD1H0 reg_C3 (.Q (\$dummy [30]), .XQ (nx2714), .D (nx908), .CK (Clk), .EN (
          nx810)) ;
    AN2T0 ix909 (.X (nx908), .A1 (nx884), .A2 (nx906)) ;
    NR2R0 ix907 (.X (nx906), .A1 (Rst), .A2 (nx2707)) ;
    AO6L0 ix2708 (.X (nx2707), .A1 (nx468), .A2 (nx2709), .B1 (nx502), .B2 (
          nx892), .C1 (nx486), .C2 (nx2621)) ;
    NR2R0 ix893 (.X (nx892), .A1 (config[1]), .A2 (nx2461)) ;
    OA1R0 ix811 (.X (nx810), .A1 (Data_valid), .A2 (Rst), .B (nx34)) ;
    AO1I0 ix2718 (.X (nx2717), .A1 (nx2675), .A2 (nx2587), .B (Rst)) ;
    NR2R0 ix985 (.X (Crc_out[2]), .A1 (nx2689), .A2 (nx2473)) ;
    NR2R0 ix987 (.X (Crc_out[3]), .A1 (nx2714), .A2 (nx2721)) ;
    OAI1A1 ix2722 (.X (nx2721), .A1 (config[0]), .A2 (config[1]), .B (config[2])
           ) ;
    NR2R0 ix989 (.X (Crc_out[4]), .A1 (nx2715), .A2 (nx2721)) ;
    NR2R0 ix991 (.X (Crc_out[5]), .A1 (nx2716), .A2 (nx2721)) ;
    IV1N0 ix585 (.X (nx584), .A (nx2649)) ;
    IV1N0 ix581 (.X (nx580), .A (nx2717)) ;
    IV1N0 ix2700 (.X (nx2699), .A (nx502)) ;
    IV1N0 ix487 (.X (nx486), .A (nx2591)) ;
    IV1N0 ix2676 (.X (nx2675), .A (nx468)) ;
    IV1N0 ix2584 (.X (nx2583), .A (nx460)) ;
    IV1N0 ix2601 (.X (nx2600), .A (nx106)) ;
    IV1N2 ix537 (.X (nx2430), .A (nx2439)) ;
    IV1N0 ix2478 (.X (nx2477), .A (nx2428)) ;
    IV1N0 ix47 (.X (nx46), .A (nx2463)) ;
    IV1N0 ix37 (.X (nx36), .A (nx2473)) ;
    IV1N0 ix35 (.X (nx34), .A (nx2721)) ;
    IV1N0 ix2596 (.X (nx2595), .A (nx16)) ;
    IV1N0 ix2710 (.X (nx2709), .A (nx4)) ;
    AN1V1 ix2729 (.X (nx2730), .A (nx2427)) ;
    AN2T0 ix71 (.X (nx70), .A1 (nx2607), .A2 (nx2488)) ;
    AN2T0 ix455 (.X (nx454), .A1 (nx2607), .A2 (nx2488)) ;
    MX2L0 ix2594 (.X (nx2593), .A (nx2607), .B (nx2488), .S (nx460)) ;
    XR2T0 ix2598 (.X (nx2597), .A1 (nx2580), .A2 (count_inc_9_carry_31)) ;
    AN2T0 ix425 (.X (nx424), .A1 (nx2493), .A2 (nx2607)) ;
    XN2R0 ix2628 (.X (nx2627), .A1 (nx2629), .A2 (nx2689)) ;
    OR2T0 ix103 (.X (nx102), .A1 (nx2609), .A2 (nx2604)) ;
    AN2T0 ix775 (.X (nx774), .A1 (nx2493), .A2 (count_4)) ;
    XN2R0 ix2682 (.X (nx2681), .A1 (nx2615), .A2 (nx2689)) ;
    XR2T0 ix959 (.X (nx958), .A1 (nx2629), .A2 (nx2716)) ;
    XR2T0 ix917 (.X (nx916), .A1 (nx2714), .A2 (nx2716)) ;
    XR2T0 ix885 (.X (nx884), .A1 (nx2689), .A2 (nx2716)) ;
endmodule

