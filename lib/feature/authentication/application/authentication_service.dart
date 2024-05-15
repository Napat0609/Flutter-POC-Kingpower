import 'package:poc_kingpower/core/error/failure.dart';
import 'package:poc_kingpower/feature/authentication/data/dto/request/authentication_request.dart';
import 'package:poc_kingpower/feature/authentication/data/respository/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_service.g.dart';

@riverpod
AuthenticationService authenticationService(
  AuthenticationServiceRef ref,
) {
  final authenticationRepository = ref.watch(authenticationRepositoryProvider);

  return AuthenticationService(authenticationRepository);
}

class AuthenticationService {
  final AuthenticationRepository authenticationRepository;

  AuthenticationService(
    this.authenticationRepository,
  );

  Future<Result<bool, Failure>> createUser(
    AuthenticationRequest request,
  ) async {
    try {
      final result = await authenticationRepository.createUser(request);

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

  Future<Result<bool, Failure>> loginUser(
    AuthenticationRequest request,
  ) async {
    try {
      final result = await authenticationRepository.loginUser(request);

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

  Future<Result<bool, Failure>> logout() async {
    try {
      final result = await authenticationRepository.logout();

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
