#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "D:\iverilog\lib\ivl\system.vpi";
:vpi_module "D:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "D:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "D:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "D:\iverilog\lib\ivl\va_math.vpi";
S_00000281336fbb90 .scope module, "testbench" "testbench" 2 3;
 .timescale 0 0;
v000002813379c1d0_0 .var "a", 7 0;
v000002813379c270_0 .net "ab", 15 0, v0000028133747880_0;  1 drivers
v000002813379c310_0 .var "b", 7 0;
v000002813379c3b0_0 .net "busy", 0 0, v000002813379c090_0;  1 drivers
v000002813379c450_0 .var "clk", 0 0;
v000002813379c540_0 .var "start", 0 0;
S_00000281337475b0 .scope module, "inst1" "booths_multiplier" 2 9, 3 1 0, S_00000281336fbb90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 16 "Result";
    .port_info 1 /OUTPUT 1 "in_process";
    .port_info 2 /INPUT 8 "Multiplicand";
    .port_info 3 /INPUT 8 "Multiplier";
    .port_info 4 /INPUT 1 "clk";
    .port_info 5 /INPUT 1 "start";
v00000281336fbd20_0 .var "A", 7 0;
v0000028133712910_0 .var "M", 7 0;
v0000028133744720_0 .net "Multiplicand", 7 0, v000002813379c1d0_0;  1 drivers
v00000281337447c0_0 .net "Multiplier", 7 0, v000002813379c310_0;  1 drivers
v0000028133747740_0 .var "Q", 7 0;
v00000281337477e0_0 .var "Q_1", 0 0;
v0000028133747880_0 .var "Result", 15 0;
v0000028133747920_0 .net "clk", 0 0, v000002813379c450_0;  1 drivers
v000002813379bff0_0 .var "count", 3 0;
v000002813379c090_0 .var "in_process", 0 0;
v000002813379c130_0 .net "start", 0 0, v000002813379c540_0;  1 drivers
E_00000281336f9600 .event posedge, v0000028133747920_0;
    .scope S_00000281337475b0;
T_0 ;
    %wait E_00000281336f9600;
    %load/vec4 v000002813379c130_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 8;
    %store/vec4 v00000281336fbd20_0, 0, 8;
    %load/vec4 v00000281337447c0_0;
    %store/vec4 v0000028133747740_0, 0, 8;
    %load/vec4 v0000028133744720_0;
    %store/vec4 v0000028133712910_0, 0, 8;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000281337477e0_0, 0, 1;
    %pushi/vec4 0, 0, 4;
    %store/vec4 v000002813379bff0_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002813379c090_0, 0, 1;
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0000028133747880_0, 0, 16;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v000002813379c090_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.2, 8;
    %load/vec4 v0000028133747740_0;
    %parti/s 1, 0, 2;
    %load/vec4 v00000281337477e0_0;
    %concat/vec4; draw_concat_vec4
    %dup/vec4;
    %pushi/vec4 1, 0, 2;
    %cmp/u;
    %jmp/1 T_0.4, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 2;
    %cmp/u;
    %jmp/1 T_0.5, 6;
    %jmp T_0.6;
T_0.4 ;
    %load/vec4 v00000281336fbd20_0;
    %load/vec4 v0000028133712910_0;
    %add;
    %store/vec4 v00000281336fbd20_0, 0, 8;
    %jmp T_0.6;
T_0.5 ;
    %load/vec4 v00000281336fbd20_0;
    %load/vec4 v0000028133712910_0;
    %sub;
    %store/vec4 v00000281336fbd20_0, 0, 8;
    %jmp T_0.6;
