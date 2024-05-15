// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  String? get errorMsg => throw _privateConstructorUsedError;
  AccountResponse? get accountResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({String? errorMsg, AccountResponse? accountResponse});

  $AccountResponseCopyWith<$Res>? get accountResponse;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? accountResponse = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      accountResponse: freezed == accountResponse
          ? _value.accountResponse
          : accountResponse // ignore: cast_nullable_to_non_nullable
              as AccountResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountResponseCopyWith<$Res>? get accountResponse {
    if (_value.accountResponse == null) {
      return null;
    }

    return $AccountResponseCopyWith<$Res>(_value.accountResponse!, (value) {
      return _then(_value.copyWith(accountResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMsg, AccountResponse? accountResponse});

  @override
  $AccountResponseCopyWith<$Res>? get accountResponse;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? accountResponse = freezed,
  }) {
    return _then(_$AccountStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      accountResponse: freezed == accountResponse
          ? _value.accountResponse
          : accountResponse // ignore: cast_nullable_to_non_nullable
              as AccountResponse?,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl({this.errorMsg, this.accountResponse});

  @override
  final String? errorMsg;
  @override
  final AccountResponse? accountResponse;

  @override
  String toString() {
    return 'AccountState(errorMsg: $errorMsg, accountResponse: $accountResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.accountResponse, accountResponse) ||
                other.accountResponse == accountResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg, accountResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final String? errorMsg,
      final AccountResponse? accountResponse}) = _$AccountStateImpl;

  @override
  String? get errorMsg;
  @override
  AccountResponse? get accountResponse;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
