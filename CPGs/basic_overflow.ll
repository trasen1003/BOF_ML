; ModuleID = 'basic_overflow.cpp'
source_filename = "basic_overflow.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"hacked\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_basic_overflow.cpp, i8* null }]

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" !dbg !1062 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit), !dbg !1064
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11, !dbg !1064
  ret void, !dbg !1064
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_Z6hackedv() local_unnamed_addr #0 !dbg !1065 {
  %1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !1066
  %2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %1, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %0, i8* %1) local_unnamed_addr #4 !dbg !1069 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %0, metadata !1077, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %1, metadata !1078, metadata !DIExpression()), !dbg !1134
  %3 = icmp eq i8* %1, null, !dbg !1135
  br i1 %3, label %4, label %13, !dbg !1137

4:                                                ; preds = %2
  %5 = bitcast %"class.std::basic_ostream"* %0 to i8**, !dbg !1138
  %6 = load i8*, i8** %5, align 8, !dbg !1138, !tbaa !1139
  %7 = getelementptr i8, i8* %6, i64 -24, !dbg !1138
  %8 = bitcast i8* %7 to i64*, !dbg !1138
  %9 = load i64, i64* %8, align 8, !dbg !1138
  %10 = bitcast %"class.std::basic_ostream"* %0 to i8*, !dbg !1138
  %11 = getelementptr inbounds i8, i8* %10, i64 %9, !dbg !1138
  %12 = bitcast i8* %11 to %"class.std::basic_ios"*, !dbg !1138
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull %12, i32 1), !dbg !1142
  br label %16, !dbg !1138

13:                                               ; preds = %2
  %14 = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* nonnull %1), !dbg !1143
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %0, i8* nonnull %1, i64 %14), !dbg !1144
  br label %16

16:                                               ; preds = %13, %4
  ret %"class.std::basic_ostream"* %0, !dbg !1145
}

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %0, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %1) local_unnamed_addr #0 align 2 !dbg !1146 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %0, metadata !1157, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %1, metadata !1159, metadata !DIExpression()), !dbg !1160
  %3 = call dereferenceable(272) %"class.std::basic_ostream"* %1(%"class.std::basic_ostream"* dereferenceable(272) %0), !dbg !1161
  ret %"class.std::basic_ostream"* %3, !dbg !1162
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %0) #4 !dbg !1163 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %0, metadata !1167, metadata !DIExpression()), !dbg !1169
  %2 = bitcast %"class.std::basic_ostream"* %0 to i8**, !dbg !1170
  %3 = load i8*, i8** %2, align 8, !dbg !1170, !tbaa !1139
  %4 = getelementptr i8, i8* %3, i64 -24, !dbg !1170
  %5 = bitcast i8* %4 to i64*, !dbg !1170
  %6 = load i64, i64* %5, align 8, !dbg !1170
  %7 = bitcast %"class.std::basic_ostream"* %0 to i8*, !dbg !1170
  %8 = getelementptr inbounds i8, i8* %7, i64 %6, !dbg !1170
  %9 = bitcast i8* %8 to %"class.std::basic_ios"*, !dbg !1170
  %10 = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* nonnull %9, i8 signext 10), !dbg !1171
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %0, i8 signext %10), !dbg !1172
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %11), !dbg !1173
  ret %"class.std::basic_ostream"* %12, !dbg !1174
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local void @_Z8overflowPc(i8* nocapture %0) local_unnamed_addr #5 !dbg !1175 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1179, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 undef, metadata !1180, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 undef, metadata !1184, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1187
  ret void, !dbg !1188
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @main() local_unnamed_addr #5 !dbg !1189 {
  ret i32 0, !dbg !1195
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %0, i32 %1) local_unnamed_addr #0 align 2 !dbg !1196 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ios"* %0, metadata !1206, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %1, metadata !1208, metadata !DIExpression()), !dbg !1209
  %3 = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %0), !dbg !1210
  %4 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %3, i32 %1), !dbg !1211
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %0, i32 %4), !dbg !1212
  ret void, !dbg !1213
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %0) local_unnamed_addr #6 comdat align 2 !dbg !1214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()), !dbg !1217
  %2 = call i64 @strlen(i8* nonnull dereferenceable(1) %0) #11, !dbg !1218
  ret i64 %2, !dbg !1219
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %0, i32 %1) local_unnamed_addr #7 comdat !dbg !1220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1224, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32 %1, metadata !1225, metadata !DIExpression()), !dbg !1226
  %3 = or i32 %1, %0, !dbg !1227
  ret i32 %3, !dbg !1228
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %0) local_unnamed_addr #6 align 2 !dbg !1229 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ios"* %0, metadata !1236, metadata !DIExpression()), !dbg !1238
  %2 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %0, i64 0, i32 0, i32 5, !dbg !1239
  %3 = load i32, i32* %2, align 8, !dbg !1239, !tbaa !1240
  ret i32 %3, !dbg !1250
}

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %0) local_unnamed_addr #4 !dbg !1251 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %0, metadata !1253, metadata !DIExpression()), !dbg !1254
  %2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %0), !dbg !1255
  ret %"class.std::basic_ostream"* %2, !dbg !1256
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) local_unnamed_addr #1

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %0, i8 signext %1) local_unnamed_addr #0 align 2 !dbg !1257 {
  call void @llvm.dbg.value(metadata %"class.std::basic_ios"* %0, metadata !1263, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %1, metadata !1264, metadata !DIExpression()), !dbg !1265
  %3 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %0, i64 0, i32 5, !dbg !1266
  %4 = load %"class.std::ctype"*, %"class.std::ctype"** %3, align 8, !dbg !1266, !tbaa !1267
  %5 = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %4), !dbg !1270
  %6 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* nonnull %5, i8 signext %1), !dbg !1271
  ret i8 %6, !dbg !1272
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) local_unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0) local_unnamed_addr #4 comdat !dbg !1273 {
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %0, metadata !1282, metadata !DIExpression()), !dbg !1285
  %2 = icmp eq %"class.std::ctype"* %0, null, !dbg !1286
  br i1 %2, label %3, label %4, !dbg !1288

3:                                                ; preds = %1
  call void @_ZSt16__throw_bad_castv() #12, !dbg !1289
  unreachable, !dbg !1289

4:                                                ; preds = %1
  ret %"class.std::ctype"* %0, !dbg !1290
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %0, i8 signext %1) local_unnamed_addr #0 comdat align 2 !dbg !1291 {
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %0, metadata !1298, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %1, metadata !1299, metadata !DIExpression()), !dbg !1300
  %3 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %0, i64 0, i32 8, !dbg !1301
  %4 = load i8, i8* %3, align 8, !dbg !1301, !tbaa !1303
  %5 = icmp eq i8 %4, 0, !dbg !1301
  br i1 %5, label %10, label %6, !dbg !1305

6:                                                ; preds = %2
  %7 = zext i8 %1 to i64, !dbg !1306
  %8 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %0, i64 0, i32 9, i64 %7, !dbg !1306
  %9 = load i8, i8* %8, align 1, !dbg !1306, !tbaa !1307
  br label %16, !dbg !1308

10:                                               ; preds = %2
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %0), !dbg !1309
  %11 = bitcast %"class.std::ctype"* %0 to i8 (%"class.std::ctype"*, i8)***, !dbg !1310
  %12 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %11, align 8, !dbg !1310, !tbaa !1139
  %13 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %12, i64 6, !dbg !1310
  %14 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %13, align 8, !dbg !1310
  %15 = call signext i8 %14(%"class.std::ctype"* %0, i8 signext %1), !dbg !1310
  br label %16, !dbg !1311

