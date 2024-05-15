import 'dart:io';

import 'package:poc_kingpower/core/remote/supabase_provider.dart';
import 'package:poc_kingpower/feature/authentication/data/dto/request/authentication_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(
  AuthenticationRepositoryRef ref,
) {
  final supabaseClient = ref.watch(supabaseClientProvider);

  return AuthenticationRepository(supabaseClient);
}

class AuthenticationRepository {
  final SupabaseClient supabaseClient;

  AuthenticationRepository(
    this.supabaseClient,
  );

  SupabaseQueryBuilder get _userProfileTable => supabaseClient.from(
        "user_profile",
      );

  Future<bool> createUser(
    AuthenticationRequest request,
  ) async {
    final email = request.email;
    final password = request.password;

    final result = await supabaseClient.auth.signUp(
      email: email,
      password: "$password",
    );

    final userId = result.user?.id;

    if (userId == null) return false;

    final _request = {
      "name": request.name,
      "last_name": request.lastName,
      "email": email,
      "uuid": result.user?.id,
    };

    await _userProfileTable.insert(_request);

    return true;
  }

  Future<bool> loginUser(
    AuthenticationRequest request,
  ) async {
    final email = request.email;
    final password = request.password;

    await supabaseClient.auth.signInWithPassword(
      email: email,
      password: "$password",
    );

    return true;
  }

  Future<bool> logout() async {
    await supabaseClient.auth.signOut();

    return true;
  }
}