T_0.6 ;
    %pop/vec4 1;
    %load/vec4 v00000281336fbd20_0;
    %parti/s 1, 7, 4;
    %load/vec4 v00000281336fbd20_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0000028133747740_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v00000281337477e0_0;
    %concat/vec4; draw_concat_vec4
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %pad/u 17;
    %split/vec4 1;
    %store/vec4 v00000281337477e0_0, 0, 1;
    %split/vec4 8;
    %store/vec4 v0000028133747740_0, 0, 8;
    %store/vec4 v00000281336fbd20_0, 0, 8;
    %load/vec4 v000002813379bff0_0;
    %addi 1, 0, 4;
    %store/vec4 v000002813379bff0_0, 0, 4;
    %load/vec4 v000002813379bff0_0;
    %cmpi/u 8, 0, 4;
    %flag_inv 5; GE is !LT
    %jmp/0xz  T_0.7, 5;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c090_0, 0, 1;
    %load/vec4 v00000281336fbd20_0;
    %load/vec4 v0000028133747740_0;
    %concat/vec4; draw_concat_vec4
    %store/vec4 v0000028133747880_0, 0, 16;
T_0.7 ;
T_0.2 ;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_00000281336fbb90;
T_1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c450_0, 0, 1;
    %vpi_call 2 15 "$display", "Test Case 1: a = 9, b = 9" {0 0 0};
    %pushi/vec4 9, 0, 8;
    %store/vec4 v000002813379c1d0_0, 0, 8;
    %pushi/vec4 9, 0, 8;
    %store/vec4 v000002813379c310_0, 0, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 100, 0;
    %load/vec4 v000002813379c270_0;
    %vpi_call 2 17 "$display", "Output: %0d", S<0,vec4,s16> {1 0 0};
    %vpi_call 2 18 "$display", "Test Case 1 done\012" {0 0 0};
    %vpi_call 2 21 "$display", "Test Case 2: a = -5, b = 6" {0 0 0};
    %pushi/vec4 251, 0, 8;
    %store/vec4 v000002813379c1d0_0, 0, 8;
    %pushi/vec4 6, 0, 8;
    %store/vec4 v000002813379c310_0, 0, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 100, 0;
    %load/vec4 v000002813379c270_0;
    %vpi_call 2 23 "$display", "Output: %0d", S<0,vec4,s16> {1 0 0};
    %vpi_call 2 24 "$display", "Test Case 2 done\012" {0 0 0};
    %vpi_call 2 27 "$display", "Test Case 3: a = 12, b = -7" {0 0 0};
    %pushi/vec4 12, 0, 8;
    %store/vec4 v000002813379c1d0_0, 0, 8;
    %pushi/vec4 249, 0, 8;
    %store/vec4 v000002813379c310_0, 0, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 100, 0;
    %load/vec4 v000002813379c270_0;
    %vpi_call 2 29 "$display", "Output: %0d", S<0,vec4,s16> {1 0 0};
    %vpi_call 2 30 "$display", "Test Case 3 done\012" {0 0 0};
    %vpi_call 2 33 "$display", "Test Case 4: a = -8, b = -8" {0 0 0};
    %pushi/vec4 248, 0, 8;
    %store/vec4 v000002813379c1d0_0, 0, 8;
    %pushi/vec4 248, 0, 8;
    %store/vec4 v000002813379c310_0, 0, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002813379c540_0, 0, 1;
    %delay 100, 0;
    %load/vec4 v000002813379c270_0;
    %vpi_call 2 35 "$display", "Output: %0d", S<0,vec4,s16> {1 0 0};
    %vpi_call 2 36 "$display", "Test Case 4 done\012" {0 0 0};
    %vpi_call 2 38 "$finish" {0 0 0};
    %end;
    .thread T_1;
    .scope S_00000281336fbb90;
T_2 ;
    %delay 5, 0;
    %load/vec4 v000002813379c450_0;
    %inv;
    %store/vec4 v000002813379c450_0, 0, 1;
    %jmp T_2;
    .thread T_2;
    .scope S_00000281336fbb90;
T_3 ;
    %vpi_call 2 44 "$dumpfile", "booth_file.vcd" {0 0 0};
    %vpi_call 2 45 "$dumpvars" {0 0 0};
    %end;
    .thread T_3;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "booth_tb.v";
    "./booth_algo.v";