16:                                               ; preds = %10, %6
  %17 = phi i8 [ %9, %6 ], [ %15, %10 ], !dbg !1300
  ret i8 %17, !dbg !1312
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_basic_overflow.cpp() #0 section ".text.startup" !dbg !1313 {
  call fastcc void @__cxx_global_var_init(), !dbg !1315
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!1058, !1059, !1060}
!llvm.ident = !{!1061}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 639, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/x86_64-redhat-linux/bits/atomic_word.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 640, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 630, type: !15, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 631, type: !15, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 634, type: !20, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 635, type: !25, scopeLine: 635, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !29, producer: "clang version 10.0.1 (Fedora 10.0.1-3.fc32)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !40, globals: !47, imports: !48, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "basic_overflow.cpp", directory: "/home/Trasen/Documents/dima/codes/BOF_ML/CPGs")
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Iostate", scope: !2, file: !5, line: 153, baseType: !11, size: 32, elements: !32, identifier: "_ZTSSt12_Ios_Iostate")
!32 = !{!33, !34, !35, !36, !37, !38, !39}
!33 = !DIEnumerator(name: "_S_goodbit", value: 0)
!34 = !DIEnumerator(name: "_S_badbit", value: 1)
!35 = !DIEnumerator(name: "_S_eofbit", value: 2)
!36 = !DIEnumerator(name: "_S_failbit", value: 4)
!37 = !DIEnumerator(name: "_S_ios_iostate_end", value: 65536)
!38 = !DIEnumerator(name: "_S_ios_iostate_max", value: 2147483647)
!39 = !DIEnumerator(name: "_S_ios_iostate_min", value: -2147483648)
!40 = !{!41, !31, !11, !46, !6}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !2, file: !42, line: 98, baseType: !43)
!42 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/postypes.h", directory: "")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !44, line: 2364, baseType: !45)
!44 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/x86_64-redhat-linux/bits/c++config.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!0}
!48 = !{!49, !60, !64, !71, !75, !79, !89, !93, !95, !97, !101, !105, !109, !113, !117, !119, !121, !123, !127, !131, !135, !137, !139, !157, !160, !165, !224, !232, !236, !243, !247, !251, !253, !255, !259, !265, !269, !275, !281, !283, !287, !291, !295, !299, !310, !312, !316, !320, !324, !326, !330, !334, !338, !340, !342, !346, !354, !358, !362, !366, !368, !374, !376, !383, !388, !392, !396, !400, !404, !408, !410, !412, !416, !420, !424, !426, !430, !434, !436, !438, !442, !448, !453, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !522, !526, !530, !535, !539, !542, !545, !548, !550, !552, !554, !557, !560, !563, !566, !569, !571, !575, !578, !581, !584, !586, !588, !590, !592, !595, !598, !601, !604, !607, !609, !613, !617, !622, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !658, !662, !668, !672, !677, !679, !684, !688, !692, !701, !705, !709, !713, !717, !721, !725, !729, !733, !737, !741, !745, !749, !751, !755, !759, !763, !769, !773, !777, !779, !783, !787, !793, !795, !799, !803, !807, !811, !815, !819, !823, !824, !825, !826, !828, !829, !830, !831, !832, !833, !834, !838, !844, !849, !853, !855, !857, !859, !861, !868, !872, !876, !880, !884, !888, !892, !896, !898, !902, !908, !912, !916, !918, !921, !925, !929, !931, !933, !935, !937, !939, !941, !943, !947, !951, !955, !959, !963, !967, !969, !973, !977, !981, !985, !987, !989, !993, !997, !998, !999, !1000, !1001, !1002, !1008, !1011, !1012, !1014, !1016, !1018, !1020, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1044, !1048, !1050, !1054}
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !50, file: !59, line: 77)
!50 = !DISubprogram(name: "memchr", scope: !51, file: !51, line: 84, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!51 = !DIFile(filename: "/usr/include/string.h", directory: "")
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !11, !56}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !58)
!57 = !DIFile(filename: "/usr/lib64/clang/10.0.1/include/stddef.h", directory: "")
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cstring", directory: "")
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !59, line: 78)
!61 = !DISubprogram(name: "memcmp", scope: !51, file: !51, line: 64, type: !62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{!11, !54, !54, !56}
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !65, file: !59, line: 79)
!65 = !DISubprogram(name: "memcpy", scope: !51, file: !51, line: 43, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !69, !70, !56}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !72, file: !59, line: 80)
!72 = !DISubprogram(name: "memmove", scope: !51, file: !51, line: 47, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{!68, !68, !54, !56}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !76, file: !59, line: 81)
!76 = !DISubprogram(name: "memset", scope: !51, file: !51, line: 61, type: !77, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!77 = !DISubroutineType(types: !78)
!78 = !{!68, !68, !11, !56}
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !80, file: !59, line: 82)
!80 = !DISubprogram(name: "strcat", scope: !51, file: !51, line: 130, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !90, file: !59, line: 83)
!90 = !DISubprogram(name: "strcmp", scope: !51, file: !51, line: 137, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubroutineType(types: !92)
!92 = !{!11, !87, !87}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !94, file: !59, line: 84)
!94 = !DISubprogram(name: "strcoll", scope: !51, file: !51, line: 144, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !96, file: !59, line: 85)
!96 = !DISubprogram(name: "strcpy", scope: !51, file: !51, line: 122, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !59, line: 86)
!98 = !DISubprogram(name: "strcspn", scope: !51, file: !51, line: 273, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{!56, !87, !87}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !102, file: !59, line: 87)
!102 = !DISubprogram(name: "strerror", scope: !51, file: !51, line: 397, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!83, !11}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !59, line: 88)
!106 = !DISubprogram(name: "strlen", scope: !51, file: !51, line: 385, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DISubroutineType(types: !108)
!108 = !{!56, !87}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !110, file: !59, line: 89)
!110 = !DISubprogram(name: "strncat", scope: !51, file: !51, line: 133, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{!83, !85, !86, !56}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !114, file: !59, line: 90)
!114 = !DISubprogram(name: "strncmp", scope: !51, file: !51, line: 140, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{!11, !87, !87, !56}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !118, file: !59, line: 91)
!118 = !DISubprogram(name: "strncpy", scope: !51, file: !51, line: 125, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !59, line: 92)
!120 = !DISubprogram(name: "strspn", scope: !51, file: !51, line: 277, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !59, line: 93)
!122 = !DISubprogram(name: "strtok", scope: !51, file: !51, line: 336, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !124, file: !59, line: 94)
!124 = !DISubprogram(name: "strxfrm", scope: !51, file: !51, line: 147, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{!56, !85, !86, !56}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !128, file: !59, line: 95)
!128 = !DISubprogram(name: "strchr", scope: !51, file: !51, line: 219, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{!87, !87, !11}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !132, file: !59, line: 96)
!132 = !DISubprogram(name: "strpbrk", scope: !51, file: !51, line: 296, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!87, !87, !87}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !136, file: !59, line: 97)
!136 = !DISubprogram(name: "strrchr", scope: !51, file: !51, line: 246, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !59, line: 98)
!138 = !DISubprogram(name: "strstr", scope: !51, file: !51, line: 323, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !140, file: !156, line: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !141, line: 6, baseType: !142)
!141 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !143, line: 21, baseType: !144)
!143 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !145, identifier: "_ZTS11__mbstate_t")
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !144, file: !143, line: 15, baseType: !11, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !144, file: !143, line: 20, baseType: !148, size: 32, offset: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !143, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !149, identifier: "_ZTSN11__mbstate_tUt_E")
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !148, file: !143, line: 18, baseType: !151, size: 32)
!151 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !148, file: !143, line: 19, baseType: !153, size: 32)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cwchar", directory: "")
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !156, line: 141)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !159, line: 20, baseType: !151)
!159 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !161, file: !156, line: 143)
!161 = !DISubprogram(name: "btowc", scope: !162, file: !162, line: 318, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!163 = !DISubroutineType(types: !164)
!164 = !{!158, !11}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !166, file: !156, line: 144)
!166 = !DISubprogram(name: "fgetwc", scope: !162, file: !162, line: 726, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{!158, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !171, line: 5, baseType: !172)
!171 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !174, identifier: "_ZTS8_IO_FILE")
!173 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !192, !193, !194, !197, !199, !201, !205, !208, !210, !213, !216, !217, !218, !219, !220}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 51, baseType: !11, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 54, baseType: !83, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 55, baseType: !83, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 56, baseType: !83, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 57, baseType: !83, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 58, baseType: !83, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 59, baseType: !83, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 60, baseType: !83, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 61, baseType: !83, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 64, baseType: !83, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 65, baseType: !83, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 66, baseType: !83, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 70, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 72, baseType: !11, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 73, baseType: !11, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !196, line: 152, baseType: !45)
!196 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 77, baseType: !198, size: 16, offset: 1024)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 79, baseType: !202, size: 8, offset: 1048)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 8, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 1)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 81, baseType: !206, size: 64, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 43, baseType: null)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 89, baseType: !209, size: 64, offset: 1152)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !196, line: 153, baseType: !45)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !172, file: !173, line: 91, baseType: !211, size: 64, offset: 1216)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !173, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !172, file: !173, line: 92, baseType: !214, size: 64, offset: 1280)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !173, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !172, file: !173, line: 93, baseType: !191, size: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !172, file: !173, line: 94, baseType: !68, size: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 95, baseType: !56, size: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 96, baseType: !11, size: 32, offset: 1536)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 98, baseType: !221, size: 160, offset: 1568)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 160, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 20)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !225, file: !156, line: 145)
!225 = !DISubprogram(name: "fgetws", scope: !162, file: !162, line: 755, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !230, !11, !231}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !156, line: 146)
!233 = !DISubprogram(name: "fputwc", scope: !162, file: !162, line: 740, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!158, !229, !169}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !237, file: !156, line: 147)
!237 = !DISubprogram(name: "fputws", scope: !162, file: !162, line: 762, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!11, !240, !231}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !244, file: !156, line: 148)
!244 = !DISubprogram(name: "fwide", scope: !162, file: !162, line: 573, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{!11, !169, !11}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !248, file: !156, line: 149)
!248 = !DISubprogram(name: "fwprintf", scope: !162, file: !162, line: 580, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!11, !231, !240, null}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !252, file: !156, line: 150)
!252 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !162, file: !162, line: 640, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !156, line: 151)
!254 = !DISubprogram(name: "getwc", scope: !162, file: !162, line: 727, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !156, line: 152)
!256 = !DISubprogram(name: "getwchar", scope: !162, file: !162, line: 733, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!158}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !260, file: !156, line: 153)
!260 = !DISubprogram(name: "mbrlen", scope: !162, file: !162, line: 329, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!56, !86, !56, !263}
!263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !266, file: !156, line: 154)
!266 = !DISubprogram(name: "mbrtowc", scope: !162, file: !162, line: 296, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!56, !230, !86, !56, !263}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !156, line: 155)
!270 = !DISubprogram(name: "mbsinit", scope: !162, file: !162, line: 292, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!11, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !276, file: !156, line: 156)
!276 = !DISubprogram(name: "mbsrtowcs", scope: !162, file: !162, line: 337, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!56, !230, !279, !56, !263}
!279 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !282, file: !156, line: 157)
!282 = !DISubprogram(name: "putwc", scope: !162, file: !162, line: 741, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !284, file: !156, line: 158)
!284 = !DISubprogram(name: "putwchar", scope: !162, file: !162, line: 747, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DISubroutineType(types: !286)
!286 = !{!158, !229}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !288, file: !156, line: 160)
!288 = !DISubprogram(name: "swprintf", scope: !162, file: !162, line: 590, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!11, !230, !56, !240, null}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !156, line: 162)
!292 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !162, file: !162, line: 647, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!11, !240, !240, null}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !296, file: !156, line: 163)
!296 = !DISubprogram(name: "ungetwc", scope: !162, file: !162, line: 770, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!158, !158, !169}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !156, line: 164)
!300 = !DISubprogram(name: "vfwprintf", scope: !162, file: !162, line: 598, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!11, !231, !240, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, size: 192, flags: DIFlagTypePassByValue, elements: !305, identifier: "_ZTS13__va_list_tag")
!305 = !{!306, !307, !308, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !304, file: !29, baseType: !151, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !304, file: !29, baseType: !151, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !304, file: !29, baseType: !68, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !304, file: !29, baseType: !68, size: 64, offset: 128)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !311, file: !156, line: 166)
!311 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !162, file: !162, line: 693, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !156, line: 169)
!313 = !DISubprogram(name: "vswprintf", scope: !162, file: !162, line: 611, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!11, !230, !56, !240, !303}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !156, line: 172)
!317 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !162, file: !162, line: 700, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{!11, !240, !240, !303}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !156, line: 174)
!321 = !DISubprogram(name: "vwprintf", scope: !162, file: !162, line: 606, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!11, !240, !303}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !156, line: 176)
!325 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !162, file: !162, line: 697, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !327, file: !156, line: 178)
!327 = !DISubprogram(name: "wcrtomb", scope: !162, file: !162, line: 301, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!56, !85, !229, !263}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !156, line: 179)
!331 = !DISubprogram(name: "wcscat", scope: !162, file: !162, line: 97, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DISubroutineType(types: !333)
!333 = !{!228, !230, !240}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !156, line: 180)
!335 = !DISubprogram(name: "wcscmp", scope: !162, file: !162, line: 106, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!11, !241, !241}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !156, line: 181)
!339 = !DISubprogram(name: "wcscoll", scope: !162, file: !162, line: 131, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !341, file: !156, line: 182)
!341 = !DISubprogram(name: "wcscpy", scope: !162, file: !162, line: 87, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !156, line: 183)
!343 = !DISubprogram(name: "wcscspn", scope: !162, file: !162, line: 187, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!56, !241, !241}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !156, line: 184)
!347 = !DISubprogram(name: "wcsftime", scope: !162, file: !162, line: 834, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!56, !230, !56, !240, !350}
!350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !162, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !355, file: !156, line: 185)
!355 = !DISubprogram(name: "wcslen", scope: !162, file: !162, line: 222, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{!56, !241}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !156, line: 186)
!359 = !DISubprogram(name: "wcsncat", scope: !162, file: !162, line: 101, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!228, !230, !240, !56}
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !363, file: !156, line: 187)
!363 = !DISubprogram(name: "wcsncmp", scope: !162, file: !162, line: 109, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{!11, !241, !241, !56}
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !367, file: !156, line: 188)
!367 = !DISubprogram(name: "wcsncpy", scope: !162, file: !162, line: 92, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !369, file: !156, line: 189)
!369 = !DISubprogram(name: "wcsrtombs", scope: !162, file: !162, line: 343, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!56, !85, !372, !56, !263}
!372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !375, file: !156, line: 190)
!375 = !DISubprogram(name: "wcsspn", scope: !162, file: !162, line: 191, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !156, line: 191)
!377 = !DISubprogram(name: "wcstod", scope: !162, file: !162, line: 377, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !240, !381}
!380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!381 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !156, line: 193)
!384 = !DISubprogram(name: "wcstof", scope: !162, file: !162, line: 382, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !240, !381}
!387 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !156, line: 195)
!389 = !DISubprogram(name: "wcstok", scope: !162, file: !162, line: 217, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!228, !230, !240, !381}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !156, line: 196)
!393 = !DISubprogram(name: "wcstol", scope: !162, file: !162, line: 428, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!45, !240, !381, !11}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !397, file: !156, line: 197)
!397 = !DISubprogram(name: "wcstoul", scope: !162, file: !162, line: 433, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!58, !240, !381, !11}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !401, file: !156, line: 198)
!401 = !DISubprogram(name: "wcsxfrm", scope: !162, file: !162, line: 135, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!56, !230, !240, !56}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !156, line: 199)
!405 = !DISubprogram(name: "wctob", scope: !162, file: !162, line: 324, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!11, !158}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !156, line: 200)
!409 = !DISubprogram(name: "wmemcmp", scope: !162, file: !162, line: 258, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !156, line: 201)
!411 = !DISubprogram(name: "wmemcpy", scope: !162, file: !162, line: 262, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !156, line: 202)
!413 = !DISubprogram(name: "wmemmove", scope: !162, file: !162, line: 267, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubroutineType(types: !415)
!415 = !{!228, !228, !241, !56}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !156, line: 203)
!417 = !DISubprogram(name: "wmemset", scope: !162, file: !162, line: 271, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{!228, !228, !229, !56}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !156, line: 204)
!421 = !DISubprogram(name: "wprintf", scope: !162, file: !162, line: 587, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!11, !240, null}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !156, line: 205)
!425 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !162, file: !162, line: 644, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !156, line: 206)
!427 = !DISubprogram(name: "wcschr", scope: !162, file: !162, line: 164, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!228, !241, !229}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !431, file: !156, line: 207)
!431 = !DISubprogram(name: "wcspbrk", scope: !162, file: !162, line: 201, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!228, !241, !241}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !156, line: 208)
!435 = !DISubprogram(name: "wcsrchr", scope: !162, file: !162, line: 174, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !437, file: !156, line: 209)
!437 = !DISubprogram(name: "wcsstr", scope: !162, file: !162, line: 212, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !156, line: 210)
!439 = !DISubprogram(name: "wmemchr", scope: !162, file: !162, line: 253, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!228, !241, !229, !56}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !444, file: !156, line: 251)
!443 = !DINamespace(name: "__gnu_cxx", scope: null)
!444 = !DISubprogram(name: "wcstold", scope: !162, file: !162, line: 384, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !240, !381}
!447 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !449, file: !156, line: 260)
!449 = !DISubprogram(name: "wcstoll", scope: !162, file: !162, line: 441, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !240, !381, !11}
!452 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !454, file: !156, line: 261)
!454 = !DISubprogram(name: "wcstoull", scope: !162, file: !162, line: 448, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !240, !381, !11}
!457 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !156, line: 267)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !156, line: 268)
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !156, line: 269)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !156, line: 283)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !311, file: !156, line: 286)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !156, line: 289)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !156, line: 292)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !156, line: 296)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !156, line: 297)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !156, line: 298)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !470, line: 58)
!469 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !471, file: !470, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !472, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!470 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/exception_ptr.h", directory: "")
!471 = !DINamespace(name: "__exception_ptr", scope: !2)
!472 = !{!473, !474, !478, !481, !482, !487, !488, !492, !497, !501, !505, !508, !509, !512, !515}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !469, file: !470, line: 82, baseType: !68, size: 64)
!474 = !DISubprogram(name: "exception_ptr", scope: !469, file: !470, line: 84, type: !475, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477, !68}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!478 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !469, file: !470, line: 86, type: !479, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !477}
!481 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !469, file: !470, line: 87, type: !479, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !469, file: !470, line: 89, type: !483, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DISubroutineType(types: !484)
!484 = !{!68, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!487 = !DISubprogram(name: "exception_ptr", scope: !469, file: !470, line: 97, type: !479, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DISubprogram(name: "exception_ptr", scope: !469, file: !470, line: 99, type: !489, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !477, !491}
!491 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !486, size: 64)
!492 = !DISubprogram(name: "exception_ptr", scope: !469, file: !470, line: 102, type: !493, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !477, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !44, line: 2367, baseType: !496)
!496 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!497 = !DISubprogram(name: "exception_ptr", scope: !469, file: !470, line: 106, type: !498, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !477, !500}
!500 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !469, size: 64)
!501 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !469, file: !470, line: 119, type: !502, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !477, !491}
!504 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !469, size: 64)
!505 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !469, file: !470, line: 123, type: !506, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!504, !477, !500}
!508 = !DISubprogram(name: "~exception_ptr", scope: !469, file: !470, line: 130, type: !479, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !469, file: !470, line: 133, type: !510, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !477, !504}
!512 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !469, file: !470, line: 145, type: !513, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!13, !485}
!515 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !469, file: !470, line: 154, type: !516, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !485}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !521, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!521 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/typeinfo", directory: "")
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !471, entity: !523, file: !470, line: 74)
!523 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !470, line: 70, type: !524, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !469}
!526 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !527, entity: !528, file: !529, line: 58)
!527 = !DINamespace(name: "__gnu_debug", scope: null)
!528 = !DINamespace(name: "__debug", scope: !2)
!529 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/debug/debug.h", directory: "")
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !531, file: !534, line: 47)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !532, line: 24, baseType: !533)
!532 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !196, line: 37, baseType: !200)
!534 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cstdint", directory: "")
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !534, line: 48)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !532, line: 25, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !196, line: 39, baseType: !538)
!538 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !534, line: 49)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !532, line: 26, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !196, line: 41, baseType: !11)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !543, file: !534, line: 50)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !532, line: 27, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !196, line: 44, baseType: !45)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !534, line: 52)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !547, line: 58, baseType: !200)
!547 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !534, line: 53)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !547, line: 60, baseType: !45)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !534, line: 54)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !547, line: 61, baseType: !45)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !534, line: 55)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !547, line: 62, baseType: !45)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !534, line: 57)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !547, line: 43, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !196, line: 52, baseType: !533)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !558, file: !534, line: 58)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !547, line: 44, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !196, line: 54, baseType: !537)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !534, line: 59)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !547, line: 45, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !196, line: 56, baseType: !541)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !534, line: 60)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !547, line: 46, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !196, line: 58, baseType: !544)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !567, file: !534, line: 62)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !547, line: 101, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !196, line: 72, baseType: !45)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !534, line: 63)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !547, line: 87, baseType: !45)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !572, file: !534, line: 65)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !573, line: 24, baseType: !574)
!573 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !196, line: 38, baseType: !46)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !534, line: 66)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !573, line: 25, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !196, line: 40, baseType: !198)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !534, line: 67)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !573, line: 26, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !196, line: 42, baseType: !151)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !534, line: 68)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !573, line: 27, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !196, line: 45, baseType: !58)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !585, file: !534, line: 70)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !547, line: 71, baseType: !46)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !534, line: 71)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !547, line: 73, baseType: !58)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !534, line: 72)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !547, line: 74, baseType: !58)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !534, line: 73)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !547, line: 75, baseType: !58)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !593, file: !534, line: 75)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !547, line: 49, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !196, line: 53, baseType: !574)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !534, line: 76)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !547, line: 50, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !196, line: 55, baseType: !577)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !599, file: !534, line: 77)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !547, line: 51, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !196, line: 57, baseType: !580)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !602, file: !534, line: 78)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !547, line: 52, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !196, line: 59, baseType: !583)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !534, line: 80)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !547, line: 102, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !196, line: 73, baseType: !58)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !534, line: 81)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !547, line: 90, baseType: !58)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !610, file: !612, line: 53)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !611, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!611 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!612 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/clocale", directory: "")
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !614, file: !612, line: 54)
!614 = !DISubprogram(name: "setlocale", scope: !611, file: !611, line: 122, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubroutineType(types: !616)
!616 = !{!83, !11, !87}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !612, line: 55)
!618 = !DISubprogram(name: "localeconv", scope: !611, file: !611, line: 125, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubroutineType(types: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !627, line: 64)
!623 = !DISubprogram(name: "isalnum", scope: !624, file: !624, line: 108, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!625 = !DISubroutineType(types: !626)
!626 = !{!11, !11}
!627 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cctype", directory: "")
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !627, line: 65)
!629 = !DISubprogram(name: "isalpha", scope: !624, file: !624, line: 109, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !627, line: 66)
!631 = !DISubprogram(name: "iscntrl", scope: !624, file: !624, line: 110, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !633, file: !627, line: 67)
!633 = !DISubprogram(name: "isdigit", scope: !624, file: !624, line: 111, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !627, line: 68)
!635 = !DISubprogram(name: "isgraph", scope: !624, file: !624, line: 113, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !627, line: 69)
!637 = !DISubprogram(name: "islower", scope: !624, file: !624, line: 112, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !627, line: 70)
!639 = !DISubprogram(name: "isprint", scope: !624, file: !624, line: 114, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !641, file: !627, line: 71)
!641 = !DISubprogram(name: "ispunct", scope: !624, file: !624, line: 115, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !643, file: !627, line: 72)
!643 = !DISubprogram(name: "isspace", scope: !624, file: !624, line: 116, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !627, line: 73)
!645 = !DISubprogram(name: "isupper", scope: !624, file: !624, line: 117, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !627, line: 74)
!647 = !DISubprogram(name: "isxdigit", scope: !624, file: !624, line: 118, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !627, line: 75)
!649 = !DISubprogram(name: "tolower", scope: !624, file: !624, line: 122, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !627, line: 76)
!651 = !DISubprogram(name: "toupper", scope: !624, file: !624, line: 125, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !627, line: 87)
!653 = !DISubprogram(name: "isblank", scope: !624, file: !624, line: 130, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !657, line: 52)
!655 = !DISubprogram(name: "abs", scope: !656, file: !656, line: 840, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!657 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/std_abs.h", directory: "")
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !661, line: 127)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !656, line: 62, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!661 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cstdlib", directory: "")
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !661, line: 128)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !656, line: 70, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !665, identifier: "_ZTS6ldiv_t")
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !664, file: !656, line: 68, baseType: !45, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !664, file: !656, line: 69, baseType: !45, size: 64, offset: 64)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !661, line: 130)
!669 = !DISubprogram(name: "abort", scope: !656, file: !656, line: 591, type: !670, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!670 = !DISubroutineType(types: !671)
!671 = !{null}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !661, line: 134)
!673 = !DISubprogram(name: "atexit", scope: !656, file: !656, line: 595, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{!11, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !661, line: 137)
!678 = !DISubprogram(name: "at_quick_exit", scope: !656, file: !656, line: 600, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !661, line: 140)
!680 = !DISubprogram(name: "atof", scope: !681, file: !681, line: 25, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!682 = !DISubroutineType(types: !683)
!683 = !{!380, !87}
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !661, line: 141)
!685 = !DISubprogram(name: "atoi", scope: !656, file: !656, line: 361, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DISubroutineType(types: !687)
!687 = !{!11, !87}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !661, line: 142)
!689 = !DISubprogram(name: "atol", scope: !656, file: !656, line: 366, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubroutineType(types: !691)
!691 = !{!45, !87}
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !693, file: !661, line: 143)
!693 = !DISubprogram(name: "bsearch", scope: !694, file: !694, line: 20, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!695 = !DISubroutineType(types: !696)
!696 = !{!68, !54, !54, !56, !56, !697}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !656, line: 808, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!11, !54, !54}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !661, line: 144)
!702 = !DISubprogram(name: "calloc", scope: !656, file: !656, line: 542, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DISubroutineType(types: !704)
!704 = !{!68, !56, !56}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !661, line: 145)
!706 = !DISubprogram(name: "div", scope: !656, file: !656, line: 852, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DISubroutineType(types: !708)
!708 = !{!659, !11, !11}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !661, line: 146)
!710 = !DISubprogram(name: "exit", scope: !656, file: !656, line: 617, type: !711, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !11}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !661, line: 147)
!714 = !DISubprogram(name: "free", scope: !656, file: !656, line: 565, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !68}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !718, file: !661, line: 148)
!718 = !DISubprogram(name: "getenv", scope: !656, file: !656, line: 634, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DISubroutineType(types: !720)
!720 = !{!83, !87}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !661, line: 149)
!722 = !DISubprogram(name: "labs", scope: !656, file: !656, line: 841, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{!45, !45}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !661, line: 150)
!726 = !DISubprogram(name: "ldiv", scope: !656, file: !656, line: 854, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!663, !45, !45}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !661, line: 151)
!730 = !DISubprogram(name: "malloc", scope: !656, file: !656, line: 539, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{!68, !56}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !661, line: 153)
!734 = !DISubprogram(name: "mblen", scope: !656, file: !656, line: 922, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DISubroutineType(types: !736)
!736 = !{!11, !87, !56}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !661, line: 154)
!738 = !DISubprogram(name: "mbstowcs", scope: !656, file: !656, line: 933, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubroutineType(types: !740)
!740 = !{!56, !230, !86, !56}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !661, line: 155)
!742 = !DISubprogram(name: "mbtowc", scope: !656, file: !656, line: 925, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DISubroutineType(types: !744)
!744 = !{!11, !230, !86, !56}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !661, line: 157)
!746 = !DISubprogram(name: "qsort", scope: !656, file: !656, line: 830, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !68, !56, !56, !697}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !661, line: 160)
!750 = !DISubprogram(name: "quick_exit", scope: !656, file: !656, line: 623, type: !711, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !661, line: 163)
!752 = !DISubprogram(name: "rand", scope: !656, file: !656, line: 453, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!11}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !756, file: !661, line: 164)
!756 = !DISubprogram(name: "realloc", scope: !656, file: !656, line: 550, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!68, !68, !56}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !760, file: !661, line: 165)
!760 = !DISubprogram(name: "srand", scope: !656, file: !656, line: 455, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !151}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !764, file: !661, line: 166)
!764 = !DISubprogram(name: "strtod", scope: !656, file: !656, line: 117, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubroutineType(types: !766)
!766 = !{!380, !86, !767}
!767 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !770, file: !661, line: 167)
!770 = !DISubprogram(name: "strtol", scope: !656, file: !656, line: 176, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = !DISubroutineType(types: !772)
!772 = !{!45, !86, !767, !11}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !661, line: 168)
!774 = !DISubprogram(name: "strtoul", scope: !656, file: !656, line: 180, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubroutineType(types: !776)
!776 = !{!58, !86, !767, !11}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !661, line: 169)
!778 = !DISubprogram(name: "system", scope: !656, file: !656, line: 784, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !661, line: 171)
!780 = !DISubprogram(name: "wcstombs", scope: !656, file: !656, line: 936, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DISubroutineType(types: !782)
!782 = !{!56, !85, !240, !56}
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !784, file: !661, line: 172)
!784 = !DISubprogram(name: "wctomb", scope: !656, file: !656, line: 929, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = !DISubroutineType(types: !786)
!786 = !{!11, !83, !229}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !788, file: !661, line: 200)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !656, line: 80, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !790, identifier: "_ZTS7lldiv_t")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !789, file: !656, line: 78, baseType: !452, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !789, file: !656, line: 79, baseType: !452, size: 64, offset: 64)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !794, file: !661, line: 206)
!794 = !DISubprogram(name: "_Exit", scope: !656, file: !656, line: 629, type: !711, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !796, file: !661, line: 210)
!796 = !DISubprogram(name: "llabs", scope: !656, file: !656, line: 844, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DISubroutineType(types: !798)
!798 = !{!452, !452}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !800, file: !661, line: 216)
!800 = !DISubprogram(name: "lldiv", scope: !656, file: !656, line: 858, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DISubroutineType(types: !802)
!802 = !{!788, !452, !452}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !804, file: !661, line: 227)
!804 = !DISubprogram(name: "atoll", scope: !656, file: !656, line: 373, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubroutineType(types: !806)
!806 = !{!452, !87}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !808, file: !661, line: 228)
!808 = !DISubprogram(name: "strtoll", scope: !656, file: !656, line: 200, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{!452, !86, !767, !11}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !812, file: !661, line: 229)
!812 = !DISubprogram(name: "strtoull", scope: !656, file: !656, line: 205, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubroutineType(types: !814)
!814 = !{!457, !86, !767, !11}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !816, file: !661, line: 231)
!816 = !DISubprogram(name: "strtof", scope: !656, file: !656, line: 123, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!387, !86, !767}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !820, file: !661, line: 232)
!820 = !DISubprogram(name: "strtold", scope: !656, file: !656, line: 126, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!821 = !DISubroutineType(types: !822)
!822 = !{!447, !86, !767}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !661, line: 240)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !661, line: 242)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !661, line: 244)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !661, line: 245)
!827 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !443, file: !661, line: 213, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !661, line: 246)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !661, line: 248)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !661, line: 249)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !661, line: 250)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !661, line: 251)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !661, line: 252)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !837, line: 98)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 7, baseType: !172)
!836 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!837 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cstdio", directory: "")
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !837, line: 99)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !840, line: 84, baseType: !841)
!840 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !842, line: 14, baseType: !843)
!842 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !842, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !837, line: 101)
!845 = !DISubprogram(name: "clearerr", scope: !840, file: !840, line: 757, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !837, line: 102)
!850 = !DISubprogram(name: "fclose", scope: !840, file: !840, line: 213, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubroutineType(types: !852)
!852 = !{!11, !848}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !837, line: 103)
!854 = !DISubprogram(name: "feof", scope: !840, file: !840, line: 759, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !837, line: 104)
!856 = !DISubprogram(name: "ferror", scope: !840, file: !840, line: 761, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !837, line: 105)
!858 = !DISubprogram(name: "fflush", scope: !840, file: !840, line: 218, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !837, line: 106)
!860 = !DISubprogram(name: "fgetc", scope: !840, file: !840, line: 485, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !837, line: 107)
!862 = !DISubprogram(name: "fgetpos", scope: !840, file: !840, line: 731, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DISubroutineType(types: !864)
!864 = !{!11, !865, !866}
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !848)
!866 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !837, line: 108)
!869 = !DISubprogram(name: "fgets", scope: !840, file: !840, line: 564, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubroutineType(types: !871)
!871 = !{!83, !85, !11, !865}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !837, line: 109)
!873 = !DISubprogram(name: "fopen", scope: !840, file: !840, line: 246, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{!848, !86, !86}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !837, line: 110)
!877 = !DISubprogram(name: "fprintf", scope: !840, file: !840, line: 326, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubroutineType(types: !879)
!879 = !{!11, !865, !86, null}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !837, line: 111)
!881 = !DISubprogram(name: "fputc", scope: !840, file: !840, line: 521, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DISubroutineType(types: !883)
!883 = !{!11, !11, !848}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !837, line: 112)
!885 = !DISubprogram(name: "fputs", scope: !840, file: !840, line: 626, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{!11, !86, !865}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !837, line: 113)
!889 = !DISubprogram(name: "fread", scope: !840, file: !840, line: 646, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!890 = !DISubroutineType(types: !891)
!891 = !{!56, !69, !56, !56, !865}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !837, line: 114)
!893 = !DISubprogram(name: "freopen", scope: !840, file: !840, line: 252, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubroutineType(types: !895)
!895 = !{!848, !86, !86, !865}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !837, line: 115)
!897 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !840, file: !840, line: 407, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !837, line: 116)
!899 = !DISubprogram(name: "fseek", scope: !840, file: !840, line: 684, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DISubroutineType(types: !901)
!901 = !{!11, !848, !45, !11}
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !837, line: 117)
!903 = !DISubprogram(name: "fsetpos", scope: !840, file: !840, line: 736, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{!11, !848, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !837, line: 118)
!909 = !DISubprogram(name: "ftell", scope: !840, file: !840, line: 689, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DISubroutineType(types: !911)
!911 = !{!45, !848}
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !837, line: 119)
!913 = !DISubprogram(name: "fwrite", scope: !840, file: !840, line: 652, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!56, !70, !56, !56, !865}
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !837, line: 120)
!917 = !DISubprogram(name: "getc", scope: !840, file: !840, line: 486, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !837, line: 121)
!919 = !DISubprogram(name: "getchar", scope: !920, file: !920, line: 47, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !922, file: !837, line: 126)
!922 = !DISubprogram(name: "perror", scope: !840, file: !840, line: 775, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !87}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !837, line: 127)
!926 = !DISubprogram(name: "printf", scope: !840, file: !840, line: 332, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{!11, !86, null}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !930, file: !837, line: 128)
!930 = !DISubprogram(name: "putc", scope: !840, file: !840, line: 522, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !932, file: !837, line: 129)
!932 = !DISubprogram(name: "putchar", scope: !920, file: !920, line: 82, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !934, file: !837, line: 130)
!934 = !DISubprogram(name: "puts", scope: !840, file: !840, line: 632, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !936, file: !837, line: 131)
!936 = !DISubprogram(name: "remove", scope: !840, file: !840, line: 146, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !938, file: !837, line: 132)
!938 = !DISubprogram(name: "rename", scope: !840, file: !840, line: 148, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !837, line: 133)
!940 = !DISubprogram(name: "rewind", scope: !840, file: !840, line: 694, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !942, file: !837, line: 134)
!942 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !840, file: !840, line: 410, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !837, line: 135)
!944 = !DISubprogram(name: "setbuf", scope: !840, file: !840, line: 304, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !865, !85}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !948, file: !837, line: 136)
!948 = !DISubprogram(name: "setvbuf", scope: !840, file: !840, line: 308, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubroutineType(types: !950)
!950 = !{!11, !865, !85, !11, !56}
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !952, file: !837, line: 137)
!952 = !DISubprogram(name: "sprintf", scope: !840, file: !840, line: 334, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!11, !85, !86, null}
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !837, line: 138)
!956 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !840, file: !840, line: 412, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubroutineType(types: !958)
!958 = !{!11, !86, !86, null}
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !960, file: !837, line: 139)
!960 = !DISubprogram(name: "tmpfile", scope: !840, file: !840, line: 173, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{!848}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !964, file: !837, line: 141)
!964 = !DISubprogram(name: "tmpnam", scope: !840, file: !840, line: 187, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!83, !83}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !837, line: 143)
!968 = !DISubprogram(name: "ungetc", scope: !840, file: !840, line: 639, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !970, file: !837, line: 144)
!970 = !DISubprogram(name: "vfprintf", scope: !840, file: !840, line: 341, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{!11, !865, !86, !303}
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !974, file: !837, line: 145)
!974 = !DISubprogram(name: "vprintf", scope: !920, file: !920, line: 39, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{!11, !86, !303}
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !978, file: !837, line: 146)
!978 = !DISubprogram(name: "vsprintf", scope: !840, file: !840, line: 349, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{!11, !85, !86, !303}
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !982, file: !837, line: 175)
!982 = !DISubprogram(name: "snprintf", scope: !840, file: !840, line: 354, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{!11, !85, !56, !86, null}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !986, file: !837, line: 176)
!986 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !840, file: !840, line: 451, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !988, file: !837, line: 177)
!988 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !840, file: !840, line: 456, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !990, file: !837, line: 178)
!990 = !DISubprogram(name: "vsnprintf", scope: !840, file: !840, line: 358, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!11, !85, !56, !86, !303}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !443, entity: !994, file: !837, line: 179)
!994 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !840, file: !840, line: 459, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!11, !86, !86, !303}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !982, file: !837, line: 185)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !986, file: !837, line: 186)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !837, line: 187)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !990, file: !837, line: 188)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !837, line: 189)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !1007, line: 82)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1004, line: 48, baseType: !1005)
!1004 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!1007 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/cwctype", directory: "")
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !1007, line: 83)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1010, line: 38, baseType: !58)
!1010 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !1007, line: 84)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1013, file: !1007, line: 86)
!1013 = !DISubprogram(name: "iswalnum", scope: !1010, file: !1010, line: 95, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !1007, line: 87)
!1015 = !DISubprogram(name: "iswalpha", scope: !1010, file: !1010, line: 101, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1017, file: !1007, line: 89)
!1017 = !DISubprogram(name: "iswblank", scope: !1010, file: !1010, line: 146, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !1007, line: 91)
!1019 = !DISubprogram(name: "iswcntrl", scope: !1010, file: !1010, line: 104, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !1007, line: 92)
!1021 = !DISubprogram(name: "iswctype", scope: !1010, file: !1010, line: 159, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!11, !158, !1009}
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !1007, line: 93)
!1025 = !DISubprogram(name: "iswdigit", scope: !1010, file: !1010, line: 108, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1027, file: !1007, line: 94)
!1027 = !DISubprogram(name: "iswgraph", scope: !1010, file: !1010, line: 112, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !1007, line: 95)
!1029 = !DISubprogram(name: "iswlower", scope: !1010, file: !1010, line: 117, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !1007, line: 96)
!1031 = !DISubprogram(name: "iswprint", scope: !1010, file: !1010, line: 120, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !1007, line: 97)
!1033 = !DISubprogram(name: "iswpunct", scope: !1010, file: !1010, line: 125, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !1007, line: 98)
!1035 = !DISubprogram(name: "iswspace", scope: !1010, file: !1010, line: 130, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !1007, line: 99)
!1037 = !DISubprogram(name: "iswupper", scope: !1010, file: !1010, line: 135, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !1007, line: 100)
!1039 = !DISubprogram(name: "iswxdigit", scope: !1010, file: !1010, line: 140, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !1007, line: 101)
!1041 = !DISubprogram(name: "towctrans", scope: !1004, file: !1004, line: 55, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!158, !158, !1003}
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !1007, line: 102)
!1045 = !DISubprogram(name: "towlower", scope: !1010, file: !1010, line: 166, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!158, !158}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !1007, line: 103)
!1049 = !DISubprogram(name: "towupper", scope: !1010, file: !1010, line: 169, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !1007, line: 104)
!1051 = !DISubprogram(name: "wctrans", scope: !1004, file: !1004, line: 52, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1003, !87}
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !1007, line: 105)
!1055 = !DISubprogram(name: "wctype", scope: !1010, file: !1010, line: 155, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1009, !87}
!1058 = !{i32 7, !"Dwarf Version", i32 4}
!1059 = !{i32 2, !"Debug Info Version", i32 3}
!1060 = !{i32 1, !"wchar_size", i32 4}
!1061 = !{!"clang version 10.0.1 (Fedora 10.0.1-3.fc32)"}
!1062 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !670, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1063)
!1063 = !{}
!1064 = !DILocation(line: 74, column: 25, scope: !1062)
!1065 = distinct !DISubprogram(name: "hacked", linkageName: "_Z6hackedv", scope: !29, file: !29, line: 7, type: !670, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1063)
!1066 = !DILocation(line: 10, column: 12, scope: !1065)
!1067 = !DILocation(line: 10, column: 24, scope: !1065)
!1068 = !DILocation(line: 11, column: 1, scope: !1065)
!1069 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", linkageName: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", scope: !2, file: !1070, line: 606, type: !1071, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1079, retainedNodes: !1076)
!1070 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/ostream", directory: "")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1073, !1073, !87}
!1073 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1075, line: 359, flags: DIFlagFwdDecl)
!1075 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/ostream.tcc", directory: "")
!1076 = !{!1077, !1078}
!1077 = !DILocalVariable(name: "__out", arg: 1, scope: !1069, file: !1070, line: 606, type: !1073)
!1078 = !DILocalVariable(name: "__s", arg: 2, scope: !1069, file: !1070, line: 606, type: !87)
!1079 = !{!1080}
!1080 = !DITemplateTypeParameter(name: "_Traits", type: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !1082, line: 316, size: 8, flags: DIFlagTypePassByValue, elements: !1083, templateParams: !1132, identifier: "_ZTSSt11char_traitsIcE")
!1082 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/char_traits.h", directory: "")
!1083 = !{!1084, !1091, !1094, !1095, !1100, !1103, !1106, !1110, !1111, !1114, !1120, !1123, !1126, !1129}
!1084 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !1081, file: !1082, line: 328, type: !1085, scopeLine: 328, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1081, file: !1082, line: 318, baseType: !84)
!1089 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1091 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !1081, file: !1082, line: 332, type: !1092, scopeLine: 332, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!13, !1089, !1089}
!1094 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !1081, file: !1082, line: 336, type: !1092, scopeLine: 336, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1095 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !1081, file: !1082, line: 344, type: !1096, scopeLine: 344, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!11, !1098, !1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !44, line: 2363, baseType: !58)
!1100 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1081, file: !1082, line: 358, type: !1101, scopeLine: 358, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1099, !1098}
!1103 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !1081, file: !1082, line: 368, type: !1104, scopeLine: 368, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1098, !1098, !1099, !1089}
!1106 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !1081, file: !1082, line: 382, type: !1107, scopeLine: 382, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109, !1109, !1098, !1099}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1110 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !1081, file: !1082, line: 394, type: !1107, scopeLine: 394, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1111 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !1081, file: !1082, line: 406, type: !1112, scopeLine: 406, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1109, !1109, !1099, !1088}
!1114 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !1081, file: !1082, line: 418, type: !1115, scopeLine: 418, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1088, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1081, file: !1082, line: 319, baseType: !11)
!1120 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !1081, file: !1082, line: 424, type: !1121, scopeLine: 424, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1119, !1089}
!1123 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !1081, file: !1082, line: 428, type: !1124, scopeLine: 428, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!13, !1117, !1117}
!1126 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !1081, file: !1082, line: 432, type: !1127, scopeLine: 432, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!1119}
!1129 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !1081, file: !1082, line: 436, type: !1130, scopeLine: 436, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1119, !1117}
!1132 = !{!1133}
!1133 = !DITemplateTypeParameter(name: "_CharT", type: !84)
!1134 = !DILocation(line: 0, scope: !1069)
!1135 = !DILocation(line: 608, column: 12, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1069, file: !1070, line: 608, column: 11)
!1137 = !DILocation(line: 608, column: 11, scope: !1069)
!1138 = !DILocation(line: 609, column: 2, scope: !1136)
!1139 = !{!1140, !1140, i64 0}
!1140 = !{!"vtable pointer", !1141, i64 0}
!1141 = !{!"Simple C++ TBAA"}
!1142 = !DILocation(line: 609, column: 8, scope: !1136)
!1143 = !DILocation(line: 612, column: 29, scope: !1136)
!1144 = !DILocation(line: 611, column: 2, scope: !1136)
!1145 = !DILocation(line: 613, column: 7, scope: !1069)
!1146 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1074, file: !1070, line: 108, type: !1147, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1155, retainedNodes: !1156)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1149, !1151, !1152}
!1149 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1074, file: !1070, line: 71, baseType: !1074)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1149, !1149}
!1155 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1074, file: !1070, line: 108, type: !1147, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !{!1157, !1159}
!1157 = !DILocalVariable(name: "this", arg: 1, scope: !1146, type: !1158, flags: DIFlagArtificial | DIFlagObjectPointer)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1159 = !DILocalVariable(name: "__pf", arg: 2, scope: !1146, file: !1070, line: 108, type: !1152)
!1160 = !DILocation(line: 0, scope: !1146)
!1161 = !DILocation(line: 113, column: 9, scope: !1146)
!1162 = !DILocation(line: 113, column: 2, scope: !1146)
!1163 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1070, line: 681, type: !1164, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1168, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1073, !1073}
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "__os", arg: 1, scope: !1163, file: !1070, line: 681, type: !1073)
!1168 = !{!1133, !1080}
!1169 = !DILocation(line: 0, scope: !1163)
!1170 = !DILocation(line: 682, column: 29, scope: !1163)
!1171 = !DILocation(line: 682, column: 34, scope: !1163)
!1172 = !DILocation(line: 682, column: 25, scope: !1163)
!1173 = !DILocation(line: 682, column: 14, scope: !1163)
!1174 = !DILocation(line: 682, column: 7, scope: !1163)
!1175 = distinct !DISubprogram(name: "overflow", linkageName: "_Z8overflowPc", scope: !29, file: !29, line: 13, type: !1176, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !83}
!1178 = !{!1179, !1180, !1184}
!1179 = !DILocalVariable(name: "entry", arg: 1, scope: !1175, file: !29, line: 13, type: !83)
!1180 = !DILocalVariable(name: "buf", scope: !1175, file: !29, line: 15, type: !1181)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 16, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 2)
!1184 = !DILocalVariable(name: "i", scope: !1185, file: !29, line: 17, type: !11)
!1185 = distinct !DILexicalBlock(scope: !1175, file: !29, line: 17, column: 2)
!1186 = !DILocation(line: 0, scope: !1175)
!1187 = !DILocation(line: 0, scope: !1185)
!1188 = !DILocation(line: 20, column: 1, scope: !1175)
!1189 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 22, type: !753, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1190)
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "entry", scope: !1189, file: !29, line: 24, type: !1192)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 176, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 22)
!1195 = !DILocation(line: 26, column: 2, scope: !1189)
!1196 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1198, file: !1197, line: 157, type: !1200, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1204, retainedNodes: !1205)
!1197 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/basic_ios.h", directory: "")
!1198 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !2, file: !1199, line: 178, flags: DIFlagFwdDecl)
!1199 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/basic_ios.tcc", directory: "")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !6, file: !5, line: 416, baseType: !31)
!1204 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1198, file: !1197, line: 157, type: !1200, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !{!1206, !1208}
!1206 = !DILocalVariable(name: "this", arg: 1, scope: !1196, type: !1207, flags: DIFlagArtificial | DIFlagObjectPointer)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1208 = !DILocalVariable(name: "__state", arg: 2, scope: !1196, file: !1197, line: 157, type: !1203)
!1209 = !DILocation(line: 0, scope: !1196)
!1210 = !DILocation(line: 158, column: 27, scope: !1196)
!1211 = !DILocation(line: 158, column: 37, scope: !1196)
!1212 = !DILocation(line: 158, column: 15, scope: !1196)
!1213 = !DILocation(line: 158, column: 49, scope: !1196)
!1214 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1081, file: !1082, line: 358, type: !1101, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1100, retainedNodes: !1215)
!1215 = !{!1216}
!1216 = !DILocalVariable(name: "__s", arg: 1, scope: !1214, file: !1082, line: 358, type: !1098)
!1217 = !DILocation(line: 0, scope: !1214)
!1218 = !DILocation(line: 364, column: 9, scope: !1214)
!1219 = !DILocation(line: 364, column: 2, scope: !1214)
!1220 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !2, file: !5, line: 169, type: !1221, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!31, !31, !31}
!1223 = !{!1224, !1225}
!1224 = !DILocalVariable(name: "__a", arg: 1, scope: !1220, file: !5, line: 169, type: !31)
!1225 = !DILocalVariable(name: "__b", arg: 2, scope: !1220, file: !5, line: 169, type: !31)
!1226 = !DILocation(line: 0, scope: !1220)
!1227 = !DILocation(line: 170, column: 47, scope: !1220)
!1228 = !DILocation(line: 170, column: 5, scope: !1220)
!1229 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1198, file: !1197, line: 137, type: !1230, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1234, retainedNodes: !1235)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!1203, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1234 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1198, file: !1197, line: 137, type: !1230, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "this", arg: 1, scope: !1229, type: !1237, flags: DIFlagArtificial | DIFlagObjectPointer)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1238 = !DILocation(line: 0, scope: !1229)
!1239 = !DILocation(line: 138, column: 16, scope: !1229)
!1240 = !{!1241, !1245, i64 32}
!1241 = !{!"_ZTSSt8ios_base", !1242, i64 8, !1242, i64 16, !1244, i64 24, !1245, i64 28, !1245, i64 32, !1246, i64 40, !1247, i64 48, !1243, i64 64, !1248, i64 192, !1246, i64 200, !1249, i64 208}
!1242 = !{!"long", !1243, i64 0}
!1243 = !{!"omnipotent char", !1141, i64 0}
!1244 = !{!"_ZTSSt13_Ios_Fmtflags", !1243, i64 0}
!1245 = !{!"_ZTSSt12_Ios_Iostate", !1243, i64 0}
!1246 = !{!"any pointer", !1243, i64 0}
!1247 = !{!"_ZTSNSt8ios_base6_WordsE", !1246, i64 0, !1242, i64 8}
!1248 = !{!"int", !1243, i64 0}
!1249 = !{!"_ZTSSt6locale", !1246, i64 0}
!1250 = !DILocation(line: 138, column: 9, scope: !1229)
!1251 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1070, line: 703, type: !1164, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1168, retainedNodes: !1252)
!1252 = !{!1253}
!1253 = !DILocalVariable(name: "__os", arg: 1, scope: !1251, file: !1070, line: 703, type: !1073)
!1254 = !DILocation(line: 0, scope: !1251)
!1255 = !DILocation(line: 704, column: 19, scope: !1251)
!1256 = !DILocation(line: 704, column: 7, scope: !1251)
!1257 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1198, file: !1197, line: 449, type: !1258, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1261, retainedNodes: !1262)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !1232, !84}
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1198, file: !1197, line: 76, baseType: !84)
!1261 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1198, file: !1197, line: 449, type: !1258, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !{!1263, !1264}
!1263 = !DILocalVariable(name: "this", arg: 1, scope: !1257, type: !1237, flags: DIFlagArtificial | DIFlagObjectPointer)
!1264 = !DILocalVariable(name: "__c", arg: 2, scope: !1257, file: !1197, line: 449, type: !84)
!1265 = !DILocation(line: 0, scope: !1257)
!1266 = !DILocation(line: 450, column: 30, scope: !1257)
!1267 = !{!1268, !1246, i64 240}
!1268 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1246, i64 216, !1243, i64 224, !1269, i64 225, !1246, i64 232, !1246, i64 240, !1246, i64 248, !1246, i64 256}
!1269 = !{!"bool", !1243, i64 0}
!1270 = !DILocation(line: 450, column: 16, scope: !1257)
!1271 = !DILocation(line: 450, column: 40, scope: !1257)
!1272 = !DILocation(line: 450, column: 9, scope: !1257)
!1273 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !2, file: !1197, line: 47, type: !1274, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1283, retainedNodes: !1281)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!1276, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !2, file: !1279, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!1279 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../include/c++/10/bits/locale_facets.h", directory: "")
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "__f", arg: 1, scope: !1273, file: !1197, line: 47, type: !1280)
!1283 = !{!1284}
!1284 = !DITemplateTypeParameter(name: "_Facet", type: !1278)
!1285 = !DILocation(line: 0, scope: !1273)
!1286 = !DILocation(line: 49, column: 12, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1273, file: !1197, line: 49, column: 11)
!1288 = !DILocation(line: 49, column: 11, scope: !1273)
!1289 = !DILocation(line: 50, column: 2, scope: !1287)
!1290 = !DILocation(line: 51, column: 7, scope: !1273)
!1291 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1278, file: !1279, line: 872, type: !1292, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1296, retainedNodes: !1297)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294, !1295, !84}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1278, file: !1279, line: 686, baseType: !84)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1296 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1278, file: !1279, line: 872, type: !1292, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !{!1298, !1299}
!1298 = !DILocalVariable(name: "this", arg: 1, scope: !1291, type: !1280, flags: DIFlagArtificial | DIFlagObjectPointer)
!1299 = !DILocalVariable(name: "__c", arg: 2, scope: !1291, file: !1279, line: 872, type: !84)
!1300 = !DILocation(line: 0, scope: !1291)
!1301 = !DILocation(line: 874, column: 6, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1291, file: !1279, line: 874, column: 6)
!1303 = !{!1304, !1243, i64 56}
!1304 = !{!"_ZTSSt5ctypeIcE", !1246, i64 16, !1269, i64 24, !1246, i64 32, !1246, i64 40, !1246, i64 48, !1243, i64 56, !1243, i64 57, !1243, i64 313, !1243, i64 569}
!1305 = !DILocation(line: 874, column: 6, scope: !1291)
!1306 = !DILocation(line: 875, column: 11, scope: !1302)
!1307 = !{!1243, !1243, i64 0}
!1308 = !DILocation(line: 875, column: 4, scope: !1302)
!1309 = !DILocation(line: 876, column: 8, scope: !1291)
!1310 = !DILocation(line: 877, column: 15, scope: !1291)
!1311 = !DILocation(line: 877, column: 2, scope: !1291)
!1312 = !DILocation(line: 878, column: 7, scope: !1291)
!1313 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_basic_overflow.cpp", scope: !29, file: !29, type: !1314, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1063)
!1314 = !DISubroutineType(types: !1063)
!1315 = !DILocation(line: 0, scope: !1313)
