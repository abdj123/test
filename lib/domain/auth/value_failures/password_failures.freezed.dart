// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordFailure {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyPassword,
    required TResult Function(String failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyPassword,
    TResult? Function(String failedValue)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyPassword,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPassword value) emptyPassword,
    required TResult Function(ShortPassword value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyPassword value)? emptyPassword,
    TResult? Function(ShortPassword value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPassword value)? emptyPassword,
    TResult Function(ShortPassword value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordFailureCopyWith<PasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureCopyWith(
          PasswordFailure value, $Res Function(PasswordFailure) then) =
      _$PasswordFailureCopyWithImpl<$Res, PasswordFailure>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class _$PasswordFailureCopyWithImpl<$Res, $Val extends PasswordFailure>
    implements $PasswordFailureCopyWith<$Res> {
  _$PasswordFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyPasswordImplCopyWith<$Res>
    implements $PasswordFailureCopyWith<$Res> {
  factory _$$EmptyPasswordImplCopyWith(
          _$EmptyPasswordImpl value, $Res Function(_$EmptyPasswordImpl) then) =
      __$$EmptyPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$EmptyPasswordImplCopyWithImpl<$Res>
    extends _$PasswordFailureCopyWithImpl<$Res, _$EmptyPasswordImpl>
    implements _$$EmptyPasswordImplCopyWith<$Res> {
  __$$EmptyPasswordImplCopyWithImpl(
      _$EmptyPasswordImpl _value, $Res Function(_$EmptyPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$EmptyPasswordImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyPasswordImpl implements EmptyPassword {
  const _$EmptyPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'PasswordFailure.emptyPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyPasswordImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyPasswordImplCopyWith<_$EmptyPasswordImpl> get copyWith =>
      __$$EmptyPasswordImplCopyWithImpl<_$EmptyPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyPassword,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return emptyPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyPassword,
    TResult? Function(String failedValue)? shortPassword,
  }) {
    return emptyPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyPassword,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPassword value) emptyPassword,
    required TResult Function(ShortPassword value) shortPassword,
  }) {
    return emptyPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyPassword value)? emptyPassword,
    TResult? Function(ShortPassword value)? shortPassword,
  }) {
    return emptyPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPassword value)? emptyPassword,
    TResult Function(ShortPassword value)? shortPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword(this);
    }
    return orElse();
  }
}

abstract class EmptyPassword implements PasswordFailure {
  const factory EmptyPassword({required final String failedValue}) =
      _$EmptyPasswordImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyPasswordImplCopyWith<_$EmptyPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<$Res>
    implements $PasswordFailureCopyWith<$Res> {
  factory _$$ShortPasswordImplCopyWith(
          _$ShortPasswordImpl value, $Res Function(_$ShortPasswordImpl) then) =
      __$$ShortPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<$Res>
    extends _$PasswordFailureCopyWithImpl<$Res, _$ShortPasswordImpl>
    implements _$$ShortPasswordImplCopyWith<$Res> {
  __$$ShortPasswordImplCopyWithImpl(
      _$ShortPasswordImpl _value, $Res Function(_$ShortPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ShortPasswordImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl implements ShortPassword {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'PasswordFailure.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<_$ShortPasswordImpl> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<_$ShortPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyPassword,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyPassword,
    TResult? Function(String failedValue)? shortPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyPassword,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPassword value) emptyPassword,
    required TResult Function(ShortPassword value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyPassword value)? emptyPassword,
    TResult? Function(ShortPassword value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPassword value)? emptyPassword,
    TResult Function(ShortPassword value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword implements PasswordFailure {
  const factory ShortPassword({required final String failedValue}) =
      _$ShortPasswordImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<_$ShortPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
