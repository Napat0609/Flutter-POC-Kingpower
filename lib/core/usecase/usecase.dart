// import 'package:multiple_result/multiple_result.dart';
// import 'package:poc_kingpower/core/error/failure.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// sealed class Usecase {
//   Future<Result<R, Failure>> execute(P request);
// }

// final class CallApi<P, R> extends Usecase<P, R> {
//   @override
//   Future<Result<R, Failure>> execute(P request) async {
//     try {
//       final result = await exec(request);
//       return Success(result);
//     } on PostgrestException catch (e) {
//       return Error(
//         Failure(message: e.message),
//       );
//     } on AuthException catch (e) {
//       return Error(
//         Failure(message: e.message),
//       );
//     }
//   }
// }
