// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bill_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyBillResponse _$MyBillResponseFromJson(Map<String, dynamic> json) {
  return _MyBillResponse.fromJson(json);
}

/// @nodoc
mixin _$MyBillResponse {
  double? get price => throw _privateConstructorUsedError;
  double? get kg => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyBillResponseCopyWith<MyBillResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBillResponseCopyWith<$Res> {
  factory $MyBillResponseCopyWith(
          MyBillResponse value, $Res Function(MyBillResponse) then) =
      _$MyBillResponseCopyWithImpl<$Res, MyBillResponse>;
  @useResult
  $Res call(
      {double? price, double? kg, DateTime? createdAt, double? totalPrice});
}

/// @nodoc
class _$MyBillResponseCopyWithImpl<$Res, $Val extends MyBillResponse>
    implements $MyBillResponseCopyWith<$Res> {
  _$MyBillResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? kg = freezed,
    Object? createdAt = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      kg: freezed == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBillResponseImplCopyWith<$Res>
    implements $MyBillResponseCopyWith<$Res> {
  factory _$$MyBillResponseImplCopyWith(_$MyBillResponseImpl value,
          $Res Function(_$MyBillResponseImpl) then) =
      __$$MyBillResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? price, double? kg, DateTime? createdAt, double? totalPrice});
}

/// @nodoc
class __$$MyBillResponseImplCopyWithImpl<$Res>
    extends _$MyBillResponseCopyWithImpl<$Res, _$MyBillResponseImpl>
    implements _$$MyBillResponseImplCopyWith<$Res> {
  __$$MyBillResponseImplCopyWithImpl(
      _$MyBillResponseImpl _value, $Res Function(_$MyBillResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? kg = freezed,
    Object? createdAt = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$MyBillResponseImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      kg: freezed == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyBillResponseImpl implements _MyBillResponse {
  const _$MyBillResponseImpl(
      {this.price, this.kg, this.createdAt, this.totalPrice});

  factory _$MyBillResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBillResponseImplFromJson(json);

  @override
  final double? price;
  @override
  final double? kg;
  @override
  final DateTime? createdAt;
  @override
  final double? totalPrice;

  @override
  String toString() {
    return 'MyBillResponse(price: $price, kg: $kg, createdAt: $createdAt, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBillResponseImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.kg, kg) || other.kg == kg) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, kg, createdAt, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBillResponseImplCopyWith<_$MyBillResponseImpl> get copyWith =>
      __$$MyBillResponseImplCopyWithImpl<_$MyBillResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBillResponseImplToJson(
      this,
    );
  }
}

abstract class _MyBillResponse implements MyBillResponse {
  const factory _MyBillResponse(
      {final double? price,
      final double? kg,
      final DateTime? createdAt,
      final double? totalPrice}) = _$MyBillResponseImpl;

  factory _MyBillResponse.fromJson(Map<String, dynamic> json) =
      _$MyBillResponseImpl.fromJson;

  @override
  double? get price;
  @override
  double? get kg;
  @override
  DateTime? get createdAt;
  @override
  double? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$MyBillResponseImplCopyWith<_$MyBillResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
