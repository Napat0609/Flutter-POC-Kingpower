// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountResponseImpl _$$AccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AccountResponseImplToJson(
        _$AccountResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
    };
