import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_observer_provider.g.dart';

@Riverpod(keepAlive: true)
RouteObserver routeObserver(
  RouteObserverRef ref,
) {
  return RouteObserver<ModalRoute>();
}

@Riverpod(keepAlive: true)
NavigatorObserver appNavigatorObserver(
  AppNavigatorObserverRef ref,
) {
  return AppNavigatorObserver();
}

class AppNavigatorObserver extends NavigatorObserver {
  AppNavigatorObserver();

  @override
  void didPush(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    super.didPush(route, previousRoute);
  }
}
