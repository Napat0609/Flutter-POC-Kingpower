import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poc_kingpower/core/router/go_router_provider.dart';
import 'package:poc_kingpower/core/start_up/start_up_screen.dart';
import 'package:poc_kingpower/core/style/theme_data.dart';
import 'package:poc_kingpower/feature/setting/controller/setting_controller.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

FutureOr<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      await Supabase.initialize(
        url: "https://ogbpyqhlrtliqmyaqbhd.supabase.co",
        anonKey:
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9nYnB5cWhscnRsaXFteWFxYmhkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2NzM5MDQsImV4cCI6MjAzMTI0OTkwNH0.8sXjgIUmtQ7caeIqRoFcsPMIE5l2Bj4NCG7Ibs6YB9o",
      );

      runApp(
        ProviderScope(
          child: RootRestorationScope(
            restorationId: 'root',
            child: StartUpScreen(
              onLoaded: (context) => const MyApp(),
            ),
          ),
        ),
      );
    },
    (error, stack) => print(error),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    _listenerState();

    final router = ref.watch(goRouterProvider);

    final themeMode = ref.watch(settingControllerProvider.select(
      (value) => value.themeMode,
    ));

    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'main',
          title: 'Flutter Demo',
          routerConfig: router,
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
          themeMode: currentTheme(themeMode),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, child) {
            return SizedBox(
              child: child,
            );
          },
        );
      },
    );
  }

  void _listenerState() {
    ref.listen(
        settingControllerProvider.select(
          (value) => value.language,
        ), (previous, next) {
      context.setLocale(
        Locale(next),
      );
    });
  }
}
