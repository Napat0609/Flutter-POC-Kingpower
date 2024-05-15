import 'package:multiple_result/multiple_result.dart';
import 'package:poc_kingpower/core/error/failure.dart';
import 'package:poc_kingpower/feature/account/data/dto/response/account_response.dart';
import 'package:poc_kingpower/feature/account/data/repository/account_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'account_service.g.dart';

@riverpod
AccountService accountService(AccountServiceRef ref) {
  final accountRepository = ref.watch(accountRepositoryProvider);

  return AccountService(accountRepository);
}

class AccountService {
  final AccountRepository accountRepository;

  AccountService(
    this.accountRepository,
  );

  Future<Result<AccountResponse?, Failure>> getUserProfile() async {
    try {
      final result = await accountRepository.getUserProfile();

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
