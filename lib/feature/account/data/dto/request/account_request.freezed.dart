// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountRequest _$AccountRequestFromJson(Map<String, dynamic> json) {
  return _AccountRequest.fromJson(json);
}

/// @nodoc
mixin _$AccountRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountRequestCopyWith<AccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRequestCopyWith<$Res> {
  factory $AccountRequestCopyWith(
          AccountRequest value, $Res Function(AccountRequest) then) =
      _$AccountRequestCopyWithImpl<$Res, AccountRequest>;
  @useResult
  $Res call({int? id, String? name, String? lastName, String? email});
}

/// @nodoc
class _$AccountRequestCopyWithImpl<$Res, $Val extends AccountRequest>
    implements $AccountRequestCopyWith<$Res> {
  _$AccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountRequestImplCopyWith<$Res>
    implements $AccountRequestCopyWith<$Res> {
  factory _$$AccountRequestImplCopyWith(_$AccountRequestImpl value,
          $Res Function(_$AccountRequestImpl) then) =
      __$$AccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? lastName, String? email});
}

/// @nodoc
class __$$AccountRequestImplCopyWithImpl<$Res>
    extends _$AccountRequestCopyWithImpl<$Res, _$AccountRequestImpl>
    implements _$$AccountRequestImplCopyWith<$Res> {
  __$$AccountRequestImplCopyWithImpl(
      _$AccountRequestImpl _value, $Res Function(_$AccountRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AccountRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountRequestImpl implements _AccountRequest {
  const _$AccountRequestImpl({this.id, this.name, this.lastName, this.email});

  factory _$AccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? lastName;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountRequest(id: $id, name: $name, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRequestImplCopyWith<_$AccountRequestImpl> get copyWith =>
      __$$AccountRequestImplCopyWithImpl<_$AccountRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRequestImplToJson(
      this,
    );
  }
}

abstract class _AccountRequest implements AccountRequest {
  const factory _AccountRequest(
      {final int? id,
      final String? name,
      final String? lastName,
      final String? email}) = _$AccountRequestImpl;

  factory _AccountRequest.fromJson(Map<String, dynamic> json) =
      _$AccountRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$AccountRequestImplCopyWith<_$AccountRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
