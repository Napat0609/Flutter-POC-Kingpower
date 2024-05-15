import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_request.freezed.dart';
part 'authentication_request.g.dart';

@freezed
class AuthenticationRequest with _$AuthenticationRequest {
  const factory AuthenticationRequest({
    int? id,
    String? name,
    String? lastName,
    String? email,
    String? uuid,
    String? password,
  }) = _AuthenticationRequest;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationRequestFromJson(json);
}
