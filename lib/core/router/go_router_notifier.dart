import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_notifier.g.dart';

@Riverpod(keepAlive: true)
GoRouterNotifier goRouterNotifier(GoRouterNotifierRef ref) {
  return GoRouterNotifier();
}

class GoRouterNotifier extends ChangeNotifier {
  bool _isLoggedIn = true;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }
}
