; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z3fooiPi = comdat nodeduplicate

$sancov.module_ctor_trace_pc_guard = comdat any

@__afl_area_ptr = external local_unnamed_addr global ptr
@__sancov_gen__Z3fooiPi = private global [5 x i32] zeroinitializer, section "__sancov_guards", comdat($_Z3fooiPi), align 4
@__start___sancov_guards = extern_weak hidden global ptr
@__stop___sancov_guards = extern_weak hidden global ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 2, ptr @sancov.module_ctor_trace_pc_guard, ptr @sancov.module_ctor_trace_pc_guard }]
@llvm.used = appending global [1 x ptr] [ptr @sancov.module_ctor_trace_pc_guard], section "llvm.metadata"
@llvm.compiler.used = appending global [1 x ptr] [ptr @__sancov_gen__Z3fooiPi], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @_Z3fooiPi(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 comdat !dbg !9 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata ptr %1, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !20
  %3 = icmp sgt i32 %0, 0, !dbg !21
  %4 = load i32, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__sancov_gen__Z3fooiPi to i64), i64 4) to ptr), align 4, !dbg !23, !nosanitize !24
  %5 = load ptr, ptr @__afl_area_ptr, align 8, !dbg !23
  %6 = sext i32 %4 to i64, !dbg !23
  %7 = getelementptr i8, ptr %5, i64 %6, !dbg !23
  %8 = load i8, ptr %7, align 1, !dbg !23, !nosanitize !24
  %9 = add i8 %8, 1, !dbg !23, !__zircon_new_counter_value !24, !__zircon_instrumented_in__Z3fooiPi !24, !__zircon_new_counter_value_relocated !24
  store i8 %9, ptr %7, align 1, !dbg !23, !nosanitize !24
  br i1 %3, label %10, label %33, !dbg !23

10:                                               ; preds = %2
  %11 = zext i32 %0 to i64, !dbg !23
  %12 = shl nuw nsw i64 %11, 2, !dbg !23
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %12, i1 false), !dbg !25, !tbaa !26
  %13 = trunc i32 %0 to i8, !dbg !23
  call void @llvm.dbg.value(metadata i64 poison, metadata !17, metadata !DIExpression()), !dbg !20
  %14 = add i8 %13, 1, !dbg !23
  %15 = load i32, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__sancov_gen__Z3fooiPi to i64), i64 12) to ptr), align 4, !dbg !30, !nosanitize !24
  %16 = load ptr, ptr @__afl_area_ptr, align 8, !dbg !30
  %17 = sext i32 %15 to i64, !dbg !30
  %18 = getelementptr i8, ptr %16, i64 %17, !dbg !30
  %19 = load i8, ptr %18, align 1, !dbg !30, !nosanitize !24
  %20 = add i8 %19, %13, !dbg !30, !__zircon_new_counter_value !24, !__zircon_instrumented_in__Z3fooiPi !24, !__zircon_new_counter_value_relocated !24
  store i8 %20, ptr %18, align 1, !dbg !30, !nosanitize !24
  %21 = load i32, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__sancov_gen__Z3fooiPi to i64), i64 12) to ptr), align 4, !dbg !30, !nosanitize !24
  %22 = load ptr, ptr @__afl_area_ptr, align 8, !dbg !30
  %23 = sext i32 %21 to i64, !dbg !30
  %24 = getelementptr i8, ptr %22, i64 %23, !dbg !30
  %25 = load i8, ptr %24, align 1, !dbg !30, !nosanitize !24
  %26 = add i8 %25, %13, !dbg !30, !__zircon_new_counter_value !24, !__zircon_instrumented_in__Z3fooiPi !24, !__zircon_new_counter_value_relocated !24
  store i8 %26, ptr %24, align 1, !dbg !30, !nosanitize !24
  %27 = load i32, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__sancov_gen__Z3fooiPi to i64), i64 4) to ptr), align 4, !dbg !30, !nosanitize !24
  %28 = load ptr, ptr @__afl_area_ptr, align 8, !dbg !30
  %29 = sext i32 %27 to i64, !dbg !30
  %30 = getelementptr i8, ptr %28, i64 %29, !dbg !30
  %31 = load i8, ptr %30, align 1, !dbg !30, !nosanitize !24
  %32 = add i8 %31, %14, !dbg !30, !__zircon_new_counter_value !24, !__zircon_instrumented_in__Z3fooiPi !24, !__zircon_new_counter_value_relocated !24
  store i8 %32, ptr %30, align 1, !dbg !30, !nosanitize !24
  br label %33, !dbg !30

33:                                               ; preds = %10, %2
  %34 = load ptr, ptr @__afl_area_ptr, align 8, !dbg !30
  %35 = load i32, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__sancov_gen__Z3fooiPi to i64), i64 8) to ptr), align 4, !dbg !30, !annotation !31, !nosanitize !24
  %36 = sext i32 %35 to i64, !dbg !30
  %37 = getelementptr i8, ptr %34, i64 %36, !dbg !30
  %38 = load i8, ptr %37, align 1, !dbg !30, !annotation !31, !nosanitize !24
  %39 = add i8 %38, 1, !dbg !30, !__zircon_new_counter_value !24, !__zircon_instrumented_in__Z3fooiPi !24, !__zircon_context !32
  store i8 %39, ptr %37, align 1, !dbg !30, !annotation !31, !nosanitize !24, !__zircon_escape_moment_in_Z3fooiPi !24
  ret void, !dbg !30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #3 comdat {
  tail call void @__sanitizer_cov_trace_pc_guard_init(ptr @__start___sancov_guards, ptr @__stop___sancov_guards) #4
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zircon_instrumented" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 17.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.cpp", directory: "/home/acesrc/zircon", checksumkind: CSK_MD5, checksum: "781f8fc9c0d5a3969c6aaca6b836f2c2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"clang version 17.0.6"}
!9 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooiPi", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !9, file: !1, line: 1, type: !12)
!16 = !DILocalVariable(name: "p", arg: 2, scope: !9, file: !1, line: 1, type: !13)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 2, type: !12)
!18 = distinct !DILexicalBlock(scope: !9, file: !1, line: 2, column: 3)
!19 = !DILocation(line: 0, scope: !9)
!20 = !DILocation(line: 0, scope: !18)
!21 = !DILocation(line: 2, column: 21, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 2, column: 3)
!23 = !DILocation(line: 2, column: 3, scope: !18)
!24 = !{}
!25 = !DILocation(line: 3, column: 10, scope: !22)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !DILocation(line: 4, column: 1, scope: !9)
!31 = !{!"Hi!"}
!32 = !{i64 8}
