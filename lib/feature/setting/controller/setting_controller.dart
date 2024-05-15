import 'package:poc_kingpower/feature/setting/controller/state/setting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_controller.g.dart';

@Riverpod(keepAlive: true)
class SettingController extends _$SettingController {
  @override
  SettingState build() {
    return const SettingState();
  }

  void setLanguageCode() {
    final laguage = state.language;

    if (laguage == 'th') {
      state = state.copyWith(language: 'en');
    } else {
      state = state.copyWith(language: 'th');
    }
  }

  void setThemeMode() {
    final themeMode = state.themeMode;

    if (themeMode == 'light') {
      state = state.copyWith(themeMode: 'dark');
    } else {
      state = state.copyWith(themeMode: 'light');
    }
  }
}
