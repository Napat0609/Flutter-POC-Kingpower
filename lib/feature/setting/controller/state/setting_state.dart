import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default('en') String language,
    @Default('light') String themeMode,
  }) = _SettingState;
}
