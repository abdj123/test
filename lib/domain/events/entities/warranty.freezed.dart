// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warranty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Warranty {
  bool? get enabled => throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WarrantyCopyWith<Warranty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarrantyCopyWith<$Res> {
  factory $WarrantyCopyWith(Warranty value, $Res Function(Warranty) then) =
      _$WarrantyCopyWithImpl<$Res, Warranty>;
  @useResult
  $Res call({bool? enabled, int? percentage, int? hours});
}

/// @nodoc
class _$WarrantyCopyWithImpl<$Res, $Val extends Warranty>
    implements $WarrantyCopyWith<$Res> {
  _$WarrantyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? percentage = freezed,
    Object? hours = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarrantyImplCopyWith<$Res>
    implements $WarrantyCopyWith<$Res> {
  factory _$$WarrantyImplCopyWith(
          _$WarrantyImpl value, $Res Function(_$WarrantyImpl) then) =
      __$$WarrantyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enabled, int? percentage, int? hours});
}

/// @nodoc
class __$$WarrantyImplCopyWithImpl<$Res>
    extends _$WarrantyCopyWithImpl<$Res, _$WarrantyImpl>
    implements _$$WarrantyImplCopyWith<$Res> {
  __$$WarrantyImplCopyWithImpl(
      _$WarrantyImpl _value, $Res Function(_$WarrantyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? percentage = freezed,
    Object? hours = freezed,
  }) {
    return _then(_$WarrantyImpl(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$WarrantyImpl implements _Warranty {
  const _$WarrantyImpl({this.enabled, this.percentage, this.hours});

  @override
  final bool? enabled;
  @override
  final int? percentage;
  @override
  final int? hours;

  @override
  String toString() {
    return 'Warranty(enabled: $enabled, percentage: $percentage, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarrantyImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled, percentage, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarrantyImplCopyWith<_$WarrantyImpl> get copyWith =>
      __$$WarrantyImplCopyWithImpl<_$WarrantyImpl>(this, _$identity);
}

abstract class _Warranty implements Warranty {
  const factory _Warranty(
      {final bool? enabled,
      final int? percentage,
      final int? hours}) = _$WarrantyImpl;

  @override
  bool? get enabled;
  @override
  int? get percentage;
  @override
  int? get hours;
  @override
  @JsonKey(ignore: true)
  _$$WarrantyImplCopyWith<_$WarrantyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
