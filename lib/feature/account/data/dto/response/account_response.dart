import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

@freezed
class AccountResponse with _$AccountResponse {
  const factory AccountResponse({
    int? id,
    String? name,
    String? lastName,
    String? email,
  }) = _AccountResponse;

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);
}
