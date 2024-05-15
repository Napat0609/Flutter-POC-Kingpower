import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    String? errorMsg,
    @Default(false) bool isLoading,
    FormBuilderState? formField,
  }) = _AuthenticationState;
}
