import 'package:poc_kingpower/core/error/failure.dart';
import 'package:poc_kingpower/core/usecase/usecase.dart';
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
    final result = await CallApi.execute<Future<bool>, bool>(
      authenticationRepository.createUser(request),
    );

    return result;
  }

  Future<Result<bool, Failure>> loginUser(
    AuthenticationRequest request,
  ) async {
    final result = await CallApi.execute<Future<bool>, bool>(
      authenticationRepository.loginUser(request),
    );

    return result;
  }

  Future<Result<bool, Failure>> logout() async {
    final result = await CallApi.execute<Future<bool>, bool>(
      authenticationRepository.logout(),
    );

    return result;
  }

  void getPdf() {
    CallApi.execute<void, void>(
      authenticationRepository.getPdf(),
    );
  }
}
