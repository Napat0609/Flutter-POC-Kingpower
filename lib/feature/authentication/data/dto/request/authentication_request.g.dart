// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationRequestImpl _$$AuthenticationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      uuid: json['uuid'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$AuthenticationRequestImplToJson(
        _$AuthenticationRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
      'uuid': instance.uuid,
      'password': instance.password,
    };
