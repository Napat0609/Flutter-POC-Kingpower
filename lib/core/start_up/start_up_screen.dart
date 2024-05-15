import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_kingpower/core/start_up/start_up_error.dart';
import 'package:poc_kingpower/core/start_up/start_up_loading.dart';
import 'package:poc_kingpower/core/start_up/start_up_provider.dart';

class StartUpScreen extends ConsumerWidget {
  final WidgetBuilder onLoaded;
  const StartUpScreen({
    super.key,
    required this.onLoaded,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startUp = ref.watch(startUpProvider);

    return EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('th'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: startUp.when(
        data: (_) => onLoaded(context),
        error: (error, stackTrace) {
          return StartUpError(
            error: error,
            stackTrace: stackTrace,
            retryAction: () => ref.invalidate(startUpProvider),
          );
        },
        loading: () => const StartUpLoading(),
      ),
    );
  }
}
