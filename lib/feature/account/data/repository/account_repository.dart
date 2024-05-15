import 'package:poc_kingpower/core/remote/supabase_provider.dart';
import 'package:poc_kingpower/feature/account/data/dto/response/account_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'account_repository.g.dart';

@riverpod
AccountRepository accountRepository(AccountRepositoryRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);

  return AccountRepository(supabaseClient);
}

class AccountRepository {
  final SupabaseClient supabaseClient;

  AccountRepository(
    this.supabaseClient,
  );

  SupabaseQueryBuilder get _userProfileTable => supabaseClient.from(
        "user_profile",
      );

  Future<AccountResponse?> getUserProfile() async {
    final session = supabaseClient.auth.currentSession;
    final userId = session?.user.id;
    if (userId == null) return null;

    final result = await _userProfileTable.select().eq("uuid", userId).single();

    return AccountResponse(
      id: int.parse("${result['id']}"),
      name: result["name"],
      lastName: result["last_name"],
      email: result["email"],
    );
  }
}
