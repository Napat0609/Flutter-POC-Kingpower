import 'package:multiple_result/multiple_result.dart';
import 'package:poc_kingpower/core/error/failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

 class CallApi {
  CallApi._();

  static Future<Result<R, Failure>> execute<T, R>(T request) async {
    try {
      final result = await (request as dynamic);
      return Success(result);
    } on PostgrestException catch (e) {
      return Error(
        Failure(message: e.message),
      );
    } on AuthException catch (e) {
      return Error(
        Failure(message: e.message),
      );
    }
  }
}
