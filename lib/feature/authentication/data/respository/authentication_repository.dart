import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';
import 'package:poc_kingpower/core/remote/supabase_provider.dart';
import 'package:poc_kingpower/feature/authentication/data/dto/request/authentication_request.dart';
import 'package:poc_kingpower/feature/authentication/data/service/stream_service_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(
  AuthenticationRepositoryRef ref,
) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  final streamServiceApi = ref.watch(streamServiceApiProvider);

  return AuthenticationRepository(supabaseClient, streamServiceApi);
}

class AuthenticationRepository {
  final SupabaseClient supabaseClient;
  final StreamServiceApi streamServiceApi;

  AuthenticationRepository(
    this.supabaseClient,
    this.streamServiceApi,
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

  void getPdf() async {
    final result = await streamServiceApi.getPdf();

    final _path = await getApplicationDocumentsDirectory();

    final file = File(
      '${(_path).path}/sys_${Random().nextInt(100)}_${DateTime.now()}.pdf',
    );
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }

    // Write the response bytes to the file
    await file.writeAsBytes(result, flush: true);
  }
}
