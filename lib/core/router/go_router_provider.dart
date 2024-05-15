import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_kingpower/core/remote/supabase_provider.dart';
import 'package:poc_kingpower/core/router/go_router_notifier.dart';
import 'package:poc_kingpower/core/router/route_name.dart';
import 'package:poc_kingpower/core/router/route_observer_provider.dart';
import 'package:poc_kingpower/feature/account/screen/account_screen.dart';
import 'package:poc_kingpower/feature/authentication/screen/sign_in_screen.dart';
import 'package:poc_kingpower/feature/authentication/screen/sign_up_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  bool isDuplicate = false;
  final notifier = ref.read(goRouterNotifierProvider);
  final observer = ref.read(routeObserverProvider);
  final navigatorObserver = ref.read(appNavigatorObserverProvider);

  return GoRouter(
    restorationScopeId: 'router',
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    refreshListenable: notifier,
    observers: [observer, navigatorObserver],
    redirect: (context, state) async {
      if (isDuplicate) {
        isDuplicate = false;
      }

      return null;
    },
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/',
        name: mainRoute,
        builder: (context, state) => SignInScreen(key: state.pageKey),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/signUp',
        name: signUpRoute,
        builder: (context, state) => SignUpScreen(key: state.pageKey),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/signIn',
        name: signInRoute,
        builder: (context, state) => SignInScreen(key: state.pageKey),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/accountRoute',
        name: accountRoute,
        builder: (context, state) => AccountScreen(key: state.pageKey),
      ),
    ],
    errorBuilder: (context, state) => const SizedBox.shrink(),
  );
}
