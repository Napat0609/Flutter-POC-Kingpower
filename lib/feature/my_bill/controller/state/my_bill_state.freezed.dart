// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bill_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyBillState {
  String? get errorMsg => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  FormBuilderState? get formField => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyBillStateCopyWith<MyBillState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBillStateCopyWith<$Res> {
  factory $MyBillStateCopyWith(
          MyBillState value, $Res Function(MyBillState) then) =
      _$MyBillStateCopyWithImpl<$Res, MyBillState>;
  @useResult
  $Res call({String? errorMsg, bool isLoading, FormBuilderState? formField});
}

/// @nodoc
class _$MyBillStateCopyWithImpl<$Res, $Val extends MyBillState>
    implements $MyBillStateCopyWith<$Res> {
  _$MyBillStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? isLoading = null,
    Object? formField = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formField: freezed == formField
          ? _value.formField
          : formField // ignore: cast_nullable_to_non_nullable
              as FormBuilderState?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBillStateImplCopyWith<$Res>
    implements $MyBillStateCopyWith<$Res> {
  factory _$$MyBillStateImplCopyWith(
          _$MyBillStateImpl value, $Res Function(_$MyBillStateImpl) then) =
      __$$MyBillStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMsg, bool isLoading, FormBuilderState? formField});
}

/// @nodoc
class __$$MyBillStateImplCopyWithImpl<$Res>
    extends _$MyBillStateCopyWithImpl<$Res, _$MyBillStateImpl>
    implements _$$MyBillStateImplCopyWith<$Res> {
  __$$MyBillStateImplCopyWithImpl(
      _$MyBillStateImpl _value, $Res Function(_$MyBillStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? isLoading = null,
    Object? formField = freezed,
  }) {
    return _then(_$MyBillStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formField: freezed == formField
          ? _value.formField
          : formField // ignore: cast_nullable_to_non_nullable
              as FormBuilderState?,
    ));
  }
}

/// @nodoc

class _$MyBillStateImpl implements _MyBillState {
  const _$MyBillStateImpl(
      {this.errorMsg, this.isLoading = false, this.formField});

  @override
  final String? errorMsg;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final FormBuilderState? formField;

  @override
  String toString() {
    return 'MyBillState(errorMsg: $errorMsg, isLoading: $isLoading, formField: $formField)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBillStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formField, formField) ||
                other.formField == formField));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg, isLoading, formField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBillStateImplCopyWith<_$MyBillStateImpl> get copyWith =>
      __$$MyBillStateImplCopyWithImpl<_$MyBillStateImpl>(this, _$identity);
}

abstract class _MyBillState implements MyBillState {
  const factory _MyBillState(
      {final String? errorMsg,
      final bool isLoading,
      final FormBuilderState? formField}) = _$MyBillStateImpl;

  @override
  String? get errorMsg;
  @override
  bool get isLoading;
  @override
  FormBuilderState? get formField;
  @override
  @JsonKey(ignore: true)
  _$$MyBillStateImplCopyWith<_$MyBillStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
