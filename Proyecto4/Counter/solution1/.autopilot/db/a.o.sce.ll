; ModuleID = '/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4/Counter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bidirectional_counter_ssdm_thread_M_mode_choice = external global i1
@p_str9 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@p_str8 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str7 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@p_str4 = private unnamed_addr constant [22 x i8] c"bidirectional_counter\00", align 1
@p_str14 = private unnamed_addr constant [10 x i8] c"SC_METHOD\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"mode_choice\00", align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"counter_out\00", align 1
@p_str11 = private unnamed_addr constant [13 x i8] c"\22sc_int<12>\22\00", align 1
@p_str10 = private unnamed_addr constant [5 x i8] c"mode\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @"bidirectional_counter::mode_choice"(i1* %clock, i1* %reset, i1* %enable, i1* %mode, i12* %counter_out, i12* %bidirectional_counter_count_V) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %mode), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %counter_out), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %bidirectional_counter_count_V), !map !119
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !123), !dbg !1103
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1104), !dbg !1103
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1105), !dbg !1103
  call void @llvm.dbg.value(metadata !{i1* %mode}, i64 0, metadata !1106), !dbg !1103
  call void @llvm.dbg.value(metadata !{i12* %counter_out}, i64 0, metadata !1107), !dbg !1103
  call void @llvm.dbg.value(metadata !{i12* %bidirectional_counter_count_V}, i64 0, metadata !1127), !dbg !1103
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 3, [5 x i8]* @p_str5, [6 x i8]* @p_str6, i32 0, i32 0, i1* %clock) nounwind, !dbg !1130
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [6 x i8]* @p_str8, i32 0, i32 0, i1* %reset) nounwind, !dbg !1132
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [7 x i8]* @p_str9, i32 0, i32 0, i1* %enable) nounwind, !dbg !1133
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [5 x i8]* @p_str10, i32 0, i32 0, i1* %mode) nounwind, !dbg !1134
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 1, [13 x i8]* @p_str11, [12 x i8]* @p_str12, i32 0, i32 0, i12* %counter_out) nounwind, !dbg !1135
  call void (...)* @_ssdm_op_SpecProcessDef([22 x i8]* @p_str4, i32 0, [12 x i8]* @p_str13) nounwind, !dbg !1136
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str14), !dbg !1137
  call void (...)* @_ssdm_op_SpecProtocol(i32 1) nounwind, !dbg !1138
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1139), !dbg !1147
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %enable), !dbg !1155
  call void @llvm.dbg.value(metadata !{i1 %tmp}, i64 0, metadata !1157), !dbg !1148
  br i1 %tmp, label %1, label %._crit_edge, !dbg !1154

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i1* %mode}, i64 0, metadata !1139), !dbg !1158
  %tmp_1 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %mode), !dbg !1162
  call void @llvm.dbg.value(metadata !{i1 %tmp_1}, i64 0, metadata !1157), !dbg !1159
  %tmp_2 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %reset), !dbg !1163
  %bidirectional_counte = call i12 @_ssdm_op_Read.ap_auto.i12P(i12* %bidirectional_counter_count_V), !dbg !1171
  br i1 %tmp_1, label %2, label %6, !dbg !1161

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !1448), !dbg !1450
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1451), !dbg !1450
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1452), !dbg !1450
  call void @llvm.dbg.value(metadata !{i1* %mode}, i64 0, metadata !1453), !dbg !1450
  call void @llvm.dbg.value(metadata !{i12* %counter_out}, i64 0, metadata !1454), !dbg !1450
  call void @llvm.dbg.value(metadata !{i12* %bidirectional_counter_count_V}, i64 0, metadata !1455), !dbg !1450
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1456) nounwind, !dbg !1457
  call void @llvm.dbg.value(metadata !{i1 %tmp_2}, i64 0, metadata !1458) nounwind, !dbg !1164
  br i1 %tmp_2, label %4, label %3, !dbg !1166

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_auto.i12P(i12* %bidirectional_counter_count_V, i12 0), !dbg !1459
  call void @_ssdm_op_Write.ap_auto.volatile.i12P(i12* %counter_out, i12 0), !dbg !1464
  br label %incr_count.exit, !dbg !1487

; <label>:4                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1488) nounwind, !dbg !1492
  %tmp_4 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %enable), !dbg !1493
  call void @llvm.dbg.value(metadata !{i1 %tmp_4}, i64 0, metadata !1494) nounwind, !dbg !1489
  br i1 %tmp_4, label %5, label %._crit_edge.i, !dbg !1491

; <label>:5                                       ; preds = %4
  %v_V = add i12 %bidirectional_counte, 1, !dbg !1495
  call void @_ssdm_op_Write.ap_auto.i12P(i12* %bidirectional_counter_count_V, i12 %v_V), !dbg !1502
  call void @llvm.dbg.value(metadata !{i12 %v_V}, i64 0, metadata !1503) nounwind, !dbg !1507
  call void @llvm.dbg.value(metadata !{i12 %v_V}, i64 0, metadata !1508) nounwind, !dbg !1511
  call void @_ssdm_op_Write.ap_auto.volatile.i12P(i12* %counter_out, i12 %v_V), !dbg !1512
  %empty = call i12 @_ssdm_op_Read.ap_auto.volatile.i12P(i12* %counter_out), !dbg !1514
  br label %._crit_edge.i, !dbg !1530

._crit_edge.i:                                    ; preds = %5, %4
  br label %incr_count.exit

incr_count.exit:                                  ; preds = %._crit_edge.i, %3
  br label %9, !dbg !1531

; <label>:6                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !1532), !dbg !1537
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1538), !dbg !1537
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1539), !dbg !1537
  call void @llvm.dbg.value(metadata !{i1* %mode}, i64 0, metadata !1540), !dbg !1537
  call void @llvm.dbg.value(metadata !{i12* %counter_out}, i64 0, metadata !1541), !dbg !1537
  call void @llvm.dbg.value(metadata !{i12* %bidirectional_counter_count_V}, i64 0, metadata !1542), !dbg !1537
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1543) nounwind, !dbg !1548
  call void @llvm.dbg.value(metadata !{i1 %tmp_2}, i64 0, metadata !1549) nounwind, !dbg !1544
  br i1 %tmp_2, label %8, label %7, !dbg !1546

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.ap_auto.i12P(i12* %bidirectional_counter_count_V, i12 0), !dbg !1550
  call void @_ssdm_op_Write.ap_auto.volatile.i12P(i12* %counter_out, i12 0), !dbg !1553
  br label %decr_count.exit, !dbg !1558

; <label>:8                                       ; preds = %6
  %v_V_2 = add i12 %bidirectional_counte, -1, !dbg !1559
  call void @_ssdm_op_Write.ap_auto.i12P(i12* %bidirectional_counter_count_V, i12 %v_V_2), !dbg !1564
  call void @llvm.dbg.value(metadata !{i12 %v_V_2}, i64 0, metadata !1565) nounwind, !dbg !1568
  call void @llvm.dbg.value(metadata !{i12 %v_V_2}, i64 0, metadata !1569) nounwind, !dbg !1571
  call void @_ssdm_op_Write.ap_auto.volatile.i12P(i12* %counter_out, i12 %v_V_2), !dbg !1572
  %empty_2 = call i12 @_ssdm_op_Read.ap_auto.volatile.i12P(i12* %counter_out), !dbg !1574
  br label %decr_count.exit

decr_count.exit:                                  ; preds = %8, %7
  br label %9

; <label>:9                                       ; preds = %decr_count.exit, %incr_count.exit
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str14, i32 %tmp_3), !dbg !1579
  br label %._crit_edge, !dbg !1580

._crit_edge:                                      ; preds = %9, %0
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str14, i32 %tmp_3)
  ret void, !dbg !1580
}

define weak void @"bidirectional_counter::bidirectional_counter"(i1* %clock, i1* %reset, i1* %enable, i1* %mode, i12* %counter_out, i12* %bidirectional_counter_count_V) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %mode), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %counter_out), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %bidirectional_counter_count_V), !map !119
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !1581), !dbg !1584
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1585), !dbg !1584
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1586), !dbg !1584
  call void @llvm.dbg.value(metadata !{i1* %mode}, i64 0, metadata !1587), !dbg !1584
  call void @llvm.dbg.value(metadata !{i12* %counter_out}, i64 0, metadata !1588), !dbg !1584
  call void @llvm.dbg.value(metadata !{i12* %bidirectional_counter_count_V}, i64 0, metadata !1589), !dbg !1584
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @p_str4, [22 x i8]* @p_str4) nounwind, !dbg !1590
  %bidirectional_counte = load i1* @bidirectional_counter_ssdm_thread_M_mode_choice, align 1, !dbg !1592
  br i1 %bidirectional_counte, label %1, label %._crit_edge, !dbg !1592

; <label>:1                                       ; preds = %0
  call void @"bidirectional_counter::mode_choice"(i1* %clock, i1* %reset, i1* %enable, i1* %mode, i12* %counter_out, i12* %bidirectional_counter_count_V), !dbg !1593
  br label %._crit_edge, !dbg !1593

