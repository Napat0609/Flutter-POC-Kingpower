// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_bill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBillResponseImpl _$$MyBillResponseImplFromJson(Map<String, dynamic> json) =>
    _$MyBillResponseImpl(
      price: (json['price'] as num?)?.toDouble(),
      kg: (json['kg'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MyBillResponseImplToJson(
        _$MyBillResponseImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'kg': instance.kg,
      'createdAt': instance.createdAt?.toIso8601String(),
      'totalPrice': instance.totalPrice,
    };
