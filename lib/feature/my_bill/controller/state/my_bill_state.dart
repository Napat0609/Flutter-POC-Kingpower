import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_bill_state.freezed.dart';

@freezed
class MyBillState with _$MyBillState {
  const factory MyBillState({
    String? errorMsg,
    @Default(false) bool isLoading,
    FormBuilderState? formField,
  }) = _MyBillState;
}
