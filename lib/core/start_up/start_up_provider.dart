import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(StartUpRef ref) async {
  ref.onDispose(() {});
}