._crit_edge:                                      ; preds = %1, %0
  call void (...)* @_ssdm_op_SpecProcessDecl([22 x i8]* @p_str4, i32 0, [12 x i8]* @p_str13) nounwind, !dbg !1594
  call void (...)* @_ssdm_op_SpecSensitive([12 x i8]* @p_str13, [6 x i8]* @p_str6, i1* %clock, i32 1) nounwind, !dbg !1595
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 3, [5 x i8]* @p_str5, [6 x i8]* @p_str6, i32 0, i32 0, i1* %clock) nounwind, !dbg !1596
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [6 x i8]* @p_str8, i32 0, i32 0, i1* %reset) nounwind, !dbg !1597
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [7 x i8]* @p_str9, i32 0, i32 0, i1* %enable) nounwind, !dbg !1598
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 0, [7 x i8]* @p_str7, [5 x i8]* @p_str10, i32 0, i32 0, i1* %mode) nounwind, !dbg !1599
  call void (...)* @_ssdm_op_SpecPort([22 x i8]* @p_str4, i32 1, [13 x i8]* @p_str11, [12 x i8]* @p_str12, i32 0, i32 0, i12* %counter_out) nounwind, !dbg !1600
  ret void, !dbg !1601
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i12P(i12*, i12) {
entry:
  store i12 %1, i12* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i12P(i12*, i12) {
entry:
  store i12 %1, i12* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i12 @_ssdm_op_Read.ap_auto.volatile.i12P(i12*) {
entry:
  %empty = load i12* %0
  ret i12 %empty
}

define weak i12 @_ssdm_op_Read.ap_auto.i12P(i12*) {
entry:
  %empty = load i12* %0
  ret i12 %empty
}

!opencl.kernels = !{!0, !0, !0, !7, !13, !13, !0, !19, !0, !0, !0, !22, !22, !24, !24, !26, !0, !0, !29, !32, !0, !0, !0, !0, !35, !35, !35, !7, !19, !37, !40, !42, !45, !46, !46, !13, !47, !48, !48, !53, !53, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !55}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!57, !64, !69, !74, !79, !84, !89, !94}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"const ap_int_base<32, true> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!22 = metadata !{null, metadata !14, metadata !15, metadata !23, metadata !17, metadata !18, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!24 = metadata !{null, metadata !14, metadata !15, metadata !25, metadata !17, metadata !18, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<12, true> &"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"os", metadata !"x"}
!29 = metadata !{null, metadata !14, metadata !15, metadata !30, metadata !17, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_int<12> &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!32 = metadata !{null, metadata !14, metadata !15, metadata !33, metadata !17, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_int<12> &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!35 = metadata !{null, metadata !14, metadata !15, metadata !36, metadata !17, metadata !18, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_int<12> &"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!40 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"v2"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_int<12> &", metadata !"const struct _ap_sc_::sc_dt::sc_int<12> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!45 = metadata !{null, metadata !14, metadata !15, metadata !25, metadata !17, metadata !34, metadata !6}
!46 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !39, metadata !6}
!47 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !34, metadata !6}
!48 = metadata !{null, metadata !49, metadata !15, metadata !50, metadata !51, metadata !52, metadata !6}
!49 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!51 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !""}
!53 = metadata !{null, metadata !14, metadata !15, metadata !54, metadata !17, metadata !52, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !31, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!57 = metadata !{metadata !58, null}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 0, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.reset.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 0, i32 1}
!64 = metadata !{metadata !65, null}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.mode.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!69 = metadata !{metadata !70, null}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 0, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.enable.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!74 = metadata !{metadata !75, null}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 11, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.counter_out.m_if.Val.V", metadata !62, metadata !"int12", i32 0, i32 11}
!79 = metadata !{metadata !80, null}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 11, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.count.V", metadata !62, metadata !"int12", i32 0, i32 11}
!84 = metadata !{metadata !85, null}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 0, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"ssdm_ins_bidirectional_counter_0_0.clock.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!89 = metadata !{metadata !90, null}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 31, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"llvm.global_ctors.0", metadata !62, metadata !"", i32 0, i32 31}
!94 = metadata !{metadata !95, i1* @bidirectional_counter_ssdm_thread_M_mode_choice}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 0, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"bidirectional_counter::__ssdm_thread_M_mode_choice", metadata !62, metadata !"bool", i32 0, i32 0}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 0, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"bidirectional_counter.clock.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 0, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"bidirectional_counter.reset.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 0, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"bidirectional_counter.enable.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 0, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"bidirectional_counter.mode.m_if.Val", metadata !62, metadata !"bool", i32 0, i32 0}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 11, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"bidirectional_counter.counter_out.m_if.Val.V", metadata !62, metadata !"int12", i32 0, i32 11}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 11, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"bidirectional_counter.count.V", metadata !62, metadata !"int12", i32 0, i32 11}
!123 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.clock.m_if.Val", null, i32 41, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!124 = metadata !{i32 786689, metadata !125, metadata !"this", metadata !126, i32 16777257, metadata !1093, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 786478, i32 0, null, metadata !"mode_choice", metadata !"mode_choice", metadata !"_ZN21bidirectional_counter11mode_choiceEv", metadata !126, i32 41, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1078, metadata !150, i32 42} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786473, metadata !"../Proyecto1/Counter/Counter.cpp", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !129}
!129 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !130} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 786434, null, metadata !"bidirectional_counter", metadata !131, i32 10, i64 64, i64 16, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_class_type ]
!131 = metadata !{i32 786473, metadata !"../Proyecto1/Counter/Counter.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!132 = metadata !{metadata !133, metadata !253, metadata !254, metadata !255, metadata !256, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079}
!133 = metadata !{i32 786445, metadata !130, metadata !"clock", metadata !131, i32 12, i64 8, i64 8, i64 0, i32 0, metadata !134} ; [ DW_TAG_member ]
!134 = metadata !{i32 786454, metadata !135, metadata !"sc_in_clk", metadata !131, i32 379, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ]
!135 = metadata !{i32 786489, metadata !136, metadata !"sc_core", metadata !137, i32 163} ; [ DW_TAG_namespace ]
!136 = metadata !{i32 786489, null, metadata !"_ap_sc_", metadata !137, i32 160} ; [ DW_TAG_namespace ]
!137 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/ap_sysc/ap_sc_core.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!138 = metadata !{i32 786434, metadata !135, metadata !"sc_in<bool>", metadata !137, i32 357, i64 8, i64 8, i32 0, i32 0, null, metadata !139, i32 0, null, metadata !184} ; [ DW_TAG_class_type ]
!139 = metadata !{metadata !140, metadata !219, metadata !227, metadata !228, metadata !232, metadata !235, metadata !238, metadata !241}
!140 = metadata !{i32 786460, metadata !138, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_inheritance ]
!141 = metadata !{i32 786434, metadata !135, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >", metadata !137, i32 268, i64 8, i64 8, i32 0, i32 0, null, metadata !142, i32 0, null, metadata !217} ; [ DW_TAG_class_type ]
!142 = metadata !{metadata !143, metadata !152, metadata !186, metadata !190, metadata !196, metadata !200, metadata !201, metadata !207, metadata !208, metadata !212, metadata !213}
!143 = metadata !{i32 786460, metadata !141, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_inheritance ]
!144 = metadata !{i32 786434, metadata !135, metadata !"sc_port_base", metadata !137, i32 265, i64 8, i64 8, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_class_type ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786478, i32 0, metadata !144, metadata !"sc_port_base", metadata !"sc_port_base", metadata !"", metadata !137, i32 265, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 265} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !149}
!149 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !144} ; [ DW_TAG_pointer_type ]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!152 = metadata !{i32 786445, metadata !141, metadata !"m_if", metadata !137, i32 270, i64 8, i64 8, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ]
!153 = metadata !{i32 786434, metadata !135, metadata !"sc_signal_in_if<bool>", metadata !137, i32 172, i64 8, i64 8, i32 0, i32 0, null, metadata !154, i32 0, null, metadata !184} ; [ DW_TAG_class_type ]
!154 = metadata !{metadata !155, metadata !162, metadata !165, metadata !169, metadata !172, metadata !177, metadata !181}
!155 = metadata !{i32 786460, metadata !153, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_inheritance ]
!156 = metadata !{i32 786434, metadata !135, metadata !"sc_interface", metadata !137, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !157, i32 0, null, null} ; [ DW_TAG_class_type ]
!157 = metadata !{metadata !158}
!158 = metadata !{i32 786478, i32 0, metadata !156, metadata !"sc_interface", metadata !"sc_interface", metadata !"", metadata !137, i32 165, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 165} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{null, metadata !161}
!161 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !156} ; [ DW_TAG_pointer_type ]
!162 = metadata !{i32 786445, metadata !153, metadata !"Val", metadata !137, i32 174, i64 8, i64 8, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ]
!163 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_volatile_type ]
!164 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!165 = metadata !{i32 786478, i32 0, metadata !153, metadata !"sc_signal_in_if", metadata !"sc_signal_in_if", metadata !"", metadata !137, i32 176, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 176} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{null, metadata !168}
!168 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !153} ; [ DW_TAG_pointer_type ]
!169 = metadata !{i32 786478, i32 0, metadata !153, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !137, i32 180, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 180} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !164, metadata !168}
!172 = metadata !{i32 786478, i32 0, metadata !153, metadata !"read", metadata !"read", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !137, i32 181, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 181} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !164, metadata !175}
!175 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !176} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_const_type ]
!177 = metadata !{i32 786478, i32 0, metadata !153, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbEcvKbEv", metadata !137, i32 187, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 187} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !180, metadata !168}
!180 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_const_type ]
!181 = metadata !{i32 786478, i32 0, metadata !153, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifIbEcvKbEv", metadata !137, i32 188, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 188} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !180, metadata !175}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786479, null, metadata !"T", metadata !164, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!186 = metadata !{i32 786478, i32 0, metadata !141, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !137, i32 272, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 272} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{null, metadata !189}
!189 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !141} ; [ DW_TAG_pointer_type ]
!190 = metadata !{i32 786478, i32 0, metadata !141, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !137, i32 273, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 273} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{null, metadata !189, metadata !193}
!193 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ]
!194 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_const_type ]
!195 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!196 = metadata !{i32 786478, i32 0, metadata !141, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS3_", metadata !137, i32 277, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 277} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{null, metadata !189, metadata !199}
!199 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_reference_type ]
!200 = metadata !{i32 786478, i32 0, metadata !141, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERS3_", metadata !137, i32 280, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 280} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786478, i32 0, metadata !141, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERNS0_15sc_prim_channelE", metadata !137, i32 281, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 281} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{null, metadata !189, metadata !204}
!204 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_reference_type ]
!205 = metadata !{i32 786434, metadata !135, metadata !"sc_prim_channel", metadata !137, i32 166, i64 8, i64 8, i32 0, i32 0, null, metadata !206, i32 0, null, null} ; [ DW_TAG_class_type ]
!206 = metadata !{i32 0}
!207 = metadata !{i32 786478, i32 0, metadata !141, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERNS0_15sc_prim_channelE", metadata !137, i32 284, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 284} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786478, i32 0, metadata !141, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS4_", metadata !137, i32 285, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 285} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{null, metadata !189, metadata !211}
!211 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_reference_type ]
!212 = metadata !{i32 786478, i32 0, metadata !141, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERS4_", metadata !137, i32 286, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 286} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786478, i32 0, metadata !141, metadata !"operator->", metadata !"operator->", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEptEv", metadata !137, i32 288, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 288} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{metadata !216, metadata !189}
!216 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786479, null, metadata !"IF", metadata !153, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!219 = metadata !{i32 786478, i32 0, metadata !138, metadata !"pos", metadata !"pos", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE3posEv", metadata !137, i32 365, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 365} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !222, metadata !225}
!222 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_reference_type ]
!223 = metadata !{i32 786454, metadata !135, metadata !"sc_event_finder", metadata !137, i32 353, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ]
!224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!225 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !226} ; [ DW_TAG_pointer_type ]
!226 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_const_type ]
!227 = metadata !{i32 786478, i32 0, metadata !138, metadata !"neg", metadata !"neg", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE3negEv", metadata !137, i32 366, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 366} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786478, i32 0, metadata !138, metadata !"sc_in", metadata !"sc_in", metadata !"", metadata !137, i32 368, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 368} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!230 = metadata !{null, metadata !231}
!231 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !138} ; [ DW_TAG_pointer_type ]
!232 = metadata !{i32 786478, i32 0, metadata !138, metadata !"sc_in", metadata !"sc_in", metadata !"", metadata !137, i32 369, metadata !233, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 369} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!234 = metadata !{null, metadata !231, metadata !193}
!235 = metadata !{i32 786478, i32 0, metadata !138, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbE4readEv", metadata !137, i32 372, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 372} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{metadata !164, metadata !231}
!238 = metadata !{i32 786478, i32 0, metadata !138, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbEcvKbEv", metadata !137, i32 373, metadata !239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 373} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!240 = metadata !{metadata !180, metadata !231}
!241 = metadata !{i32 786478, i32 0, metadata !138, metadata !"delayed", metadata !"delayed", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE7delayedEv", metadata !137, i32 376, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 376} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!243 = metadata !{metadata !244, metadata !225}
!244 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_reference_type ]
!245 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_const_type ]
!246 = metadata !{i32 786434, metadata !135, metadata !"sc_signal_bool_deval", metadata !137, i32 255, i64 8, i64 8, i32 0, i32 0, null, metadata !247, i32 0, null, null} ; [ DW_TAG_class_type ]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786478, i32 0, metadata !246, metadata !"operator==", metadata !"operator==", metadata !"_ZNK7_ap_sc_7sc_core20sc_signal_bool_devaleqEb", metadata !137, i32 257, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 257} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !251, metadata !252, metadata !164}
!251 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_reference_type ]
!252 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !245} ; [ DW_TAG_pointer_type ]
!253 = metadata !{i32 786445, metadata !130, metadata !"reset", metadata !131, i32 13, i64 8, i64 8, i64 8, i32 0, metadata !138} ; [ DW_TAG_member ]
!254 = metadata !{i32 786445, metadata !130, metadata !"enable", metadata !131, i32 14, i64 8, i64 8, i64 16, i32 0, metadata !138} ; [ DW_TAG_member ]
!255 = metadata !{i32 786445, metadata !130, metadata !"mode", metadata !131, i32 15, i64 8, i64 8, i64 24, i32 0, metadata !138} ; [ DW_TAG_member ]
!256 = metadata !{i32 786445, metadata !130, metadata !"counter_out", metadata !131, i32 16, i64 16, i64 16, i64 32, i32 0, metadata !257} ; [ DW_TAG_member ]
!257 = metadata !{i32 786434, metadata !135, metadata !"sc_out<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 430, i64 16, i64 16, i32 0, i32 0, null, metadata !258, i32 0, null, metadata !1059} ; [ DW_TAG_class_type ]
!258 = metadata !{metadata !259, metadata !1061, metadata !1065, metadata !1068}
!259 = metadata !{i32 786460, metadata !257, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_inheritance ]
!260 = metadata !{i32 786434, metadata !135, metadata !"sc_inout<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 409, i64 16, i64 16, i32 0, i32 0, null, metadata !261, i32 0, null, metadata !1059} ; [ DW_TAG_class_type ]
!261 = metadata !{metadata !262, metadata !1029, metadata !1033, metadata !1036, metadata !1039, metadata !1046, metadata !1050, metadata !1056}
!262 = metadata !{i32 786460, metadata !260, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_inheritance ]
!263 = metadata !{i32 786434, metadata !135, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> > >", metadata !137, i32 268, i64 16, i64 16, i32 0, i32 0, null, metadata !264, i32 0, null, metadata !1027} ; [ DW_TAG_class_type ]
!264 = metadata !{metadata !265, metadata !266, metadata !1003, metadata !1007, metadata !1010, metadata !1013, metadata !1014, metadata !1017, metadata !1018, metadata !1022, metadata !1023}
!265 = metadata !{i32 786460, metadata !263, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_inheritance ]
!266 = metadata !{i32 786445, metadata !263, metadata !"m_if", metadata !137, i32 270, i64 16, i64 16, i64 0, i32 0, metadata !267} ; [ DW_TAG_member ]
!267 = metadata !{i32 786434, metadata !135, metadata !"sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 193, i64 16, i64 16, i32 0, i32 0, null, metadata !268, i32 0, null, metadata !988} ; [ DW_TAG_class_type ]
!268 = metadata !{metadata !269, metadata !990, metadata !994, metadata !1000}
!269 = metadata !{i32 786460, metadata !267, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_inheritance ]
!270 = metadata !{i32 786434, metadata !135, metadata !"sc_signal_in_if<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 172, i64 16, i64 16, i32 0, i32 0, null, metadata !271, i32 0, null, metadata !988} ; [ DW_TAG_class_type ]
!271 = metadata !{metadata !272, metadata !273, metadata !970, metadata !974, metadata !977, metadata !982, metadata !985}
!272 = metadata !{i32 786460, metadata !270, null, metadata !137, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_inheritance ]
!273 = metadata !{i32 786445, metadata !270, metadata !"Val", metadata !137, i32 174, i64 16, i64 16, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ]
!274 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_volatile_type ]
!275 = metadata !{i32 786434, metadata !276, metadata !"sc_int<12>", metadata !278, i32 132, i64 16, i64 16, i32 0, i32 0, null, metadata !279, i32 0, null, metadata !968} ; [ DW_TAG_class_type ]
!276 = metadata !{i32 786489, metadata !277, metadata !"sc_dt", metadata !278, i32 67} ; [ DW_TAG_namespace ]
!277 = metadata !{i32 786489, null, metadata !"_ap_sc_", metadata !278, i32 64} ; [ DW_TAG_namespace ]
!278 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/ap_sysc/ap_sc_dt.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!279 = metadata !{metadata !280, metadata !876, metadata !880, metadata !886, metadata !891, metadata !897, metadata !902, metadata !906, metadata !912, metadata !915, metadata !918, metadata !921, metadata !924, metadata !927, metadata !930, metadata !933, metadata !936, metadata !939, metadata !942, metadata !945, metadata !948, metadata !951, metadata !955, metadata !960, metadata !964, metadata !967}
!280 = metadata !{i32 786460, metadata !275, null, metadata !278, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_inheritance ]
!281 = metadata !{i32 786434, null, metadata !"ap_int_base<12, true, true>", metadata !282, i32 1495, i64 16, i64 16, i32 0, i32 0, null, metadata !283, i32 0, null, metadata !875} ; [ DW_TAG_class_type ]
!282 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!283 = metadata !{metadata !284, metadata !298, metadata !302, metadata !310, metadata !628, metadata !634, metadata !637, metadata !640, metadata !643, metadata !646, metadata !649, metadata !652, metadata !655, metadata !658, metadata !661, metadata !664, metadata !667, metadata !670, metadata !673, metadata !676, metadata !679, metadata !682, metadata !685, metadata !689, metadata !692, metadata !695, metadata !698, metadata !701, metadata !702, metadata !706, metadata !709, metadata !712, metadata !715, metadata !718, metadata !721, metadata !724, metadata !727, metadata !730, metadata !733, metadata !736, metadata !739, metadata !742, metadata !745, metadata !754, metadata !757, metadata !760, metadata !763, metadata !766, metadata !769, metadata !772, metadata !775, metadata !778, metadata !781, metadata !784, metadata !787, metadata !790, metadata !791, metadata !795, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !806, metadata !807, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815, metadata !818, metadata !819, metadata !820, metadata !823, metadata !824, metadata !827, metadata !828, metadata !834, metadata !840, metadata !841, metadata !844, metadata !845, metadata !849, metadata !850, metadata !851, metadata !852, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !869, metadata !872}
!284 = metadata !{i32 786460, metadata !281, null, metadata !282, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_inheritance ]
!285 = metadata !{i32 786434, null, metadata !"ssdm_int<12 + 1024 * 0, true>", metadata !286, i32 25, i64 16, i64 16, i32 0, i32 0, null, metadata !287, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!286 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!287 = metadata !{metadata !288, metadata !290}
!288 = metadata !{i32 786445, metadata !285, metadata !"V", metadata !286, i32 25, i64 12, i64 16, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ]
!289 = metadata !{i32 786468, null, metadata !"int12", null, i32 0, i64 12, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!290 = metadata !{i32 786478, i32 0, metadata !285, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !286, i32 25, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 25} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !293}
!293 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !285} ; [ DW_TAG_pointer_type ]
!294 = metadata !{metadata !295, metadata !297}
!295 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!296 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!297 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !164, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!298 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1536, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1536} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!300 = metadata !{null, metadata !301}
!301 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !281} ; [ DW_TAG_pointer_type ]
!302 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base<12, true>", metadata !"ap_int_base<12, true>", metadata !"", metadata !282, i32 1548, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !307, i32 0, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{null, metadata !301, metadata !305}
!305 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_reference_type ]
!306 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_const_type ]
!307 = metadata !{metadata !308, metadata !309}
!308 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!309 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !164, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!310 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !282, i32 1548, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{null, metadata !301, metadata !313}
!313 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !314} ; [ DW_TAG_reference_type ]
!314 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_const_type ]
!315 = metadata !{i32 786434, null, metadata !"ap_int_base<33, true, true>", metadata !282, i32 1495, i64 64, i64 64, i32 0, i32 0, null, metadata !316, i32 0, null, metadata !627} ; [ DW_TAG_class_type ]
!316 = metadata !{metadata !317, metadata !328, metadata !332, metadata !337, metadata !343, metadata !346, metadata !350, metadata !354, metadata !358, metadata !362, metadata !365, metadata !369, metadata !373, metadata !377, metadata !382, metadata !387, metadata !392, metadata !396, metadata !400, metadata !403, metadata !406, metadata !410, metadata !413, metadata !416, metadata !417, metadata !421, metadata !424, metadata !427, metadata !430, metadata !433, metadata !436, metadata !439, metadata !442, metadata !445, metadata !448, metadata !451, metadata !454, metadata !463, metadata !466, metadata !469, metadata !472, metadata !475, metadata !478, metadata !481, metadata !484, metadata !487, metadata !490, metadata !493, metadata !496, metadata !499, metadata !500, metadata !504, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !515, metadata !516, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !527, metadata !528, metadata !529, metadata !532, metadata !533, metadata !536, metadata !537, metadata !545, metadata !551, metadata !552, metadata !555, metadata !556, metadata !593, metadata !594, metadata !595, metadata !596, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !620, metadata !623, metadata !626}
!317 = metadata !{i32 786460, metadata !315, null, metadata !282, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_inheritance ]
!318 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !286, i32 67, i64 64, i64 64, i32 0, i32 0, null, metadata !319, i32 0, null, metadata !326} ; [ DW_TAG_class_type ]
!319 = metadata !{metadata !320, metadata !322}
!320 = metadata !{i32 786445, metadata !318, metadata !"V", metadata !286, i32 67, i64 33, i64 64, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ]
!321 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!322 = metadata !{i32 786478, i32 0, metadata !318, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !286, i32 67, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 67} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !325}
!325 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !318} ; [ DW_TAG_pointer_type ]
!326 = metadata !{metadata !327, metadata !297}
!327 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!328 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1536, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1536} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{null, metadata !331}
!331 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !315} ; [ DW_TAG_pointer_type ]
!332 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !282, i32 1548, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{null, metadata !331, metadata !313}
!335 = metadata !{metadata !336, metadata !309}
!336 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !296, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!337 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !282, i32 1551, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1551} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !331, metadata !340}
!340 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !341} ; [ DW_TAG_reference_type ]
!341 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_const_type ]
!342 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_volatile_type ]
!343 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1558, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1558} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !331, metadata !164}
!346 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1559, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1559} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{null, metadata !331, metadata !349}
!349 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!350 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1560, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1560} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{null, metadata !331, metadata !353}
!353 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!354 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1561, metadata !355, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1561} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!356 = metadata !{null, metadata !331, metadata !357}
!357 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!358 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1562, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1562} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{null, metadata !331, metadata !361}
!361 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!362 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1563, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1563} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{null, metadata !331, metadata !296}
!365 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1564, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1564} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !331, metadata !368}
!368 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!369 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1565, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1565} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{null, metadata !331, metadata !372}
!372 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!373 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1566, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1566} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{null, metadata !331, metadata !376}
!376 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!377 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1567, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1567} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !331, metadata !380}
!380 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !282, i32 167, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_typedef ]
!381 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!382 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1568, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1568} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!384 = metadata !{null, metadata !331, metadata !385}
!385 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !282, i32 166, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ]
!386 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!387 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1569, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1569} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{null, metadata !331, metadata !390}
!390 = metadata !{i32 786454, null, metadata !"half", metadata !282, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !391} ; [ DW_TAG_typedef ]
!391 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!392 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1570, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1570} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{null, metadata !331, metadata !395}
!395 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!396 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1571, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1571} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{null, metadata !331, metadata !399}
!399 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!400 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1598, metadata !401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1598} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!402 = metadata !{null, metadata !331, metadata !193}
!403 = metadata !{i32 786478, i32 0, metadata !315, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1605, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1605} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{null, metadata !331, metadata !193, metadata !349}
!406 = metadata !{i32 786478, i32 0, metadata !315, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE4readEv", metadata !282, i32 1632, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1632} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !315, metadata !409}
!409 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !342} ; [ DW_TAG_pointer_type ]
!410 = metadata !{i32 786478, i32 0, metadata !315, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE5writeERKS0_", metadata !282, i32 1638, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1638} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{null, metadata !409, metadata !313}
!413 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !282, i32 1650, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1650} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !409, metadata !340}
!416 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !282, i32 1659, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1659} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !282, i32 1682, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1682} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{metadata !420, metadata !331, metadata !340}
!420 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_reference_type ]
!421 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !282, i32 1687, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1687} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{metadata !420, metadata !331, metadata !313}
!424 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEPKc", metadata !282, i32 1691, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1691} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{metadata !420, metadata !331, metadata !193}
!427 = metadata !{i32 786478, i32 0, metadata !315, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEPKca", metadata !282, i32 1699, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1699} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{metadata !420, metadata !331, metadata !193, metadata !349}
!430 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEa", metadata !282, i32 1713, metadata !431, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1713} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!432 = metadata !{metadata !420, metadata !331, metadata !349}
!433 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEh", metadata !282, i32 1714, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1714} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{metadata !420, metadata !331, metadata !353}
!436 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEs", metadata !282, i32 1715, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1715} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{metadata !420, metadata !331, metadata !357}
!439 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEt", metadata !282, i32 1716, metadata !440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1716} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!441 = metadata !{metadata !420, metadata !331, metadata !361}
!442 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEi", metadata !282, i32 1717, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1717} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{metadata !420, metadata !331, metadata !296}
!445 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEj", metadata !282, i32 1718, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1718} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{metadata !420, metadata !331, metadata !368}
!448 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEx", metadata !282, i32 1719, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1719} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !420, metadata !331, metadata !380}
!451 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEy", metadata !282, i32 1720, metadata !452, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1720} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!453 = metadata !{metadata !420, metadata !331, metadata !385}
!454 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEcvxEv", metadata !282, i32 1758, metadata !455, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1758} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!456 = metadata !{metadata !457, metadata !462}
!457 = metadata !{i32 786454, metadata !315, metadata !"RetType", metadata !282, i32 1500, i64 0, i64 0, i64 0, i32 0, metadata !458} ; [ DW_TAG_typedef ]
!458 = metadata !{i32 786454, metadata !459, metadata !"Type", metadata !282, i32 1457, i64 0, i64 0, i64 0, i32 0, metadata !380} ; [ DW_TAG_typedef ]
!459 = metadata !{i32 786434, null, metadata !"retval<5, true>", metadata !282, i32 1456, i64 8, i64 8, i32 0, i32 0, null, metadata !206, i32 0, null, metadata !460} ; [ DW_TAG_class_type ]
!460 = metadata !{metadata !461, metadata !297}
!461 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!462 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !314} ; [ DW_TAG_pointer_type ]
!463 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_boolEv", metadata !282, i32 1764, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1764} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!465 = metadata !{metadata !164, metadata !462}
!466 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_ucharEv", metadata !282, i32 1765, metadata !467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1765} ; [ DW_TAG_subprogram ]
!467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!468 = metadata !{metadata !353, metadata !462}
!469 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_charEv", metadata !282, i32 1766, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1766} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{metadata !349, metadata !462}
!472 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_ushortEv", metadata !282, i32 1767, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1767} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{metadata !361, metadata !462}
!475 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_shortEv", metadata !282, i32 1768, metadata !476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1768} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!477 = metadata !{metadata !357, metadata !462}
!478 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6to_intEv", metadata !282, i32 1769, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1769} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{metadata !296, metadata !462}
!481 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_uintEv", metadata !282, i32 1770, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1770} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{metadata !368, metadata !462}
!484 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_longEv", metadata !282, i32 1771, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1771} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{metadata !372, metadata !462}
!487 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_ulongEv", metadata !282, i32 1772, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1772} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{metadata !376, metadata !462}
!490 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_int64Ev", metadata !282, i32 1773, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1773} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !380, metadata !462}
!493 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_uint64Ev", metadata !282, i32 1774, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1774} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{metadata !385, metadata !462}
!496 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_doubleEv", metadata !282, i32 1775, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1775} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!498 = metadata !{metadata !399, metadata !462}
!499 = metadata !{i32 786478, i32 0, metadata !315, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !282, i32 1789, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1789} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 786478, i32 0, metadata !315, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !282, i32 1790, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1790} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{metadata !296, metadata !503}
!503 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !341} ; [ DW_TAG_pointer_type ]
!504 = metadata !{i32 786478, i32 0, metadata !315, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7reverseEv", metadata !282, i32 1795, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1795} ; [ DW_TAG_subprogram ]
!505 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!506 = metadata !{metadata !420, metadata !331}
!507 = metadata !{i32 786478, i32 0, metadata !315, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6iszeroEv", metadata !282, i32 1801, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1801} ; [ DW_TAG_subprogram ]
!508 = metadata !{i32 786478, i32 0, metadata !315, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7is_zeroEv", metadata !282, i32 1806, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1806} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786478, i32 0, metadata !315, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4signEv", metadata !282, i32 1811, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1811} ; [ DW_TAG_subprogram ]
!510 = metadata !{i32 786478, i32 0, metadata !315, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5clearEi", metadata !282, i32 1819, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1819} ; [ DW_TAG_subprogram ]
!511 = metadata !{i32 786478, i32 0, metadata !315, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE6invertEi", metadata !282, i32 1825, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1825} ; [ DW_TAG_subprogram ]
!512 = metadata !{i32 786478, i32 0, metadata !315, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4testEi", metadata !282, i32 1833, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1833} ; [ DW_TAG_subprogram ]
!513 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !514, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!514 = metadata !{metadata !164, metadata !462, metadata !296}
!515 = metadata !{i32 786478, i32 0, metadata !315, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEi", metadata !282, i32 1839, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1839} ; [ DW_TAG_subprogram ]
!516 = metadata !{i32 786478, i32 0, metadata !315, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEib", metadata !282, i32 1845, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1845} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{null, metadata !331, metadata !296, metadata !164}
!519 = metadata !{i32 786478, i32 0, metadata !315, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7lrotateEi", metadata !282, i32 1852, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1852} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786478, i32 0, metadata !315, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7rrotateEi", metadata !282, i32 1861, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1861} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786478, i32 0, metadata !315, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7set_bitEib", metadata !282, i32 1869, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1869} ; [ DW_TAG_subprogram ]
!522 = metadata !{i32 786478, i32 0, metadata !315, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7get_bitEi", metadata !282, i32 1874, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1874} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 786478, i32 0, metadata !315, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5b_notEv", metadata !282, i32 1879, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1879} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 786478, i32 0, metadata !315, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE17countLeadingZerosEv", metadata !282, i32 1886, metadata !525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1886} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!526 = metadata !{metadata !296, metadata !331}
!527 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEv", metadata !282, i32 1943, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1943} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEv", metadata !282, i32 1947, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1947} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEi", metadata !282, i32 1955, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1955} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !314, metadata !331, metadata !296}
!532 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEi", metadata !282, i32 1960, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1960} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEpsEv", metadata !282, i32 1969, metadata !534, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1969} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !535, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!535 = metadata !{metadata !315, metadata !462}
!536 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEntEv", metadata !282, i32 1975, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1975} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEngEv", metadata !282, i32 1980, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1980} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !540, metadata !462}
!540 = metadata !{i32 786434, null, metadata !"ap_int_base<34, true, true>", metadata !541, i32 74, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !542} ; [ DW_TAG_class_type ]
!541 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/ap_common.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!542 = metadata !{metadata !543, metadata !297, metadata !544}
!543 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !296, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!544 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !164, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!545 = metadata !{i32 786478, i32 0, metadata !315, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !282, i32 2110, metadata !546, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2110} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!547 = metadata !{metadata !548, metadata !331, metadata !296, metadata !296}
!548 = metadata !{i32 786434, null, metadata !"ap_range_ref<33, true>", metadata !282, i32 967, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !549} ; [ DW_TAG_class_type ]
!549 = metadata !{metadata !550, metadata !297}
!550 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !296, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!551 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEclEii", metadata !282, i32 2116, metadata !546, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2116} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786478, i32 0, metadata !315, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !282, i32 2122, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2122} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !548, metadata !462, metadata !296, metadata !296}
!555 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEclEii", metadata !282, i32 2128, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2128} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEixEi", metadata !282, i32 2147, metadata !557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2147} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!558 = metadata !{metadata !559, metadata !331, metadata !296}
!559 = metadata !{i32 786434, null, metadata !"ap_bit_ref<33, true>", metadata !282, i32 1291, i64 128, i64 64, i32 0, i32 0, null, metadata !560, i32 0, null, metadata !549} ; [ DW_TAG_class_type ]
!560 = metadata !{metadata !561, metadata !562, metadata !563, metadata !569, metadata !573, metadata !577, metadata !578, metadata !582, metadata !585, metadata !586, metadata !589, metadata !590}
!561 = metadata !{i32 786445, metadata !559, metadata !"d_bv", metadata !282, i32 1292, i64 64, i64 64, i64 0, i32 0, metadata !420} ; [ DW_TAG_member ]
!562 = metadata !{i32 786445, metadata !559, metadata !"d_index", metadata !282, i32 1293, i64 32, i64 32, i64 64, i32 0, metadata !296} ; [ DW_TAG_member ]
!563 = metadata !{i32 786478, i32 0, metadata !559, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !282, i32 1296, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1296} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!565 = metadata !{null, metadata !566, metadata !567}
!566 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !559} ; [ DW_TAG_pointer_type ]
!567 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_reference_type ]
!568 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !559} ; [ DW_TAG_const_type ]
!569 = metadata !{i32 786478, i32 0, metadata !559, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !282, i32 1299, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1299} ; [ DW_TAG_subprogram ]
!570 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!571 = metadata !{null, metadata !566, metadata !572, metadata !296}
!572 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ]
!573 = metadata !{i32 786478, i32 0, metadata !559, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi33ELb1EEcvbEv", metadata !282, i32 1301, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1301} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!575 = metadata !{metadata !164, metadata !576}
!576 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !568} ; [ DW_TAG_pointer_type ]
!577 = metadata !{i32 786478, i32 0, metadata !559, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", metadata !282, i32 1302, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1302} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786478, i32 0, metadata !559, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEy", metadata !282, i32 1304, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1304} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!580 = metadata !{metadata !581, metadata !566, metadata !386}
!581 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !559} ; [ DW_TAG_reference_type ]
!582 = metadata !{i32 786478, i32 0, metadata !559, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSERKS0_", metadata !282, i32 1324, metadata !583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1324} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!584 = metadata !{metadata !581, metadata !566, metadata !567}
!585 = metadata !{i32 786478, i32 0, metadata !559, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi33ELb1EE3getEv", metadata !282, i32 1432, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1432} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786478, i32 0, metadata !559, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi33ELb1EE3getEv", metadata !282, i32 1436, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1436} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{metadata !164, metadata !566}
!589 = metadata !{i32 786478, i32 0, metadata !559, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi33ELb1EEcoEv", metadata !282, i32 1445, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1445} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786478, i32 0, metadata !559, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi33ELb1EE6lengthEv", metadata !282, i32 1450, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1450} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!592 = metadata !{metadata !296, metadata !576}
!593 = metadata !{i32 786478, i32 0, metadata !315, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEixEi", metadata !282, i32 2161, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2161} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786478, i32 0, metadata !315, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !282, i32 2175, metadata !557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2175} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 786478, i32 0, metadata !315, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !282, i32 2189, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2189} ; [ DW_TAG_subprogram ]
!596 = metadata !{i32 786478, i32 0, metadata !315, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !282, i32 2369, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2369} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!598 = metadata !{metadata !164, metadata !331}
!599 = metadata !{i32 786478, i32 0, metadata !315, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2372, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2372} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 786478, i32 0, metadata !315, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !282, i32 2375, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2375} ; [ DW_TAG_subprogram ]
!601 = metadata !{i32 786478, i32 0, metadata !315, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2378, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2378} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 786478, i32 0, metadata !315, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2381, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2381} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786478, i32 0, metadata !315, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2384, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2384} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 786478, i32 0, metadata !315, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !282, i32 2388, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2388} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786478, i32 0, metadata !315, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2391, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2391} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786478, i32 0, metadata !315, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !282, i32 2394, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2394} ; [ DW_TAG_subprogram ]
!607 = metadata !{i32 786478, i32 0, metadata !315, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2397, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2397} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786478, i32 0, metadata !315, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2400, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2400} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786478, i32 0, metadata !315, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2403, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2403} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !282, i32 2410, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2410} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!612 = metadata !{null, metadata !462, metadata !613, metadata !296, metadata !614, metadata !164}
!613 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ]
!614 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !282, i32 677, i64 5, i64 8, i32 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!615 = metadata !{metadata !616, metadata !617, metadata !618, metadata !619}
!616 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!617 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!618 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!619 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!620 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringE8BaseModeb", metadata !282, i32 2437, metadata !621, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2437} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!622 = metadata !{metadata !613, metadata !462, metadata !614, metadata !164}
!623 = metadata !{i32 786478, i32 0, metadata !315, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEab", metadata !282, i32 2441, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2441} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{metadata !613, metadata !462, metadata !349, metadata !164}
!626 = metadata !{i32 786478, i32 0, metadata !315, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !282, i32 1495, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !150, i32 1495} ; [ DW_TAG_subprogram ]
!627 = metadata !{metadata !550, metadata !297, metadata !544}
!628 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base<12, true>", metadata !"ap_int_base<12, true>", metadata !"", metadata !282, i32 1551, metadata !629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !307, i32 0, metadata !150, i32 1551} ; [ DW_TAG_subprogram ]
!629 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !630, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!630 = metadata !{null, metadata !301, metadata !631}
!631 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !632} ; [ DW_TAG_reference_type ]
!632 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !633} ; [ DW_TAG_const_type ]
!633 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_volatile_type ]
!634 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !282, i32 1551, metadata !635, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1551} ; [ DW_TAG_subprogram ]
!635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!636 = metadata !{null, metadata !301, metadata !340}
!637 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1558, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1558} ; [ DW_TAG_subprogram ]
!638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!639 = metadata !{null, metadata !301, metadata !164}
!640 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1559, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1559} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{null, metadata !301, metadata !349}
!643 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1560, metadata !644, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1560} ; [ DW_TAG_subprogram ]
!644 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!645 = metadata !{null, metadata !301, metadata !353}
!646 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1561, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1561} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!648 = metadata !{null, metadata !301, metadata !357}
!649 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1562, metadata !650, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1562} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!651 = metadata !{null, metadata !301, metadata !361}
!652 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1563, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1563} ; [ DW_TAG_subprogram ]
!653 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!654 = metadata !{null, metadata !301, metadata !296}
!655 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1564, metadata !656, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1564} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!657 = metadata !{null, metadata !301, metadata !368}
!658 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1565, metadata !659, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1565} ; [ DW_TAG_subprogram ]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!660 = metadata !{null, metadata !301, metadata !372}
!661 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1566, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1566} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{null, metadata !301, metadata !376}
!664 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1567, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1567} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{null, metadata !301, metadata !380}
!667 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1568, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1568} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{null, metadata !301, metadata !385}
!670 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1569, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1569} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{null, metadata !301, metadata !390}
!673 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1570, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1570} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{null, metadata !301, metadata !395}
!676 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1571, metadata !677, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1571} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!678 = metadata !{null, metadata !301, metadata !399}
!679 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1598, metadata !680, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1598} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !681, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!681 = metadata !{null, metadata !301, metadata !193}
!682 = metadata !{i32 786478, i32 0, metadata !281, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1605, metadata !683, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1605} ; [ DW_TAG_subprogram ]
!683 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!684 = metadata !{null, metadata !301, metadata !193, metadata !349}
!685 = metadata !{i32 786478, i32 0, metadata !281, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EE4readEv", metadata !282, i32 1632, metadata !686, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1632} ; [ DW_TAG_subprogram ]
!686 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !687, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!687 = metadata !{metadata !281, metadata !688}
!688 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !633} ; [ DW_TAG_pointer_type ]
!689 = metadata !{i32 786478, i32 0, metadata !281, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EE5writeERKS0_", metadata !282, i32 1638, metadata !690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1638} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!691 = metadata !{null, metadata !688, metadata !305}
!692 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=<33, true>", metadata !"operator=<33, true>", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSILi33ELb1EEEvRVKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1646, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1646} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{null, metadata !688, metadata !340}
!695 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSERVKS0_", metadata !282, i32 1650, metadata !696, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1650} ; [ DW_TAG_subprogram ]
!696 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !697, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!697 = metadata !{null, metadata !688, metadata !631}
!698 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=<33, true>", metadata !"operator=<33, true>", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSILi33ELb1EEEvRKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1655, metadata !699, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1655} ; [ DW_TAG_subprogram ]
!699 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !700, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!700 = metadata !{null, metadata !688, metadata !313}
!701 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSERKS0_", metadata !282, i32 1659, metadata !690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1659} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=<33, true>", metadata !"operator=<33, true>", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSILi33ELb1EEERS0_RVKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1671, metadata !703, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1671} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!704 = metadata !{metadata !705, metadata !301, metadata !340}
!705 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_reference_type ]
!706 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=<33, true>", metadata !"operator=<33, true>", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSILi33ELb1EEERS0_RKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1677, metadata !707, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, i32 0, metadata !150, i32 1677} ; [ DW_TAG_subprogram ]
!707 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !708, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!708 = metadata !{metadata !705, metadata !301, metadata !313}
!709 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSERVKS0_", metadata !282, i32 1682, metadata !710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1682} ; [ DW_TAG_subprogram ]
!710 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !711, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!711 = metadata !{metadata !705, metadata !301, metadata !631}
!712 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSERKS0_", metadata !282, i32 1687, metadata !713, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1687} ; [ DW_TAG_subprogram ]
!713 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !714, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!714 = metadata !{metadata !705, metadata !301, metadata !305}
!715 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEPKc", metadata !282, i32 1691, metadata !716, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1691} ; [ DW_TAG_subprogram ]
!716 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!717 = metadata !{metadata !705, metadata !301, metadata !193}
!718 = metadata !{i32 786478, i32 0, metadata !281, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEPKca", metadata !282, i32 1699, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1699} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!720 = metadata !{metadata !705, metadata !301, metadata !193, metadata !349}
!721 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEa", metadata !282, i32 1713, metadata !722, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1713} ; [ DW_TAG_subprogram ]
!722 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !723, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!723 = metadata !{metadata !705, metadata !301, metadata !349}
!724 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEh", metadata !282, i32 1714, metadata !725, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1714} ; [ DW_TAG_subprogram ]
!725 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !726, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!726 = metadata !{metadata !705, metadata !301, metadata !353}
!727 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEs", metadata !282, i32 1715, metadata !728, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1715} ; [ DW_TAG_subprogram ]
!728 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !729, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!729 = metadata !{metadata !705, metadata !301, metadata !357}
!730 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEt", metadata !282, i32 1716, metadata !731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1716} ; [ DW_TAG_subprogram ]
!731 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !732, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!732 = metadata !{metadata !705, metadata !301, metadata !361}
!733 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEi", metadata !282, i32 1717, metadata !734, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1717} ; [ DW_TAG_subprogram ]
!734 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !735, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!735 = metadata !{metadata !705, metadata !301, metadata !296}
!736 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEj", metadata !282, i32 1718, metadata !737, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1718} ; [ DW_TAG_subprogram ]
!737 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !738, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!738 = metadata !{metadata !705, metadata !301, metadata !368}
!739 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEx", metadata !282, i32 1719, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1719} ; [ DW_TAG_subprogram ]
!740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!741 = metadata !{metadata !705, metadata !301, metadata !380}
!742 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEy", metadata !282, i32 1720, metadata !743, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1720} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!744 = metadata !{metadata !705, metadata !301, metadata !385}
!745 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEcvsEv", metadata !282, i32 1758, metadata !746, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1758} ; [ DW_TAG_subprogram ]
!746 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !747, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!747 = metadata !{metadata !748, metadata !753}
!748 = metadata !{i32 786454, metadata !281, metadata !"RetType", metadata !282, i32 1500, i64 0, i64 0, i64 0, i32 0, metadata !749} ; [ DW_TAG_typedef ]
!749 = metadata !{i32 786454, metadata !750, metadata !"Type", metadata !282, i32 1471, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_typedef ]
!750 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !282, i32 1470, i64 8, i64 8, i32 0, i32 0, null, metadata !206, i32 0, null, metadata !751} ; [ DW_TAG_class_type ]
!751 = metadata !{metadata !752, metadata !297}
!752 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!753 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !306} ; [ DW_TAG_pointer_type ]
!754 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_boolEv", metadata !282, i32 1764, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1764} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !756, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!756 = metadata !{metadata !164, metadata !753}
!757 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_ucharEv", metadata !282, i32 1765, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1765} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{metadata !353, metadata !753}
!760 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_charEv", metadata !282, i32 1766, metadata !761, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1766} ; [ DW_TAG_subprogram ]
!761 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !762, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!762 = metadata !{metadata !349, metadata !753}
!763 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_ushortEv", metadata !282, i32 1767, metadata !764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1767} ; [ DW_TAG_subprogram ]
!764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!765 = metadata !{metadata !361, metadata !753}
!766 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_shortEv", metadata !282, i32 1768, metadata !767, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1768} ; [ DW_TAG_subprogram ]
!767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!768 = metadata !{metadata !357, metadata !753}
!769 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6to_intEv", metadata !282, i32 1769, metadata !770, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1769} ; [ DW_TAG_subprogram ]
!770 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !771, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!771 = metadata !{metadata !296, metadata !753}
!772 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_uintEv", metadata !282, i32 1770, metadata !773, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1770} ; [ DW_TAG_subprogram ]
!773 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !774, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!774 = metadata !{metadata !368, metadata !753}
!775 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_longEv", metadata !282, i32 1771, metadata !776, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1771} ; [ DW_TAG_subprogram ]
!776 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !777, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!777 = metadata !{metadata !372, metadata !753}
!778 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_ulongEv", metadata !282, i32 1772, metadata !779, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1772} ; [ DW_TAG_subprogram ]
!779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!780 = metadata !{metadata !376, metadata !753}
!781 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_int64Ev", metadata !282, i32 1773, metadata !782, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1773} ; [ DW_TAG_subprogram ]
!782 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !783, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!783 = metadata !{metadata !380, metadata !753}
!784 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_uint64Ev", metadata !282, i32 1774, metadata !785, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1774} ; [ DW_TAG_subprogram ]
!785 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !786, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!786 = metadata !{metadata !385, metadata !753}
!787 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_doubleEv", metadata !282, i32 1775, metadata !788, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1775} ; [ DW_TAG_subprogram ]
!788 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!789 = metadata !{metadata !399, metadata !753}
!790 = metadata !{i32 786478, i32 0, metadata !281, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6lengthEv", metadata !282, i32 1789, metadata !770, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1789} ; [ DW_TAG_subprogram ]
!791 = metadata !{i32 786478, i32 0, metadata !281, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi12ELb1ELb1EE6lengthEv", metadata !282, i32 1790, metadata !792, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1790} ; [ DW_TAG_subprogram ]
!792 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !793, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!793 = metadata !{metadata !296, metadata !794}
!794 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !632} ; [ DW_TAG_pointer_type ]
!795 = metadata !{i32 786478, i32 0, metadata !281, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7reverseEv", metadata !282, i32 1795, metadata !796, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1795} ; [ DW_TAG_subprogram ]
!796 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !797, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!797 = metadata !{metadata !705, metadata !301}
!798 = metadata !{i32 786478, i32 0, metadata !281, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6iszeroEv", metadata !282, i32 1801, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1801} ; [ DW_TAG_subprogram ]
!799 = metadata !{i32 786478, i32 0, metadata !281, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7is_zeroEv", metadata !282, i32 1806, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1806} ; [ DW_TAG_subprogram ]
!800 = metadata !{i32 786478, i32 0, metadata !281, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE4signEv", metadata !282, i32 1811, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1811} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786478, i32 0, metadata !281, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5clearEi", metadata !282, i32 1819, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1819} ; [ DW_TAG_subprogram ]
!802 = metadata !{i32 786478, i32 0, metadata !281, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE6invertEi", metadata !282, i32 1825, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1825} ; [ DW_TAG_subprogram ]
!803 = metadata !{i32 786478, i32 0, metadata !281, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE4testEi", metadata !282, i32 1833, metadata !804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1833} ; [ DW_TAG_subprogram ]
!804 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !805, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!805 = metadata !{metadata !164, metadata !753, metadata !296}
!806 = metadata !{i32 786478, i32 0, metadata !281, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEi", metadata !282, i32 1839, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1839} ; [ DW_TAG_subprogram ]
!807 = metadata !{i32 786478, i32 0, metadata !281, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEib", metadata !282, i32 1845, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1845} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{null, metadata !301, metadata !296, metadata !164}
!810 = metadata !{i32 786478, i32 0, metadata !281, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7lrotateEi", metadata !282, i32 1852, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1852} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 786478, i32 0, metadata !281, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7rrotateEi", metadata !282, i32 1861, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1861} ; [ DW_TAG_subprogram ]
!812 = metadata !{i32 786478, i32 0, metadata !281, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7set_bitEib", metadata !282, i32 1869, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1869} ; [ DW_TAG_subprogram ]
!813 = metadata !{i32 786478, i32 0, metadata !281, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7get_bitEi", metadata !282, i32 1874, metadata !804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1874} ; [ DW_TAG_subprogram ]
!814 = metadata !{i32 786478, i32 0, metadata !281, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5b_notEv", metadata !282, i32 1879, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1879} ; [ DW_TAG_subprogram ]
!815 = metadata !{i32 786478, i32 0, metadata !281, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE17countLeadingZerosEv", metadata !282, i32 1886, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1886} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!817 = metadata !{metadata !296, metadata !301}
!818 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEppEv", metadata !282, i32 1943, metadata !796, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1943} ; [ DW_TAG_subprogram ]
!819 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEmmEv", metadata !282, i32 1947, metadata !796, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1947} ; [ DW_TAG_subprogram ]
!820 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEppEi", metadata !282, i32 1955, metadata !821, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1955} ; [ DW_TAG_subprogram ]
!821 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !822, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!822 = metadata !{metadata !306, metadata !301, metadata !296}
!823 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEmmEi", metadata !282, i32 1960, metadata !821, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1960} ; [ DW_TAG_subprogram ]
!824 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEpsEv", metadata !282, i32 1969, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1969} ; [ DW_TAG_subprogram ]
!825 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !826, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!826 = metadata !{metadata !281, metadata !753}
!827 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEntEv", metadata !282, i32 1975, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1975} ; [ DW_TAG_subprogram ]
!828 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEngEv", metadata !282, i32 1980, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1980} ; [ DW_TAG_subprogram ]
!829 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!830 = metadata !{metadata !831, metadata !753}
!831 = metadata !{i32 786434, null, metadata !"ap_int_base<13, true, true>", metadata !541, i32 74, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !832} ; [ DW_TAG_class_type ]
!832 = metadata !{metadata !833, metadata !297, metadata !544}
!833 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !296, i64 13, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!834 = metadata !{i32 786478, i32 0, metadata !281, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5rangeEii", metadata !282, i32 2110, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2110} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!836 = metadata !{metadata !837, metadata !301, metadata !296, metadata !296}
!837 = metadata !{i32 786434, null, metadata !"ap_range_ref<12, true>", metadata !282, i32 967, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !838} ; [ DW_TAG_class_type ]
!838 = metadata !{metadata !839, metadata !297}
!839 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!840 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEclEii", metadata !282, i32 2116, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2116} ; [ DW_TAG_subprogram ]
!841 = metadata !{i32 786478, i32 0, metadata !281, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE5rangeEii", metadata !282, i32 2122, metadata !842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2122} ; [ DW_TAG_subprogram ]
!842 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !843, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!843 = metadata !{metadata !837, metadata !753, metadata !296, metadata !296}
!844 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEclEii", metadata !282, i32 2128, metadata !842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2128} ; [ DW_TAG_subprogram ]
!845 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEixEi", metadata !282, i32 2147, metadata !846, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2147} ; [ DW_TAG_subprogram ]
!846 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !847, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!847 = metadata !{metadata !848, metadata !301, metadata !296}
!848 = metadata !{i32 786434, null, metadata !"ap_bit_ref<12, true>", metadata !282, i32 1291, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !838} ; [ DW_TAG_class_type ]
!849 = metadata !{i32 786478, i32 0, metadata !281, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEixEi", metadata !282, i32 2161, metadata !804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2161} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786478, i32 0, metadata !281, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3bitEi", metadata !282, i32 2175, metadata !846, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2175} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786478, i32 0, metadata !281, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE3bitEi", metadata !282, i32 2189, metadata !804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2189} ; [ DW_TAG_subprogram ]
!852 = metadata !{i32 786478, i32 0, metadata !281, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10and_reduceEv", metadata !282, i32 2369, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2369} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!854 = metadata !{metadata !164, metadata !301}
!855 = metadata !{i32 786478, i32 0, metadata !281, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2372, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2372} ; [ DW_TAG_subprogram ]
!856 = metadata !{i32 786478, i32 0, metadata !281, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE9or_reduceEv", metadata !282, i32 2375, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2375} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786478, i32 0, metadata !281, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2378, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2378} ; [ DW_TAG_subprogram ]
!858 = metadata !{i32 786478, i32 0, metadata !281, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2381, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2381} ; [ DW_TAG_subprogram ]
!859 = metadata !{i32 786478, i32 0, metadata !281, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2384, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2384} ; [ DW_TAG_subprogram ]
!860 = metadata !{i32 786478, i32 0, metadata !281, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10and_reduceEv", metadata !282, i32 2388, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2388} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786478, i32 0, metadata !281, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2391, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2391} ; [ DW_TAG_subprogram ]
!862 = metadata !{i32 786478, i32 0, metadata !281, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9or_reduceEv", metadata !282, i32 2394, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2394} ; [ DW_TAG_subprogram ]
!863 = metadata !{i32 786478, i32 0, metadata !281, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2397, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2397} ; [ DW_TAG_subprogram ]
!864 = metadata !{i32 786478, i32 0, metadata !281, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2400, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2400} ; [ DW_TAG_subprogram ]
!865 = metadata !{i32 786478, i32 0, metadata !281, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2403, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2403} ; [ DW_TAG_subprogram ]
!866 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !282, i32 2410, metadata !867, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2410} ; [ DW_TAG_subprogram ]
!867 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !868, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!868 = metadata !{null, metadata !753, metadata !613, metadata !296, metadata !614, metadata !164}
!869 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringE8BaseModeb", metadata !282, i32 2437, metadata !870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2437} ; [ DW_TAG_subprogram ]
!870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!871 = metadata !{metadata !613, metadata !753, metadata !614, metadata !164}
!872 = metadata !{i32 786478, i32 0, metadata !281, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringEab", metadata !282, i32 2441, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2441} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!874 = metadata !{metadata !613, metadata !753, metadata !349, metadata !164}
!875 = metadata !{metadata !839, metadata !297, metadata !544}
!876 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 134, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 134} ; [ DW_TAG_subprogram ]
!877 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !878, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!878 = metadata !{null, metadata !879}
!879 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !275} ; [ DW_TAG_pointer_type ]
!880 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 141, metadata !881, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 141} ; [ DW_TAG_subprogram ]
!881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!882 = metadata !{null, metadata !879, metadata !883}
!883 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !884} ; [ DW_TAG_reference_type ]
!884 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !885} ; [ DW_TAG_const_type ]
!885 = metadata !{i32 786454, metadata !275, metadata !"sc_int_base", metadata !278, i32 133, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ]
!886 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 142, metadata !887, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 142} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!888 = metadata !{null, metadata !879, metadata !889}
!889 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !890} ; [ DW_TAG_reference_type ]
!890 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !885} ; [ DW_TAG_volatile_type ]
!891 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int<12, true>", metadata !"sc_int<12, true>", metadata !"", metadata !278, i32 147, metadata !892, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !894, i32 0, metadata !150, i32 147} ; [ DW_TAG_subprogram ]
!892 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !893, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!893 = metadata !{null, metadata !879, metadata !305}
!894 = metadata !{metadata !895, metadata !896}
!895 = metadata !{i32 786480, null, metadata !"_SC_W2", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!896 = metadata !{i32 786480, null, metadata !"_SC_S2", metadata !164, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!897 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int<33, true>", metadata !"sc_int<33, true>", metadata !"", metadata !278, i32 147, metadata !898, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !900, i32 0, metadata !150, i32 147} ; [ DW_TAG_subprogram ]
!898 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !899, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!899 = metadata !{null, metadata !879, metadata !313}
!900 = metadata !{metadata !901, metadata !896}
!901 = metadata !{i32 786480, null, metadata !"_SC_W2", metadata !296, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!902 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int<true>", metadata !"sc_int<true>", metadata !"", metadata !278, i32 150, metadata !903, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !905, i32 0, metadata !150, i32 150} ; [ DW_TAG_subprogram ]
!903 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!904 = metadata !{null, metadata !879, metadata !705}
!905 = metadata !{metadata !896}
!906 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int<12>", metadata !"sc_int<12>", metadata !"", metadata !278, i32 177, metadata !907, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !911, i32 0, metadata !150, i32 177} ; [ DW_TAG_subprogram ]
!907 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !908, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!908 = metadata !{null, metadata !879, metadata !909}
!909 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !910} ; [ DW_TAG_reference_type ]
!910 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_const_type ]
!911 = metadata !{metadata !895}
!912 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 199, metadata !913, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 199} ; [ DW_TAG_subprogram ]
!913 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !914, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!914 = metadata !{null, metadata !879, metadata !164}
!915 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 200, metadata !916, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 200} ; [ DW_TAG_subprogram ]
!916 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !917, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!917 = metadata !{null, metadata !879, metadata !349}
!918 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 201, metadata !919, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 201} ; [ DW_TAG_subprogram ]
!919 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !920, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!920 = metadata !{null, metadata !879, metadata !353}
!921 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 202, metadata !922, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 202} ; [ DW_TAG_subprogram ]
!922 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !923, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!923 = metadata !{null, metadata !879, metadata !357}
!924 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 203, metadata !925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 203} ; [ DW_TAG_subprogram ]
!925 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !926, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!926 = metadata !{null, metadata !879, metadata !361}
!927 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 204, metadata !928, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 204} ; [ DW_TAG_subprogram ]
!928 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !929, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!929 = metadata !{null, metadata !879, metadata !296}
!930 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 205, metadata !931, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 205} ; [ DW_TAG_subprogram ]
!931 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !932, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!932 = metadata !{null, metadata !879, metadata !368}
!933 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 206, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 206} ; [ DW_TAG_subprogram ]
!934 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !935, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!935 = metadata !{null, metadata !879, metadata !372}
!936 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 207, metadata !937, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 207} ; [ DW_TAG_subprogram ]
!937 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !938, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!938 = metadata !{null, metadata !879, metadata !376}
!939 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 208, metadata !940, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 208} ; [ DW_TAG_subprogram ]
!940 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !941, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!941 = metadata !{null, metadata !879, metadata !380}
!942 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 209, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 209} ; [ DW_TAG_subprogram ]
!943 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !944, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!944 = metadata !{null, metadata !879, metadata !385}
!945 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 210, metadata !946, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 210} ; [ DW_TAG_subprogram ]
!946 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !947, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!947 = metadata !{null, metadata !879, metadata !399}
!948 = metadata !{i32 786478, i32 0, metadata !275, metadata !"sc_int", metadata !"sc_int", metadata !"", metadata !278, i32 211, metadata !949, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 211} ; [ DW_TAG_subprogram ]
!949 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !950, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!950 = metadata !{null, metadata !879, metadata !193}
!951 = metadata !{i32 786478, i32 0, metadata !275, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7_ap_sc_5sc_dt6sc_intILi12EEaSERKS2_", metadata !278, i32 224, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 224} ; [ DW_TAG_subprogram ]
!952 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !953, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!953 = metadata !{null, metadata !954, metadata !909}
!954 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !274} ; [ DW_TAG_pointer_type ]
!955 = metadata !{i32 786478, i32 0, metadata !275, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7_ap_sc_5sc_dt6sc_intILi12EEaSERVKS2_", metadata !278, i32 229, metadata !956, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 229} ; [ DW_TAG_subprogram ]
!956 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !957, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!957 = metadata !{null, metadata !954, metadata !958}
!958 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !959} ; [ DW_TAG_reference_type ]
!959 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_const_type ]
!960 = metadata !{i32 786478, i32 0, metadata !275, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEaSERVKS2_", metadata !278, i32 233, metadata !961, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 233} ; [ DW_TAG_subprogram ]
!961 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !962, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!962 = metadata !{metadata !963, metadata !879, metadata !958}
!963 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_reference_type ]
!964 = metadata !{i32 786478, i32 0, metadata !275, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEaSERKS2_", metadata !278, i32 237, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 237} ; [ DW_TAG_subprogram ]
!965 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!966 = metadata !{metadata !963, metadata !879, metadata !909}
!967 = metadata !{i32 786478, i32 0, metadata !275, metadata !"~sc_int", metadata !"~sc_int", metadata !"", metadata !278, i32 132, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !150, i32 132} ; [ DW_TAG_subprogram ]
!968 = metadata !{metadata !969}
!969 = metadata !{i32 786480, null, metadata !"_SC_W", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!970 = metadata !{i32 786478, i32 0, metadata !270, metadata !"sc_signal_in_if", metadata !"sc_signal_in_if", metadata !"", metadata !137, i32 176, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 176} ; [ DW_TAG_subprogram ]
!971 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!972 = metadata !{null, metadata !973}
!973 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !270} ; [ DW_TAG_pointer_type ]
!974 = metadata !{i32 786478, i32 0, metadata !270, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt6sc_intILi12EEEE4readEv", metadata !137, i32 180, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 180} ; [ DW_TAG_subprogram ]
!975 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!976 = metadata !{metadata !275, metadata !973}
!977 = metadata !{i32 786478, i32 0, metadata !270, metadata !"read", metadata !"read", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt6sc_intILi12EEEE4readEv", metadata !137, i32 181, metadata !978, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 181} ; [ DW_TAG_subprogram ]
!978 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !979, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!979 = metadata !{metadata !275, metadata !980}
!980 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !981} ; [ DW_TAG_pointer_type ]
!981 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_const_type ]
!982 = metadata !{i32 786478, i32 0, metadata !270, metadata !"operator sc_int", metadata !"operator sc_int", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt6sc_intILi12EEEEcvKS4_Ev", metadata !137, i32 187, metadata !983, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 187} ; [ DW_TAG_subprogram ]
!983 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!984 = metadata !{metadata !910, metadata !973}
!985 = metadata !{i32 786478, i32 0, metadata !270, metadata !"operator sc_int", metadata !"operator sc_int", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt6sc_intILi12EEEEcvKS4_Ev", metadata !137, i32 188, metadata !986, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 188} ; [ DW_TAG_subprogram ]
!986 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!987 = metadata !{metadata !910, metadata !980}
!988 = metadata !{metadata !989}
!989 = metadata !{i32 786479, null, metadata !"T", metadata !275, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!990 = metadata !{i32 786478, i32 0, metadata !267, metadata !"sc_signal_inout_if", metadata !"sc_signal_inout_if", metadata !"", metadata !137, i32 197, metadata !991, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 197} ; [ DW_TAG_subprogram ]
!991 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !992, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!992 = metadata !{null, metadata !993}
!993 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !267} ; [ DW_TAG_pointer_type ]
!994 = metadata !{i32 786478, i32 0, metadata !267, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEaSERKS5_", metadata !137, i32 199, metadata !995, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 199} ; [ DW_TAG_subprogram ]
!995 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !996, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!996 = metadata !{metadata !997, metadata !993, metadata !998}
!997 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_reference_type ]
!998 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !999} ; [ DW_TAG_reference_type ]
!999 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_const_type ]
!1000 = metadata !{i32 786478, i32 0, metadata !267, metadata !"operator=<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"operator=<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEaSIS5_EERS5_RKT_", metadata !137, i32 211, metadata !995, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1001, i32 0, metadata !150, i32 211} ; [ DW_TAG_subprogram ]
!1001 = metadata !{metadata !1002}
!1002 = metadata !{i32 786479, null, metadata !"_T2", metadata !267, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1003 = metadata !{i32 786478, i32 0, metadata !263, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !137, i32 272, metadata !1004, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 272} ; [ DW_TAG_subprogram ]
!1004 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1005, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1005 = metadata !{null, metadata !1006}
!1006 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !263} ; [ DW_TAG_pointer_type ]
!1007 = metadata !{i32 786478, i32 0, metadata !263, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !137, i32 273, metadata !1008, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 273} ; [ DW_TAG_subprogram ]
!1008 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1009, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1009 = metadata !{null, metadata !1006, metadata !193}
!1010 = metadata !{i32 786478, i32 0, metadata !263, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEE4bindERS6_", metadata !137, i32 277, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 277} ; [ DW_TAG_subprogram ]
!1011 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1012, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1012 = metadata !{null, metadata !1006, metadata !997}
!1013 = metadata !{i32 786478, i32 0, metadata !263, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEEclERS6_", metadata !137, i32 280, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 280} ; [ DW_TAG_subprogram ]
!1014 = metadata !{i32 786478, i32 0, metadata !263, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEE4bindERNS0_15sc_prim_channelE", metadata !137, i32 281, metadata !1015, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 281} ; [ DW_TAG_subprogram ]
!1015 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1016, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1016 = metadata !{null, metadata !1006, metadata !204}
!1017 = metadata !{i32 786478, i32 0, metadata !263, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEEclERNS0_15sc_prim_channelE", metadata !137, i32 284, metadata !1015, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 284} ; [ DW_TAG_subprogram ]
!1018 = metadata !{i32 786478, i32 0, metadata !263, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEE4bindERS7_", metadata !137, i32 285, metadata !1019, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 285} ; [ DW_TAG_subprogram ]
!1019 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1020, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1020 = metadata !{null, metadata !1006, metadata !1021}
!1021 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_reference_type ]
!1022 = metadata !{i32 786478, i32 0, metadata !263, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEEclERS7_", metadata !137, i32 286, metadata !1019, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 286} ; [ DW_TAG_subprogram ]
!1023 = metadata !{i32 786478, i32 0, metadata !263, metadata !"operator->", metadata !"operator->", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEEEEptEv", metadata !137, i32 288, metadata !1024, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 288} ; [ DW_TAG_subprogram ]
!1024 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1025, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1025 = metadata !{metadata !1026, metadata !1006}
!1026 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ]
!1027 = metadata !{metadata !1028}
!1028 = metadata !{i32 786479, null, metadata !"IF", metadata !267, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1029 = metadata !{i32 786478, i32 0, metadata !260, metadata !"sc_inout", metadata !"sc_inout", metadata !"", metadata !137, i32 413, metadata !1030, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 413} ; [ DW_TAG_subprogram ]
!1030 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1031, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1031 = metadata !{null, metadata !1032}
!1032 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !260} ; [ DW_TAG_pointer_type ]
!1033 = metadata !{i32 786478, i32 0, metadata !260, metadata !"sc_inout", metadata !"sc_inout", metadata !"", metadata !137, i32 414, metadata !1034, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 414} ; [ DW_TAG_subprogram ]
!1034 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1035, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1035 = metadata !{null, metadata !1032, metadata !193}
!1036 = metadata !{i32 786478, i32 0, metadata !260, metadata !"write", metadata !"write", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEE5writeERKS4_", metadata !137, i32 417, metadata !1037, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 417} ; [ DW_TAG_subprogram ]
!1037 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1038, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1038 = metadata !{null, metadata !1032, metadata !909}
!1039 = metadata !{i32 786478, i32 0, metadata !260, metadata !"operator=<_ap_sc_::sc_core::sc_inout<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"operator=<_ap_sc_::sc_core::sc_inout<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEEaSIS5_EEvRKT_", metadata !137, i32 419, metadata !1040, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1044, i32 0, metadata !150, i32 419} ; [ DW_TAG_subprogram ]
!1040 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1041, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1041 = metadata !{null, metadata !1032, metadata !1042}
!1042 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1043} ; [ DW_TAG_reference_type ]
!1043 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_const_type ]
!1044 = metadata !{metadata !1045}
!1045 = metadata !{i32 786479, null, metadata !"_T2", metadata !260, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1046 = metadata !{i32 786478, i32 0, metadata !260, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEE4readEv", metadata !137, i32 421, metadata !1047, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 421} ; [ DW_TAG_subprogram ]
!1047 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1048, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1048 = metadata !{metadata !1049, metadata !1032}
!1049 = metadata !{i32 786454, metadata !260, metadata !"data_type", metadata !137, i32 411, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ]
!1050 = metadata !{i32 786478, i32 0, metadata !260, metadata !"operator const struct _ap_sc_::sc_dt::sc_int<12> &", metadata !"operator const struct _ap_sc_::sc_dt::sc_int<12> &", metadata !"_ZNK7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEEcvRKS4_Ev", metadata !137, i32 422, metadata !1051, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 422} ; [ DW_TAG_subprogram ]
!1051 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1052 = metadata !{metadata !1053, metadata !1055}
!1053 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1054} ; [ DW_TAG_reference_type ]
!1054 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1049} ; [ DW_TAG_const_type ]
!1055 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1043} ; [ DW_TAG_pointer_type ]
!1056 = metadata !{i32 786478, i32 0, metadata !260, metadata !"operator sc_int", metadata !"operator sc_int", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEEcvKS4_Ev", metadata !137, i32 425, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 425} ; [ DW_TAG_subprogram ]
!1057 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1058, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1058 = metadata !{metadata !1054, metadata !1032}
!1059 = metadata !{metadata !1060}
!1060 = metadata !{i32 786479, null, metadata !"_T", metadata !275, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1061 = metadata !{i32 786478, i32 0, metadata !257, metadata !"sc_out", metadata !"sc_out", metadata !"", metadata !137, i32 433, metadata !1062, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 433} ; [ DW_TAG_subprogram ]
!1062 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1063, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1063 = metadata !{null, metadata !1064}
!1064 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !257} ; [ DW_TAG_pointer_type ]
!1065 = metadata !{i32 786478, i32 0, metadata !257, metadata !"sc_out", metadata !"sc_out", metadata !"", metadata !137, i32 434, metadata !1066, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 434} ; [ DW_TAG_subprogram ]
!1066 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1067 = metadata !{null, metadata !1064, metadata !193}
!1068 = metadata !{i32 786478, i32 0, metadata !257, metadata !"operator=<_ap_sc_::sc_core::sc_out<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"operator=<_ap_sc_::sc_core::sc_out<_ap_sc_::sc_dt::sc_int<12> > >", metadata !"_ZN7_ap_sc_7sc_core6sc_outINS_5sc_dt6sc_intILi12EEEEaSIS5_EEvRKT_", metadata !137, i32 436, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1073, i32 0, metadata !150, i32 436} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1070 = metadata !{null, metadata !1064, metadata !1071}
!1071 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1072} ; [ DW_TAG_reference_type ]
!1072 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_const_type ]
!1073 = metadata !{metadata !1074}
!1074 = metadata !{i32 786479, null, metadata !"_T2", metadata !257, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1075 = metadata !{i32 786445, metadata !130, metadata !"count", metadata !131, i32 17, i64 16, i64 16, i64 48, i32 0, metadata !275} ; [ DW_TAG_member ]
!1076 = metadata !{i32 786478, i32 0, metadata !130, metadata !"incr_count", metadata !"incr_count", metadata !"_ZN21bidirectional_counter10incr_countEv", metadata !131, i32 18, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 18} ; [ DW_TAG_subprogram ]
!1077 = metadata !{i32 786478, i32 0, metadata !130, metadata !"decr_count", metadata !"decr_count", metadata !"_ZN21bidirectional_counter10decr_countEv", metadata !131, i32 19, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 19} ; [ DW_TAG_subprogram ]
!1078 = metadata !{i32 786478, i32 0, metadata !130, metadata !"mode_choice", metadata !"mode_choice", metadata !"_ZN21bidirectional_counter11mode_choiceEv", metadata !131, i32 20, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 20} ; [ DW_TAG_subprogram ]
!1079 = metadata !{i32 786478, i32 0, metadata !130, metadata !"bidirectional_counter", metadata !"bidirectional_counter", metadata !"", metadata !131, i32 21, metadata !1080, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 21} ; [ DW_TAG_subprogram ]
!1080 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1081, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1081 = metadata !{null, metadata !129, metadata !1082}
!1082 = metadata !{i32 786434, metadata !135, metadata !"sc_module_name", metadata !137, i32 581, i64 8, i64 8, i32 0, i32 0, null, metadata !1083, i32 0, null, null} ; [ DW_TAG_class_type ]
!1083 = metadata !{metadata !1084, metadata !1088}
!1084 = metadata !{i32 786478, i32 0, metadata !1082, metadata !"sc_module_name", metadata !"sc_module_name", metadata !"", metadata !137, i32 584, metadata !1085, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 584} ; [ DW_TAG_subprogram ]
!1085 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1086, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1086 = metadata !{null, metadata !1087, metadata !193}
!1087 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1082} ; [ DW_TAG_pointer_type ]
!1088 = metadata !{i32 786478, i32 0, metadata !1082, metadata !"sc_module_name", metadata !"sc_module_name", metadata !"", metadata !137, i32 585, metadata !1089, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 585} ; [ DW_TAG_subprogram ]
!1089 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1090, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1090 = metadata !{null, metadata !1087, metadata !1091}
!1091 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1092} ; [ DW_TAG_reference_type ]
!1092 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1082} ; [ DW_TAG_const_type ]
!1093 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ]
!1094 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1095} ; [ DW_TAG_pointer_type ]
!1095 = metadata !{i32 786438, null, metadata !"bidirectional_counter", metadata !131, i32 10, i64 8, i64 16, i32 0, i32 0, null, metadata !1096, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1096 = metadata !{metadata !1097}
!1097 = metadata !{i32 786438, metadata !135, metadata !"sc_in<bool>", metadata !137, i32 357, i64 8, i64 8, i32 0, i32 0, null, metadata !1098, i32 0, null, metadata !184} ; [ DW_TAG_class_field_type ]
!1098 = metadata !{metadata !1099}
!1099 = metadata !{i32 786438, metadata !135, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >", metadata !137, i32 268, i64 8, i64 8, i32 0, i32 0, null, metadata !1100, i32 0, null, metadata !217} ; [ DW_TAG_class_field_type ]
!1100 = metadata !{metadata !1101}
!1101 = metadata !{i32 786438, metadata !135, metadata !"sc_signal_in_if<bool>", metadata !137, i32 172, i64 8, i64 8, i32 0, i32 0, null, metadata !1102, i32 0, null, metadata !184} ; [ DW_TAG_class_field_type ]
!1102 = metadata !{metadata !162}
!1103 = metadata !{i32 41, i32 29, metadata !125, null}
!1104 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.reset.m_if.Val", null, i32 41, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1105 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.enable.m_if.Val", null, i32 41, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1106 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.mode.m_if.Val", null, i32 41, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1107 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.counter_out.m_if.Val.V", null, i32 41, metadata !1108, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1108 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1109} ; [ DW_TAG_pointer_type ]
!1109 = metadata !{i32 786438, null, metadata !"bidirectional_counter", metadata !131, i32 10, i64 12, i64 16, i32 0, i32 0, null, metadata !1110, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1110 = metadata !{metadata !1111}
!1111 = metadata !{i32 786438, metadata !135, metadata !"sc_out<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 430, i64 12, i64 16, i32 0, i32 0, null, metadata !1112, i32 0, null, metadata !1059} ; [ DW_TAG_class_field_type ]
!1112 = metadata !{metadata !1113}
!1113 = metadata !{i32 786438, metadata !135, metadata !"sc_inout<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 409, i64 12, i64 16, i32 0, i32 0, null, metadata !1114, i32 0, null, metadata !1059} ; [ DW_TAG_class_field_type ]
!1114 = metadata !{metadata !1115}
!1115 = metadata !{i32 786438, metadata !135, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> > >", metadata !137, i32 268, i64 12, i64 16, i32 0, i32 0, null, metadata !1116, i32 0, null, metadata !1027} ; [ DW_TAG_class_field_type ]
!1116 = metadata !{metadata !1117}
!1117 = metadata !{i32 786438, metadata !135, metadata !"sc_signal_inout_if<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 193, i64 12, i64 16, i32 0, i32 0, null, metadata !1118, i32 0, null, metadata !988} ; [ DW_TAG_class_field_type ]
!1118 = metadata !{metadata !1119}
!1119 = metadata !{i32 786438, metadata !135, metadata !"sc_signal_in_if<_ap_sc_::sc_dt::sc_int<12> >", metadata !137, i32 172, i64 12, i64 16, i32 0, i32 0, null, metadata !1120, i32 0, null, metadata !988} ; [ DW_TAG_class_field_type ]
!1120 = metadata !{metadata !1121}
!1121 = metadata !{i32 786438, metadata !276, metadata !"sc_int<12>", metadata !278, i32 132, i64 12, i64 16, i32 0, i32 0, null, metadata !1122, i32 0, null, metadata !968} ; [ DW_TAG_class_field_type ]
!1122 = metadata !{metadata !1123}
!1123 = metadata !{i32 786438, null, metadata !"ap_int_base<12, true, true>", metadata !282, i32 1495, i64 12, i64 16, i32 0, i32 0, null, metadata !1124, i32 0, null, metadata !875} ; [ DW_TAG_class_field_type ]
!1124 = metadata !{metadata !1125}
!1125 = metadata !{i32 786438, null, metadata !"ssdm_int<12 + 1024 * 0, true>", metadata !286, i32 25, i64 12, i64 16, i32 0, i32 0, null, metadata !1126, i32 0, null, metadata !294} ; [ DW_TAG_class_field_type ]
!1126 = metadata !{metadata !288}
!1127 = metadata !{i32 790531, metadata !124, metadata !"bidirectional_counter.count.V", null, i32 41, metadata !1128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1129} ; [ DW_TAG_pointer_type ]
!1129 = metadata !{i32 786438, null, metadata !"bidirectional_counter", metadata !131, i32 10, i64 12, i64 16, i32 0, i32 0, null, metadata !1120, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1130 = metadata !{i32 42, i32 4, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !125, i32 42, i32 1, metadata !126, i32 6} ; [ DW_TAG_lexical_block ]
!1132 = metadata !{i32 43, i32 3, metadata !1131, null}
!1133 = metadata !{i32 44, i32 3, metadata !1131, null}
!1134 = metadata !{i32 45, i32 3, metadata !1131, null}
!1135 = metadata !{i32 46, i32 3, metadata !1131, null}
!1136 = metadata !{i32 47, i32 3, metadata !1131, null}
!1137 = metadata !{i32 47, i32 170, metadata !1131, null}
!1138 = metadata !{i32 47, i32 243, metadata !1131, null}
!1139 = metadata !{i32 786689, metadata !1140, metadata !"P", metadata !1141, i32 16777382, metadata !1144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1140 = metadata !{i32 786478, i32 0, metadata !1141, metadata !"_ssdm_op_READ<bool>", metadata !"_ssdm_op_READ<bool>", metadata !"_Z13_ssdm_op_READIbET_RVS0_", metadata !1141, i32 166, metadata !1142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1145, null, metadata !150, i32 166} ; [ DW_TAG_subprogram ]
!1141 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/ap_sysc/ap_sc_extras.h", metadata !"/home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4", null} ; [ DW_TAG_file_type ]
!1142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1143 = metadata !{metadata !164, metadata !1144}
!1144 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_reference_type ]
!1145 = metadata !{metadata !1146}
!1146 = metadata !{i32 786479, null, metadata !"T1", metadata !164, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1147 = metadata !{i32 166, i32 90, metadata !1140, metadata !1148}
!1148 = metadata !{i32 180, i32 66, metadata !1149, metadata !1151}
!1149 = metadata !{i32 786443, metadata !1150, i32 180, i32 56, metadata !137, i32 50} ; [ DW_TAG_lexical_block ]
!1150 = metadata !{i32 786478, i32 0, metadata !135, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !137, i32 180, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !169, metadata !150, i32 180} ; [ DW_TAG_subprogram ]
!1151 = metadata !{i32 372, i32 68, metadata !1152, metadata !1154}
!1152 = metadata !{i32 786443, metadata !1153, i32 372, i32 59, metadata !137, i32 49} ; [ DW_TAG_lexical_block ]
!1153 = metadata !{i32 786478, i32 0, metadata !135, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbE4readEv", metadata !137, i32 372, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !235, metadata !150, i32 372} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 42, i32 5, metadata !1131, null}
!1155 = metadata !{i32 166, i32 95, metadata !1156, metadata !1148}
!1156 = metadata !{i32 786443, metadata !1140, i32 166, i32 93, metadata !1141, i32 51} ; [ DW_TAG_lexical_block ]
!1157 = metadata !{i32 786688, metadata !1149, metadata !"tmp", metadata !137, i32 180, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1158 = metadata !{i32 166, i32 90, metadata !1140, metadata !1159}
!1159 = metadata !{i32 180, i32 66, metadata !1149, metadata !1160}
!1160 = metadata !{i32 372, i32 68, metadata !1152, metadata !1161}
!1161 = metadata !{i32 46, i32 5, metadata !1131, null}
!1162 = metadata !{i32 166, i32 95, metadata !1156, metadata !1159}
!1163 = metadata !{i32 166, i32 95, metadata !1156, metadata !1164}
!1164 = metadata !{i32 180, i32 66, metadata !1149, metadata !1165}
!1165 = metadata !{i32 372, i32 68, metadata !1152, metadata !1166}
!1166 = metadata !{i32 16, i32 7, metadata !1167, metadata !1169}
!1167 = metadata !{i32 786443, metadata !1168, i32 13, i32 1, metadata !126, i32 0} ; [ DW_TAG_lexical_block ]
!1168 = metadata !{i32 786478, i32 0, null, metadata !"incr_count", metadata !"incr_count", metadata !"_ZN21bidirectional_counter10incr_countEv", metadata !126, i32 13, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1076, metadata !150, i32 13} ; [ DW_TAG_subprogram ]
!1169 = metadata !{i32 47, i32 5, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !1131, i32 46, i32 23, metadata !126, i32 8} ; [ DW_TAG_lexical_block ]
!1171 = metadata !{i32 1548, i32 93, metadata !1172, metadata !1176}
!1172 = metadata !{i32 786443, metadata !1173, i32 1548, i32 91, metadata !282, i32 17} ; [ DW_TAG_lexical_block ]
!1173 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<12, true>", metadata !"ap_int_base<12, true>", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEC2ILi12ELb1EEERKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1548, metadata !1174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !307, null, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!1174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1175 = metadata !{null, metadata !331, metadata !305}
!1176 = metadata !{i32 1548, i32 109, metadata !1177, metadata !1178}
!1177 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<12, true>", metadata !"ap_int_base<12, true>", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEC1ILi12ELb1EEERKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1548, metadata !1174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !307, null, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!1178 = metadata !{i32 3478, i32 0, metadata !1179, metadata !1441}
!1179 = metadata !{i32 786443, metadata !1180, i32 3478, i32 255, metadata !282, i32 29} ; [ DW_TAG_lexical_block ]
!1180 = metadata !{i32 786478, i32 0, metadata !282, metadata !"operator+<12, true, 32, true>", metadata !"operator+<12, true, 32, true>", metadata !"_ZplILi12ELb1ELi32ELb1EEN11ap_int_baseIXT_EXT0_EXleT_Li64EEE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EXleT1_Li64EEE", metadata !282, i32 3478, metadata !1181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1440, null, metadata !150, i32 3478} ; [ DW_TAG_subprogram ]
!1181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1182 = metadata !{metadata !1183, metadata !305, metadata !1187}
!1183 = metadata !{i32 786454, metadata !1184, metadata !"plus", metadata !282, i32 1524, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_typedef ]
!1184 = metadata !{i32 786434, metadata !281, metadata !"RType<32, true>", metadata !282, i32 1507, i64 8, i64 8, i32 0, i32 0, null, metadata !206, i32 0, null, metadata !1185} ; [ DW_TAG_class_type ]
!1185 = metadata !{metadata !1186, metadata !309}
!1186 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !296, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1187 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1188} ; [ DW_TAG_reference_type ]
!1188 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1189} ; [ DW_TAG_const_type ]
!1189 = metadata !{i32 786434, null, metadata !"ap_int_base<32, true, true>", metadata !282, i32 1495, i64 32, i64 32, i32 0, i32 0, null, metadata !1190, i32 0, null, metadata !1439} ; [ DW_TAG_class_type ]
!1190 = metadata !{metadata !1191, metadata !1202, metadata !1206, metadata !1209, metadata !1215, metadata !1218, metadata !1221, metadata !1224, metadata !1227, metadata !1230, metadata !1233, metadata !1236, metadata !1239, metadata !1242, metadata !1245, metadata !1248, metadata !1251, metadata !1254, metadata !1257, metadata !1260, metadata !1263, metadata !1267, metadata !1270, metadata !1273, metadata !1274, metadata !1278, metadata !1281, metadata !1284, metadata !1287, metadata !1290, metadata !1293, metadata !1296, metadata !1299, metadata !1302, metadata !1305, metadata !1308, metadata !1311, metadata !1320, metadata !1323, metadata !1326, metadata !1329, metadata !1332, metadata !1335, metadata !1338, metadata !1341, metadata !1344, metadata !1347, metadata !1350, metadata !1353, metadata !1356, metadata !1357, metadata !1361, metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1372, metadata !1373, metadata !1376, metadata !1377, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1384, metadata !1385, metadata !1386, metadata !1389, metadata !1390, metadata !1393, metadata !1394, metadata !1397, metadata !1403, metadata !1404, metadata !1407, metadata !1408, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1428, metadata !1429, metadata !1432, metadata !1435, metadata !1438}
!1191 = metadata !{i32 786460, metadata !1189, null, metadata !282, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1192} ; [ DW_TAG_inheritance ]
!1192 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, true>", metadata !286, i32 65, i64 32, i64 32, i32 0, i32 0, null, metadata !1193, i32 0, null, metadata !1200} ; [ DW_TAG_class_type ]
!1193 = metadata !{metadata !1194, metadata !1196}
!1194 = metadata !{i32 786445, metadata !1192, metadata !"V", metadata !286, i32 65, i64 32, i64 32, i64 0, i32 0, metadata !1195} ; [ DW_TAG_member ]
!1195 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1196 = metadata !{i32 786478, i32 0, metadata !1192, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !286, i32 65, metadata !1197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 65} ; [ DW_TAG_subprogram ]
!1197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1198 = metadata !{null, metadata !1199}
!1199 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1192} ; [ DW_TAG_pointer_type ]
!1200 = metadata !{metadata !1201, metadata !297}
!1201 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1202 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1536, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1536} ; [ DW_TAG_subprogram ]
!1203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1204 = metadata !{null, metadata !1205}
!1205 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1189} ; [ DW_TAG_pointer_type ]
!1206 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base<32, true>", metadata !"ap_int_base<32, true>", metadata !"", metadata !282, i32 1548, metadata !1207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1185, i32 0, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!1207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1208 = metadata !{null, metadata !1205, metadata !1187}
!1209 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base<32, true>", metadata !"ap_int_base<32, true>", metadata !"", metadata !282, i32 1551, metadata !1210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1185, i32 0, metadata !150, i32 1551} ; [ DW_TAG_subprogram ]
!1210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1211 = metadata !{null, metadata !1205, metadata !1212}
!1212 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1213} ; [ DW_TAG_reference_type ]
!1213 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1214} ; [ DW_TAG_const_type ]
!1214 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1189} ; [ DW_TAG_volatile_type ]
!1215 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1558, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1558} ; [ DW_TAG_subprogram ]
!1216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1217 = metadata !{null, metadata !1205, metadata !164}
!1218 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1559, metadata !1219, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1559} ; [ DW_TAG_subprogram ]
!1219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1220 = metadata !{null, metadata !1205, metadata !349}
!1221 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1560, metadata !1222, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1560} ; [ DW_TAG_subprogram ]
!1222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1223 = metadata !{null, metadata !1205, metadata !353}
!1224 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1561, metadata !1225, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1561} ; [ DW_TAG_subprogram ]
!1225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1226 = metadata !{null, metadata !1205, metadata !357}
!1227 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1562, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1562} ; [ DW_TAG_subprogram ]
!1228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1229 = metadata !{null, metadata !1205, metadata !361}
!1230 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1563, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1563} ; [ DW_TAG_subprogram ]
!1231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1232 = metadata !{null, metadata !1205, metadata !296}
!1233 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1564, metadata !1234, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1564} ; [ DW_TAG_subprogram ]
!1234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1235 = metadata !{null, metadata !1205, metadata !368}
!1236 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1565, metadata !1237, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1565} ; [ DW_TAG_subprogram ]
!1237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1238 = metadata !{null, metadata !1205, metadata !372}
!1239 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1566, metadata !1240, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1566} ; [ DW_TAG_subprogram ]
!1240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1241 = metadata !{null, metadata !1205, metadata !376}
!1242 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1567, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1567} ; [ DW_TAG_subprogram ]
!1243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1244 = metadata !{null, metadata !1205, metadata !380}
!1245 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1568, metadata !1246, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1568} ; [ DW_TAG_subprogram ]
!1246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1247 = metadata !{null, metadata !1205, metadata !385}
!1248 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1569, metadata !1249, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1569} ; [ DW_TAG_subprogram ]
!1249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1250 = metadata !{null, metadata !1205, metadata !390}
!1251 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1570, metadata !1252, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1570} ; [ DW_TAG_subprogram ]
!1252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1253 = metadata !{null, metadata !1205, metadata !395}
!1254 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1571, metadata !1255, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !150, i32 1571} ; [ DW_TAG_subprogram ]
!1255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1256 = metadata !{null, metadata !1205, metadata !399}
!1257 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1598, metadata !1258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1598} ; [ DW_TAG_subprogram ]
!1258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1259 = metadata !{null, metadata !1205, metadata !193}
!1260 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !282, i32 1605, metadata !1261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1605} ; [ DW_TAG_subprogram ]
!1261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1262 = metadata !{null, metadata !1205, metadata !193, metadata !349}
!1263 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi32ELb1ELb1EE4readEv", metadata !282, i32 1632, metadata !1264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1632} ; [ DW_TAG_subprogram ]
!1264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1265 = metadata !{metadata !1189, metadata !1266}
!1266 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1214} ; [ DW_TAG_pointer_type ]
!1267 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi32ELb1ELb1EE5writeERKS0_", metadata !282, i32 1638, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1638} ; [ DW_TAG_subprogram ]
!1268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1269 = metadata !{null, metadata !1266, metadata !1187}
!1270 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb1ELb1EEaSERVKS0_", metadata !282, i32 1650, metadata !1271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1650} ; [ DW_TAG_subprogram ]
!1271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1272 = metadata !{null, metadata !1266, metadata !1212}
!1273 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb1ELb1EEaSERKS0_", metadata !282, i32 1659, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1659} ; [ DW_TAG_subprogram ]
!1274 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSERVKS0_", metadata !282, i32 1682, metadata !1275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1682} ; [ DW_TAG_subprogram ]
!1275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1276 = metadata !{metadata !1277, metadata !1205, metadata !1212}
!1277 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1189} ; [ DW_TAG_reference_type ]
!1278 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSERKS0_", metadata !282, i32 1687, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1687} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1280 = metadata !{metadata !1277, metadata !1205, metadata !1187}
!1281 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEPKc", metadata !282, i32 1691, metadata !1282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1691} ; [ DW_TAG_subprogram ]
!1282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1283 = metadata !{metadata !1277, metadata !1205, metadata !193}
!1284 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE3setEPKca", metadata !282, i32 1699, metadata !1285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1699} ; [ DW_TAG_subprogram ]
!1285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1286 = metadata !{metadata !1277, metadata !1205, metadata !193, metadata !349}
!1287 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEa", metadata !282, i32 1713, metadata !1288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1713} ; [ DW_TAG_subprogram ]
!1288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1289 = metadata !{metadata !1277, metadata !1205, metadata !349}
!1290 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEh", metadata !282, i32 1714, metadata !1291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1714} ; [ DW_TAG_subprogram ]
!1291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1292 = metadata !{metadata !1277, metadata !1205, metadata !353}
!1293 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEs", metadata !282, i32 1715, metadata !1294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1715} ; [ DW_TAG_subprogram ]
!1294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1295 = metadata !{metadata !1277, metadata !1205, metadata !357}
!1296 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEt", metadata !282, i32 1716, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1716} ; [ DW_TAG_subprogram ]
!1297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1298 = metadata !{metadata !1277, metadata !1205, metadata !361}
!1299 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEi", metadata !282, i32 1717, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1717} ; [ DW_TAG_subprogram ]
!1300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1301 = metadata !{metadata !1277, metadata !1205, metadata !296}
!1302 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEj", metadata !282, i32 1718, metadata !1303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1718} ; [ DW_TAG_subprogram ]
!1303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1304 = metadata !{metadata !1277, metadata !1205, metadata !368}
!1305 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEx", metadata !282, i32 1719, metadata !1306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1719} ; [ DW_TAG_subprogram ]
!1306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1307 = metadata !{metadata !1277, metadata !1205, metadata !380}
!1308 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEaSEy", metadata !282, i32 1720, metadata !1309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1720} ; [ DW_TAG_subprogram ]
!1309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1310 = metadata !{metadata !1277, metadata !1205, metadata !385}
!1311 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator int", metadata !"operator int", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEcviEv", metadata !282, i32 1758, metadata !1312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1758} ; [ DW_TAG_subprogram ]
!1312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1313 = metadata !{metadata !1314, metadata !1319}
!1314 = metadata !{i32 786454, metadata !1189, metadata !"RetType", metadata !282, i32 1500, i64 0, i64 0, i64 0, i32 0, metadata !1315} ; [ DW_TAG_typedef ]
!1315 = metadata !{i32 786454, metadata !1316, metadata !"Type", metadata !282, i32 1483, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_typedef ]
!1316 = metadata !{i32 786434, null, metadata !"retval<4, true>", metadata !282, i32 1482, i64 8, i64 8, i32 0, i32 0, null, metadata !206, i32 0, null, metadata !1317} ; [ DW_TAG_class_type ]
!1317 = metadata !{metadata !1318, metadata !297}
!1318 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !296, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1319 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1188} ; [ DW_TAG_pointer_type ]
!1320 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7to_boolEv", metadata !282, i32 1764, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1764} ; [ DW_TAG_subprogram ]
!1321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1322 = metadata !{metadata !164, metadata !1319}
!1323 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE8to_ucharEv", metadata !282, i32 1765, metadata !1324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1765} ; [ DW_TAG_subprogram ]
!1324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1325 = metadata !{metadata !353, metadata !1319}
!1326 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7to_charEv", metadata !282, i32 1766, metadata !1327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1766} ; [ DW_TAG_subprogram ]
!1327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1328 = metadata !{metadata !349, metadata !1319}
!1329 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_ushortEv", metadata !282, i32 1767, metadata !1330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1767} ; [ DW_TAG_subprogram ]
!1330 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1331 = metadata !{metadata !361, metadata !1319}
!1332 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE8to_shortEv", metadata !282, i32 1768, metadata !1333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1768} ; [ DW_TAG_subprogram ]
!1333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1334 = metadata !{metadata !357, metadata !1319}
!1335 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE6to_intEv", metadata !282, i32 1769, metadata !1336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1769} ; [ DW_TAG_subprogram ]
!1336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1337 = metadata !{metadata !296, metadata !1319}
!1338 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7to_uintEv", metadata !282, i32 1770, metadata !1339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1770} ; [ DW_TAG_subprogram ]
!1339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1340 = metadata !{metadata !368, metadata !1319}
!1341 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7to_longEv", metadata !282, i32 1771, metadata !1342, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1771} ; [ DW_TAG_subprogram ]
!1342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1343 = metadata !{metadata !372, metadata !1319}
!1344 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE8to_ulongEv", metadata !282, i32 1772, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1772} ; [ DW_TAG_subprogram ]
!1345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1346 = metadata !{metadata !376, metadata !1319}
!1347 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE8to_int64Ev", metadata !282, i32 1773, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1773} ; [ DW_TAG_subprogram ]
!1348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1349 = metadata !{metadata !380, metadata !1319}
!1350 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_uint64Ev", metadata !282, i32 1774, metadata !1351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1774} ; [ DW_TAG_subprogram ]
!1351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1352 = metadata !{metadata !385, metadata !1319}
!1353 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_doubleEv", metadata !282, i32 1775, metadata !1354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1775} ; [ DW_TAG_subprogram ]
!1354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1355 = metadata !{metadata !399, metadata !1319}
!1356 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE6lengthEv", metadata !282, i32 1789, metadata !1336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1789} ; [ DW_TAG_subprogram ]
!1357 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi32ELb1ELb1EE6lengthEv", metadata !282, i32 1790, metadata !1358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1790} ; [ DW_TAG_subprogram ]
!1358 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1359 = metadata !{metadata !296, metadata !1360}
!1360 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1213} ; [ DW_TAG_pointer_type ]
!1361 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE7reverseEv", metadata !282, i32 1795, metadata !1362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1795} ; [ DW_TAG_subprogram ]
!1362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1363 = metadata !{metadata !1277, metadata !1205}
!1364 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE6iszeroEv", metadata !282, i32 1801, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1801} ; [ DW_TAG_subprogram ]
!1365 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7is_zeroEv", metadata !282, i32 1806, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1806} ; [ DW_TAG_subprogram ]
!1366 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE4signEv", metadata !282, i32 1811, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1811} ; [ DW_TAG_subprogram ]
!1367 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE5clearEi", metadata !282, i32 1819, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1819} ; [ DW_TAG_subprogram ]
!1368 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE6invertEi", metadata !282, i32 1825, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1825} ; [ DW_TAG_subprogram ]
!1369 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE4testEi", metadata !282, i32 1833, metadata !1370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1833} ; [ DW_TAG_subprogram ]
!1370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1371 = metadata !{metadata !164, metadata !1319, metadata !296}
!1372 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE3setEi", metadata !282, i32 1839, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1839} ; [ DW_TAG_subprogram ]
!1373 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE3setEib", metadata !282, i32 1845, metadata !1374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1845} ; [ DW_TAG_subprogram ]
!1374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1375 = metadata !{null, metadata !1205, metadata !296, metadata !164}
!1376 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE7lrotateEi", metadata !282, i32 1852, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1852} ; [ DW_TAG_subprogram ]
!1377 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE7rrotateEi", metadata !282, i32 1861, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1861} ; [ DW_TAG_subprogram ]
!1378 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE7set_bitEib", metadata !282, i32 1869, metadata !1374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1869} ; [ DW_TAG_subprogram ]
!1379 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE7get_bitEi", metadata !282, i32 1874, metadata !1370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1874} ; [ DW_TAG_subprogram ]
!1380 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE5b_notEv", metadata !282, i32 1879, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1879} ; [ DW_TAG_subprogram ]
!1381 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE17countLeadingZerosEv", metadata !282, i32 1886, metadata !1382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1886} ; [ DW_TAG_subprogram ]
!1382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1383 = metadata !{metadata !296, metadata !1205}
!1384 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEppEv", metadata !282, i32 1943, metadata !1362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1943} ; [ DW_TAG_subprogram ]
!1385 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEmmEv", metadata !282, i32 1947, metadata !1362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1947} ; [ DW_TAG_subprogram ]
!1386 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEppEi", metadata !282, i32 1955, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1955} ; [ DW_TAG_subprogram ]
!1387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1388 = metadata !{metadata !1188, metadata !1205, metadata !296}
!1389 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEmmEi", metadata !282, i32 1960, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1960} ; [ DW_TAG_subprogram ]
!1390 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEpsEv", metadata !282, i32 1969, metadata !1391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1969} ; [ DW_TAG_subprogram ]
!1391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1392 = metadata !{metadata !1189, metadata !1319}
!1393 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEntEv", metadata !282, i32 1975, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1975} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEngEv", metadata !282, i32 1980, metadata !1395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 1980} ; [ DW_TAG_subprogram ]
!1395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1396 = metadata !{metadata !315, metadata !1319}
!1397 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE5rangeEii", metadata !282, i32 2110, metadata !1398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2110} ; [ DW_TAG_subprogram ]
!1398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1399 = metadata !{metadata !1400, metadata !1205, metadata !296, metadata !296}
!1400 = metadata !{i32 786434, null, metadata !"ap_range_ref<32, true>", metadata !282, i32 967, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1401} ; [ DW_TAG_class_type ]
!1401 = metadata !{metadata !1402, metadata !297}
!1402 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !296, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1403 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEclEii", metadata !282, i32 2116, metadata !1398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2116} ; [ DW_TAG_subprogram ]
!1404 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE5rangeEii", metadata !282, i32 2122, metadata !1405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2122} ; [ DW_TAG_subprogram ]
!1405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1406 = metadata !{metadata !1400, metadata !1319, metadata !296, metadata !296}
!1407 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEclEii", metadata !282, i32 2128, metadata !1405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2128} ; [ DW_TAG_subprogram ]
!1408 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EEixEi", metadata !282, i32 2147, metadata !1409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2147} ; [ DW_TAG_subprogram ]
!1409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1410 = metadata !{metadata !1411, metadata !1205, metadata !296}
!1411 = metadata !{i32 786434, null, metadata !"ap_bit_ref<32, true>", metadata !282, i32 1291, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1401} ; [ DW_TAG_class_type ]
!1412 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EEixEi", metadata !282, i32 2161, metadata !1370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2161} ; [ DW_TAG_subprogram ]
!1413 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE3bitEi", metadata !282, i32 2175, metadata !1409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2175} ; [ DW_TAG_subprogram ]
!1414 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE3bitEi", metadata !282, i32 2189, metadata !1370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2189} ; [ DW_TAG_subprogram ]
!1415 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE10and_reduceEv", metadata !282, i32 2369, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2369} ; [ DW_TAG_subprogram ]
!1416 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1417, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1417 = metadata !{metadata !164, metadata !1205}
!1418 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2372, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2372} ; [ DW_TAG_subprogram ]
!1419 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE9or_reduceEv", metadata !282, i32 2375, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2375} ; [ DW_TAG_subprogram ]
!1420 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2378, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2378} ; [ DW_TAG_subprogram ]
!1421 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2381, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2381} ; [ DW_TAG_subprogram ]
!1422 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi32ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2384, metadata !1416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2384} ; [ DW_TAG_subprogram ]
!1423 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE10and_reduceEv", metadata !282, i32 2388, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2388} ; [ DW_TAG_subprogram ]
!1424 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE11nand_reduceEv", metadata !282, i32 2391, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2391} ; [ DW_TAG_subprogram ]
!1425 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9or_reduceEv", metadata !282, i32 2394, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2394} ; [ DW_TAG_subprogram ]
!1426 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE10nor_reduceEv", metadata !282, i32 2397, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2397} ; [ DW_TAG_subprogram ]
!1427 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE10xor_reduceEv", metadata !282, i32 2400, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2400} ; [ DW_TAG_subprogram ]
!1428 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE11xnor_reduceEv", metadata !282, i32 2403, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2403} ; [ DW_TAG_subprogram ]
!1429 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !282, i32 2410, metadata !1430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2410} ; [ DW_TAG_subprogram ]
!1430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1431 = metadata !{null, metadata !1319, metadata !613, metadata !296, metadata !614, metadata !164}
!1432 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_stringE8BaseModeb", metadata !282, i32 2437, metadata !1433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2437} ; [ DW_TAG_subprogram ]
!1433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1434 = metadata !{metadata !613, metadata !1319, metadata !614, metadata !164}
!1435 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb1ELb1EE9to_stringEab", metadata !282, i32 2441, metadata !1436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !150, i32 2441} ; [ DW_TAG_subprogram ]
!1436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1437 = metadata !{metadata !613, metadata !1319, metadata !349, metadata !164}
!1438 = metadata !{i32 786478, i32 0, metadata !1189, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !282, i32 1495, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !150, i32 1495} ; [ DW_TAG_subprogram ]
!1439 = metadata !{metadata !1402, metadata !297, metadata !544}
!1440 = metadata !{metadata !839, metadata !297, metadata !1186, metadata !309}
!1441 = metadata !{i32 3670, i32 204, metadata !1442, metadata !1446}
!1442 = metadata !{i32 786443, metadata !1443, i32 3670, i32 195, metadata !282, i32 28} ; [ DW_TAG_lexical_block ]
!1443 = metadata !{i32 786478, i32 0, metadata !282, metadata !"operator+<12, true>", metadata !"operator+<12, true>", metadata !"_ZplILi12ELb1EEN11ap_int_baseIXT_EXT0_EXleT_Li64EEE5RTypeIXLi32EEXLb1EEE4plusERKS1_i", metadata !282, i32 3670, metadata !1444, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !838, null, metadata !150, i32 3670} ; [ DW_TAG_subprogram ]
!1444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1445 = metadata !{metadata !1183, metadata !305, metadata !296}
!1446 = metadata !{i32 21, i32 13, metadata !1447, metadata !1169}
!1447 = metadata !{i32 786443, metadata !1167, i32 20, i32 34, metadata !126, i32 2} ; [ DW_TAG_lexical_block ]
!1448 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.clock.m_if.Val", null, i32 13, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1449 = metadata !{i32 786689, metadata !1168, metadata !"this", metadata !126, i32 16777229, metadata !1093, i32 64, metadata !1169} ; [ DW_TAG_arg_variable ]
!1450 = metadata !{i32 13, i32 29, metadata !1168, metadata !1169}
!1451 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.reset.m_if.Val", null, i32 13, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1452 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.enable.m_if.Val", null, i32 13, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1453 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.mode.m_if.Val", null, i32 13, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1454 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.counter_out.m_if.Val.V", null, i32 13, metadata !1108, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1455 = metadata !{i32 790531, metadata !1449, metadata !"bidirectional_counter.count.V", null, i32 13, metadata !1128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1456 = metadata !{i32 786689, metadata !1140, metadata !"P", metadata !1141, i32 16777382, metadata !1144, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ]
!1457 = metadata !{i32 166, i32 90, metadata !1140, metadata !1164}
!1458 = metadata !{i32 786688, metadata !1149, metadata !"tmp", metadata !137, i32 180, metadata !164, i32 0, metadata !1165} ; [ DW_TAG_auto_variable ]
!1459 = metadata !{i32 238, i32 13, metadata !1460, metadata !1462}
!1460 = metadata !{i32 786443, metadata !1461, i32 237, i32 86, metadata !278, i32 36} ; [ DW_TAG_lexical_block ]
!1461 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEaSERKS2_", metadata !278, i32 237, metadata !965, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !964, metadata !150, i32 237} ; [ DW_TAG_subprogram ]
!1462 = metadata !{i32 17, i32 5, metadata !1463, metadata !1169}
!1463 = metadata !{i32 786443, metadata !1167, i32 16, i32 26, metadata !126, i32 1} ; [ DW_TAG_lexical_block ]
!1464 = metadata !{i32 1640, i32 5, metadata !1465, metadata !1467}
!1465 = metadata !{i32 786443, metadata !1466, i32 1638, i32 99, metadata !282, i32 33} ; [ DW_TAG_lexical_block ]
!1466 = metadata !{i32 786478, i32 0, null, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EE5writeERKS0_", metadata !282, i32 1638, metadata !690, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !689, metadata !150, i32 1638} ; [ DW_TAG_subprogram ]
!1467 = metadata !{i32 98, i32 5, metadata !1468, metadata !1476}
!1468 = metadata !{i32 786443, metadata !1469, i32 96, i32 97, metadata !1141, i32 32} ; [ DW_TAG_lexical_block ]
!1469 = metadata !{i32 786478, i32 0, metadata !137, metadata !"_ssdm_op_WRITE<12, _ap_sc_::sc_dt::sc_int<12> >", metadata !"_ssdm_op_WRITE<12, _ap_sc_::sc_dt::sc_int<12> >", metadata !"_Z14_ssdm_op_WRITEILi12EN7_ap_sc_5sc_dt6sc_intILi12EEEEvRVNS2_IXT_EEERKT0_", metadata !137, i32 112, metadata !1470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1473, null, metadata !150, i32 96} ; [ DW_TAG_subprogram ]
!1470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1471 = metadata !{null, metadata !1472, metadata !909}
!1472 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_reference_type ]
!1473 = metadata !{metadata !1474, metadata !1475}
!1474 = metadata !{i32 786480, null, metadata !"W", metadata !296, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1475 = metadata !{i32 786479, null, metadata !"T2", metadata !275, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1476 = metadata !{i32 207, i32 13, metadata !1477, metadata !1483}
!1477 = metadata !{i32 786443, metadata !1478, i32 205, i32 73, metadata !137, i32 31} ; [ DW_TAG_lexical_block ]
!1478 = metadata !{i32 786478, i32 0, metadata !135, metadata !"write<_ap_sc_::sc_dt::sc_int<12> >", metadata !"write<_ap_sc_::sc_dt::sc_int<12> >", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt6sc_intILi12EEEE5writeIS4_EEvRKT_", metadata !137, i32 205, metadata !1479, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1481, null, metadata !150, i32 205} ; [ DW_TAG_subprogram ]
!1479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1480 = metadata !{null, metadata !993, metadata !909}
!1481 = metadata !{metadata !1482}
!1482 = metadata !{i32 786479, null, metadata !"_T2", metadata !275, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1483 = metadata !{i32 417, i32 73, metadata !1484, metadata !1486}
!1484 = metadata !{i32 786443, metadata !1485, i32 417, i32 71, metadata !137, i32 30} ; [ DW_TAG_lexical_block ]
!1485 = metadata !{i32 786478, i32 0, metadata !135, metadata !"write", metadata !"write", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEE5writeERKS4_", metadata !137, i32 417, metadata !1037, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1036, metadata !150, i32 417} ; [ DW_TAG_subprogram ]
!1486 = metadata !{i32 18, i32 5, metadata !1463, metadata !1169}
!1487 = metadata !{i32 20, i32 3, metadata !1463, metadata !1169}
!1488 = metadata !{i32 786689, metadata !1140, metadata !"P", metadata !1141, i32 16777382, metadata !1144, i32 0, metadata !1489} ; [ DW_TAG_arg_variable ]
!1489 = metadata !{i32 180, i32 66, metadata !1149, metadata !1490}
!1490 = metadata !{i32 372, i32 68, metadata !1152, metadata !1491}
!1491 = metadata !{i32 20, i32 14, metadata !1167, metadata !1169}
!1492 = metadata !{i32 166, i32 90, metadata !1140, metadata !1489}
!1493 = metadata !{i32 166, i32 95, metadata !1156, metadata !1489}
!1494 = metadata !{i32 786688, metadata !1149, metadata !"tmp", metadata !137, i32 180, metadata !164, i32 0, metadata !1490} ; [ DW_TAG_auto_variable ]
!1495 = metadata !{i32 1548, i32 93, metadata !1496, metadata !1498}
!1496 = metadata !{i32 786443, metadata !1497, i32 1548, i32 91, metadata !282, i32 27} ; [ DW_TAG_lexical_block ]
!1497 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEC2ILi33ELb1EEERKS_IXT_EXT0_EXleT_Li64EEE", metadata !282, i32 1548, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !335, metadata !310, metadata !150, i32 1548} ; [ DW_TAG_subprogram ]
!1498 = metadata !{i32 147, i32 111, metadata !1499, metadata !1500}
!1499 = metadata !{i32 786478, i32 0, metadata !276, metadata !"sc_int<33, true>", metadata !"sc_int<33, true>", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EXleT_Li64EEE", metadata !278, i32 147, metadata !898, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !900, metadata !897, metadata !150, i32 147} ; [ DW_TAG_subprogram ]
!1500 = metadata !{i32 147, i32 113, metadata !1501, metadata !1446}
!1501 = metadata !{i32 786478, i32 0, metadata !276, metadata !"sc_int<33, true>", metadata !"sc_int<33, true>", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEC1ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EXleT_Li64EEE", metadata !278, i32 147, metadata !898, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !900, metadata !897, metadata !150, i32 147} ; [ DW_TAG_subprogram ]
!1502 = metadata !{i32 238, i32 13, metadata !1460, metadata !1446}
!1503 = metadata !{i32 790529, metadata !1504, metadata !"v.V", null, i32 206, metadata !1121, i32 0, metadata !1505} ; [ DW_TAG_auto_variable_field ]
!1504 = metadata !{i32 786688, metadata !1477, metadata !"v", metadata !137, i32 206, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1505 = metadata !{i32 417, i32 73, metadata !1484, metadata !1506}
!1506 = metadata !{i32 22, i32 5, metadata !1447, metadata !1169}
!1507 = metadata !{i32 206, i32 21, metadata !1477, metadata !1505}
!1508 = metadata !{i32 790529, metadata !1509, metadata !"valInt.V", null, i32 97, metadata !1121, i32 0, metadata !1510} ; [ DW_TAG_auto_variable_field ]
!1509 = metadata !{i32 786688, metadata !1468, metadata !"valInt", metadata !1141, i32 97, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1510 = metadata !{i32 207, i32 13, metadata !1477, metadata !1505}
!1511 = metadata !{i32 97, i32 27, metadata !1468, metadata !1510}
!1512 = metadata !{i32 1640, i32 5, metadata !1465, metadata !1513}
!1513 = metadata !{i32 98, i32 5, metadata !1468, metadata !1510}
!1514 = metadata !{i32 234, i32 13, metadata !1515, metadata !1517}
!1515 = metadata !{i32 786443, metadata !1516, i32 233, i32 95, metadata !278, i32 22} ; [ DW_TAG_lexical_block ]
!1516 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt6sc_intILi12EEaSERVKS2_", metadata !278, i32 233, metadata !961, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !960, metadata !150, i32 233} ; [ DW_TAG_subprogram ]
!1517 = metadata !{i32 103, i32 20, metadata !1518, metadata !1523}
!1518 = metadata !{i32 786443, metadata !1519, i32 102, i32 86, metadata !1141, i32 21} ; [ DW_TAG_lexical_block ]
!1519 = metadata !{i32 786478, i32 0, metadata !137, metadata !"_ssdm_op_READ<12>", metadata !"_ssdm_op_READ<12>", metadata !"_Z13_ssdm_op_READILi12EEN7_ap_sc_5sc_dt6sc_intIXT_EEERVS3_", metadata !137, i32 103, metadata !1520, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1522, null, metadata !150, i32 102} ; [ DW_TAG_subprogram ]
!1520 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1521 = metadata !{metadata !275, metadata !1472}
!1522 = metadata !{metadata !1474}
!1523 = metadata !{i32 180, i32 66, metadata !1524, metadata !1526}
!1524 = metadata !{i32 786443, metadata !1525, i32 180, i32 56, metadata !137, i32 20} ; [ DW_TAG_lexical_block ]
!1525 = metadata !{i32 786478, i32 0, metadata !135, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt6sc_intILi12EEEE4readEv", metadata !137, i32 180, metadata !975, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !974, metadata !150, i32 180} ; [ DW_TAG_subprogram ]
!1526 = metadata !{i32 421, i32 73, metadata !1527, metadata !1529}
!1527 = metadata !{i32 786443, metadata !1528, i32 421, i32 64, metadata !137, i32 19} ; [ DW_TAG_lexical_block ]
!1528 = metadata !{i32 786478, i32 0, metadata !135, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt6sc_intILi12EEEE4readEv", metadata !137, i32 421, metadata !1047, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1046, metadata !150, i32 421} ; [ DW_TAG_subprogram ]
!1529 = metadata !{i32 23, i32 55, metadata !1447, metadata !1169}
!1530 = metadata !{i32 24, i32 3, metadata !1447, metadata !1169}
!1531 = metadata !{i32 48, i32 3, metadata !1170, null}
!1532 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.clock.m_if.Val", null, i32 27, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1533 = metadata !{i32 786689, metadata !1534, metadata !"this", metadata !126, i32 16777243, metadata !1093, i32 64, metadata !1535} ; [ DW_TAG_arg_variable ]
!1534 = metadata !{i32 786478, i32 0, null, metadata !"decr_count", metadata !"decr_count", metadata !"_ZN21bidirectional_counter10decr_countEv", metadata !126, i32 27, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1077, metadata !150, i32 27} ; [ DW_TAG_subprogram ]
!1535 = metadata !{i32 49, i32 5, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1131, i32 48, i32 10, metadata !126, i32 9} ; [ DW_TAG_lexical_block ]
!1537 = metadata !{i32 27, i32 29, metadata !1534, metadata !1535}
!1538 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.reset.m_if.Val", null, i32 27, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1539 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.enable.m_if.Val", null, i32 27, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1540 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.mode.m_if.Val", null, i32 27, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1541 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.counter_out.m_if.Val.V", null, i32 27, metadata !1108, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1542 = metadata !{i32 790531, metadata !1533, metadata !"bidirectional_counter.count.V", null, i32 27, metadata !1128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1543 = metadata !{i32 786689, metadata !1140, metadata !"P", metadata !1141, i32 16777382, metadata !1144, i32 0, metadata !1544} ; [ DW_TAG_arg_variable ]
!1544 = metadata !{i32 180, i32 66, metadata !1149, metadata !1545}
!1545 = metadata !{i32 372, i32 68, metadata !1152, metadata !1546}
!1546 = metadata !{i32 30, i32 7, metadata !1547, metadata !1535}
!1547 = metadata !{i32 786443, metadata !1534, i32 27, i32 1, metadata !126, i32 3} ; [ DW_TAG_lexical_block ]
!1548 = metadata !{i32 166, i32 90, metadata !1140, metadata !1544}
!1549 = metadata !{i32 786688, metadata !1149, metadata !"tmp", metadata !137, i32 180, metadata !164, i32 0, metadata !1545} ; [ DW_TAG_auto_variable ]
!1550 = metadata !{i32 238, i32 13, metadata !1460, metadata !1551}
!1551 = metadata !{i32 31, i32 5, metadata !1552, metadata !1535}
!1552 = metadata !{i32 786443, metadata !1547, i32 30, i32 26, metadata !126, i32 4} ; [ DW_TAG_lexical_block ]
!1553 = metadata !{i32 1640, i32 5, metadata !1465, metadata !1554}
!1554 = metadata !{i32 98, i32 5, metadata !1468, metadata !1555}
!1555 = metadata !{i32 207, i32 13, metadata !1477, metadata !1556}
!1556 = metadata !{i32 417, i32 73, metadata !1484, metadata !1557}
!1557 = metadata !{i32 32, i32 5, metadata !1552, metadata !1535}
!1558 = metadata !{i32 34, i32 3, metadata !1552, metadata !1535}
!1559 = metadata !{i32 1548, i32 93, metadata !1496, metadata !1560}
!1560 = metadata !{i32 147, i32 111, metadata !1499, metadata !1561}
!1561 = metadata !{i32 147, i32 113, metadata !1501, metadata !1562}
!1562 = metadata !{i32 35, i32 13, metadata !1563, metadata !1535}
!1563 = metadata !{i32 786443, metadata !1547, i32 34, i32 10, metadata !126, i32 5} ; [ DW_TAG_lexical_block ]
!1564 = metadata !{i32 238, i32 13, metadata !1460, metadata !1562}
!1565 = metadata !{i32 790529, metadata !1504, metadata !"v.V", null, i32 206, metadata !1121, i32 0, metadata !1566} ; [ DW_TAG_auto_variable_field ]
!1566 = metadata !{i32 417, i32 73, metadata !1484, metadata !1567}
!1567 = metadata !{i32 36, i32 5, metadata !1563, metadata !1535}
!1568 = metadata !{i32 206, i32 21, metadata !1477, metadata !1566}
!1569 = metadata !{i32 790529, metadata !1509, metadata !"valInt.V", null, i32 97, metadata !1121, i32 0, metadata !1570} ; [ DW_TAG_auto_variable_field ]
!1570 = metadata !{i32 207, i32 13, metadata !1477, metadata !1566}
!1571 = metadata !{i32 97, i32 27, metadata !1468, metadata !1570}
!1572 = metadata !{i32 1640, i32 5, metadata !1465, metadata !1573}
!1573 = metadata !{i32 98, i32 5, metadata !1468, metadata !1570}
!1574 = metadata !{i32 234, i32 13, metadata !1515, metadata !1575}
!1575 = metadata !{i32 103, i32 20, metadata !1518, metadata !1576}
!1576 = metadata !{i32 180, i32 66, metadata !1524, metadata !1577}
!1577 = metadata !{i32 421, i32 73, metadata !1527, metadata !1578}
!1578 = metadata !{i32 37, i32 53, metadata !1563, metadata !1535}
!1579 = metadata !{i32 50, i32 4, metadata !1131, null}
!1580 = metadata !{i32 50, i32 43, metadata !1131, null}
!1581 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.clock.m_if.Val", null, i32 21, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1582 = metadata !{i32 786689, metadata !1583, metadata !"this", metadata !131, i32 16777237, metadata !1093, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1583 = metadata !{i32 786478, i32 0, null, metadata !"bidirectional_counter", metadata !"bidirectional_counter", metadata !"_ZN21bidirectional_counterC2EN7_ap_sc_7sc_core14sc_module_nameE", metadata !131, i32 21, metadata !1080, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1079, metadata !150, i32 22} ; [ DW_TAG_subprogram ]
!1584 = metadata !{i32 21, i32 3, metadata !1583, null}
!1585 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.reset.m_if.Val", null, i32 21, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1586 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.enable.m_if.Val", null, i32 21, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1587 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.mode.m_if.Val", null, i32 21, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1588 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.counter_out.m_if.Val.V", null, i32 21, metadata !1108, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1589 = metadata !{i32 790531, metadata !1582, metadata !"bidirectional_counter.count.V", null, i32 21, metadata !1128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1590 = metadata !{i32 23, i32 5, metadata !1591, null}
!1591 = metadata !{i32 786443, metadata !1583, i32 22, i32 2, metadata !131, i32 38} ; [ DW_TAG_lexical_block ]
!1592 = metadata !{i32 24, i32 5, metadata !1591, null}
!1593 = metadata !{i32 24, i32 38, metadata !1591, null}
!1594 = metadata !{i32 24, i32 53, metadata !1591, null}
!1595 = metadata !{i32 25, i32 5, metadata !1591, null}
!1596 = metadata !{i32 26, i32 5, metadata !1591, null}
!1597 = metadata !{i32 27, i32 5, metadata !1591, null}
!1598 = metadata !{i32 28, i32 5, metadata !1591, null}
!1599 = metadata !{i32 29, i32 5, metadata !1591, null}
!1600 = metadata !{i32 30, i32 5, metadata !1591, null}
!1601 = metadata !{i32 34, i32 1, metadata !1591, null}
