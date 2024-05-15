import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartUpError extends ConsumerWidget {
  final Object error;
  final StackTrace? stackTrace;
  final VoidCallback? retryAction;
  const StartUpError({
    super.key,
    required this.error,
    this.stackTrace,
    this.retryAction,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(error.toString()),
                const SizedBox.shrink(),
                if (stackTrace != null) ...[
                  Text(stackTrace.toString()),
                ],
                const SizedBox(height: 8),
                if (retryAction != null) ...[
                  ElevatedButton(
                    onPressed: retryAction,
                    child: const Text('Retry'),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
