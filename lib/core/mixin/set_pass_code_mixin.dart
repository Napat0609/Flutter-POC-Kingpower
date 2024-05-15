import 'package:flutter/widgets.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

mixin SetPassCodeScreen {
  void setPassCode(
    BuildContext context, {
    required InputController inputController,
    required void Function(String) didConfirmed,
    Widget title = const Text('Create your PassCode'),
    Widget conformTitle = const Text('Enter your confirm PassCode'),
    bool useLandscape = false,
    Widget? footer,
  }) {
    screenLockCreate(
      context: context,
      title: title,
      confirmTitle: conformTitle,
      digits: 6,
      useLandscape: useLandscape,
      inputController: inputController,
      onConfirmed: didConfirmed,
      footer: footer,
    );
  }
}
