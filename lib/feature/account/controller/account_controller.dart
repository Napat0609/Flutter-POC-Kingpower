import 'package:poc_kingpower/core/loader/loader_controller.dart';
import 'package:poc_kingpower/feature/account/application/account_service.dart';
import 'package:poc_kingpower/feature/account/controller/state/account_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@Riverpod(keepAlive: true)
class AccountController extends _$AccountController {
  @override
  AccountState build() {
    return const AccountState();
  }

  void _onLoader() {
    ref.read(loaderControllerProivder.notifier).onLoad();
  }

  void _onDismissLoad() {
    ref.read(loaderControllerProivder.notifier).onDismissLoad();
  }

  void getUserProfile() async {
    _onLoader();
    final result = await ref.read(accountServiceProvider).getUserProfile();

    result.when(
      (success) {
        _onDismissLoad();
        state = state.copyWith(accountResponse: success);
      },
      (error) {
        _onDismissLoad();
      },
    );
  }
}
