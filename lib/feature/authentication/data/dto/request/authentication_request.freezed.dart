// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationRequest _$AuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationRequestCopyWith<AuthenticationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRequestCopyWith<$Res> {
  factory $AuthenticationRequestCopyWith(AuthenticationRequest value,
          $Res Function(AuthenticationRequest) then) =
      _$AuthenticationRequestCopyWithImpl<$Res, AuthenticationRequest>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? lastName,
      String? email,
      String? uuid,
      String? password});
}

/// @nodoc
class _$AuthenticationRequestCopyWithImpl<$Res,
        $Val extends AuthenticationRequest>
    implements $AuthenticationRequestCopyWith<$Res> {
  _$AuthenticationRequestCopyWithImpl(this._value, this._then);

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
    Object? uuid = freezed,
    Object? password = freezed,
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
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationRequestImplCopyWith<$Res>
    implements $AuthenticationRequestCopyWith<$Res> {
  factory _$$AuthenticationRequestImplCopyWith(
          _$AuthenticationRequestImpl value,
          $Res Function(_$AuthenticationRequestImpl) then) =
      __$$AuthenticationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? lastName,
      String? email,
      String? uuid,
      String? password});
}

/// @nodoc
class __$$AuthenticationRequestImplCopyWithImpl<$Res>
    extends _$AuthenticationRequestCopyWithImpl<$Res,
        _$AuthenticationRequestImpl>
    implements _$$AuthenticationRequestImplCopyWith<$Res> {
  __$$AuthenticationRequestImplCopyWithImpl(_$AuthenticationRequestImpl _value,
      $Res Function(_$AuthenticationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? uuid = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AuthenticationRequestImpl(
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
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRequestImpl implements _AuthenticationRequest {
  const _$AuthenticationRequestImpl(
      {this.id,
      this.name,
      this.lastName,
      this.email,
      this.uuid,
      this.password});

  factory _$AuthenticationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? uuid;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthenticationRequest(id: $id, name: $name, lastName: $lastName, email: $email, uuid: $uuid, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, lastName, email, uuid, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => __$$AuthenticationRequestImplCopyWithImpl<
          _$AuthenticationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationRequest implements AuthenticationRequest {
  const factory _AuthenticationRequest(
      {final int? id,
      final String? name,
      final String? lastName,
      final String? email,
      final String? uuid,
      final String? password}) = _$AuthenticationRequestImpl;

  factory _AuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get uuid;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
