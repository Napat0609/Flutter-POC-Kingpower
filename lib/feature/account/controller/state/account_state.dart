import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poc_kingpower/feature/account/data/dto/response/account_response.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    String? errorMsg,
    AccountResponse? accountResponse,
  }) = _AccountState;
}
