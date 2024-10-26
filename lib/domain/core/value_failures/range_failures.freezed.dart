// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'range_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RangeFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T min) belowTheLimit,
    required TResult Function(T failedValue, T max) aboveTheLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T min)? belowTheLimit,
    TResult? Function(T failedValue, T max)? aboveTheLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T min)? belowTheLimit,
    TResult Function(T failedValue, T max)? aboveTheLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BelowTheLimit<T> value) belowTheLimit,
    required TResult Function(AboveTheLimit<T> value) aboveTheLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult? Function(AboveTheLimit<T> value)? aboveTheLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult Function(AboveTheLimit<T> value)? aboveTheLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RangeFailureCopyWith<T, RangeFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeFailureCopyWith<T, $Res> {
  factory $RangeFailureCopyWith(
          RangeFailure<T> value, $Res Function(RangeFailure<T>) then) =
      _$RangeFailureCopyWithImpl<T, $Res, RangeFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$RangeFailureCopyWithImpl<T, $Res, $Val extends RangeFailure<T>>
    implements $RangeFailureCopyWith<T, $Res> {
  _$RangeFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BelowTheLimitImplCopyWith<T, $Res>
    implements $RangeFailureCopyWith<T, $Res> {
  factory _$$BelowTheLimitImplCopyWith(_$BelowTheLimitImpl<T> value,
          $Res Function(_$BelowTheLimitImpl<T>) then) =
      __$$BelowTheLimitImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, T min});
}

/// @nodoc
class __$$BelowTheLimitImplCopyWithImpl<T, $Res>
    extends _$RangeFailureCopyWithImpl<T, $Res, _$BelowTheLimitImpl<T>>
    implements _$$BelowTheLimitImplCopyWith<T, $Res> {
  __$$BelowTheLimitImplCopyWithImpl(_$BelowTheLimitImpl<T> _value,
      $Res Function(_$BelowTheLimitImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
  }) {
    return _then(_$BelowTheLimitImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BelowTheLimitImpl<T>
    with DiagnosticableTreeMixin
    implements BelowTheLimit<T> {
  const _$BelowTheLimitImpl({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final T min;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RangeFailure<$T>.belowTheLimit(failedValue: $failedValue, min: $min)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RangeFailure<$T>.belowTheLimit'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('min', min));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BelowTheLimitImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.min, min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(min));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BelowTheLimitImplCopyWith<T, _$BelowTheLimitImpl<T>> get copyWith =>
      __$$BelowTheLimitImplCopyWithImpl<T, _$BelowTheLimitImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T min) belowTheLimit,
    required TResult Function(T failedValue, T max) aboveTheLimit,
  }) {
    return belowTheLimit(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T min)? belowTheLimit,
    TResult? Function(T failedValue, T max)? aboveTheLimit,
  }) {
    return belowTheLimit?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T min)? belowTheLimit,
    TResult Function(T failedValue, T max)? aboveTheLimit,
    required TResult orElse(),
  }) {
    if (belowTheLimit != null) {
      return belowTheLimit(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BelowTheLimit<T> value) belowTheLimit,
    required TResult Function(AboveTheLimit<T> value) aboveTheLimit,
  }) {
    return belowTheLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult? Function(AboveTheLimit<T> value)? aboveTheLimit,
  }) {
    return belowTheLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult Function(AboveTheLimit<T> value)? aboveTheLimit,
    required TResult orElse(),
  }) {
    if (belowTheLimit != null) {
      return belowTheLimit(this);
    }
    return orElse();
  }
}

abstract class BelowTheLimit<T> implements RangeFailure<T> {
  const factory BelowTheLimit(
      {required final T failedValue,
      required final T min}) = _$BelowTheLimitImpl<T>;

  @override
  T get failedValue;
  T get min;
  @override
  @JsonKey(ignore: true)
  _$$BelowTheLimitImplCopyWith<T, _$BelowTheLimitImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AboveTheLimitImplCopyWith<T, $Res>
    implements $RangeFailureCopyWith<T, $Res> {
  factory _$$AboveTheLimitImplCopyWith(_$AboveTheLimitImpl<T> value,
          $Res Function(_$AboveTheLimitImpl<T>) then) =
      __$$AboveTheLimitImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, T max});
}

/// @nodoc
class __$$AboveTheLimitImplCopyWithImpl<T, $Res>
    extends _$RangeFailureCopyWithImpl<T, $Res, _$AboveTheLimitImpl<T>>
    implements _$$AboveTheLimitImplCopyWith<T, $Res> {
  __$$AboveTheLimitImplCopyWithImpl(_$AboveTheLimitImpl<T> _value,
      $Res Function(_$AboveTheLimitImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$AboveTheLimitImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AboveTheLimitImpl<T>
    with DiagnosticableTreeMixin
    implements AboveTheLimit<T> {
  const _$AboveTheLimitImpl({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final T max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RangeFailure<$T>.aboveTheLimit(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RangeFailure<$T>.aboveTheLimit'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboveTheLimitImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboveTheLimitImplCopyWith<T, _$AboveTheLimitImpl<T>> get copyWith =>
      __$$AboveTheLimitImplCopyWithImpl<T, _$AboveTheLimitImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T min) belowTheLimit,
    required TResult Function(T failedValue, T max) aboveTheLimit,
  }) {
    return aboveTheLimit(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T min)? belowTheLimit,
    TResult? Function(T failedValue, T max)? aboveTheLimit,
  }) {
    return aboveTheLimit?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T min)? belowTheLimit,
    TResult Function(T failedValue, T max)? aboveTheLimit,
    required TResult orElse(),
  }) {
    if (aboveTheLimit != null) {
      return aboveTheLimit(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BelowTheLimit<T> value) belowTheLimit,
    required TResult Function(AboveTheLimit<T> value) aboveTheLimit,
  }) {
    return aboveTheLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult? Function(AboveTheLimit<T> value)? aboveTheLimit,
  }) {
    return aboveTheLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BelowTheLimit<T> value)? belowTheLimit,
    TResult Function(AboveTheLimit<T> value)? aboveTheLimit,
    required TResult orElse(),
  }) {
    if (aboveTheLimit != null) {
      return aboveTheLimit(this);
    }
    return orElse();
  }
}

abstract class AboveTheLimit<T> implements RangeFailure<T> {
  const factory AboveTheLimit(
      {required final T failedValue,
      required final T max}) = _$AboveTheLimitImpl<T>;

  @override
  T get failedValue;
  T get max;
  @override
  @JsonKey(ignore: true)
  _$$AboveTheLimitImplCopyWith<T, _$AboveTheLimitImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
