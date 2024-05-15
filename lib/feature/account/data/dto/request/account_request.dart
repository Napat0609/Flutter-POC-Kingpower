import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_request.freezed.dart';
part 'account_request.g.dart';

@freezed
class AccountRequest with _$AccountRequest {
  const factory AccountRequest({
    int? id,
    String? name,
    String? lastName,
    String? email,
  }) = _AccountRequest;

  factory AccountRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRequestFromJson(json);
}
