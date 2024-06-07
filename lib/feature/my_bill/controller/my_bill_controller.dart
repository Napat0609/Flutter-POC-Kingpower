import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:poc_kingpower/core/loader/loader_controller.dart';
import 'package:poc_kingpower/feature/authentication/application/authentication_service.dart';
import 'package:poc_kingpower/feature/authentication/controller/state/authentication_state.dart';
import 'package:poc_kingpower/feature/authentication/data/dto/request/authentication_request.dart';
import 'package:poc_kingpower/feature/my_bill/controller/state/my_bill_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_bill_controller.g.dart';

@Riverpod(keepAlive: true)
class MyBillController extends _$MyBillController {
  @override
  MyBillState build() {
    return const MyBillState();
  }

  void _onLoader() {
    ref.read(loaderControllerProivder.notifier).onLoad();
  }

  void _onDismissLoad() {
    ref.read(loaderControllerProivder.notifier).onDismissLoad();
  }

  void setFormField(FormBuilderState formField) {
    state = state.copyWith(formField: formField);
  }

  Future<bool> onLogin() async {
    _onLoader();
    bool isSuccess = false;
    final formField = state.formField;

    final email = formField?.fields['email']?.value;
    final password = formField?.fields['password']?.value;

    final result = await ref.read(authenticationServiceProvider).loginUser(
          AuthenticationRequest(
            email: email,
            password: password,
          ),
        );

    result.when(
      (success) {
        _onDismissLoad();
        isSuccess = success;
      },
      (error) => _onDismissLoad(),
    );

    return isSuccess;
  }

  Future<bool> onLogout() async {
    _onLoader();
    bool isSuccess = false;
    final result = await ref.read(authenticationServiceProvider).logout();

    result.when(
      (success) {
        _onDismissLoad();
        isSuccess = success;
      },
      (error) => _onDismissLoad(),
    );

    return isSuccess;
  }

  Future<bool> onCreateUser() async {
    _onLoader();
    bool isSuccess = false;
    final formField = state.formField;
    final email = formField?.fields['email']?.value;
    final password = formField?.fields['password']?.value;
    final name = formField?.fields['name']?.value;
    final lastName = formField?.fields['lastName']?.value;

    final result = await ref.read(authenticationServiceProvider).createUser(
          AuthenticationRequest(
            email: email,
            password: password,
            name: name,
            lastName: lastName,
          ),
        );

    result.when(
      (success) {
        _onDismissLoad();
        isSuccess = success;
      },
      (error) => _onDismissLoad(),
    );

    return isSuccess;
  }
}
