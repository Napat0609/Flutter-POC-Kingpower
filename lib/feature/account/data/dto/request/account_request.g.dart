// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountRequestImpl _$$AccountRequestImplFromJson(Map<String, dynamic> json) =>
    _$AccountRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AccountRequestImplToJson(
        _$AccountRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
    };
