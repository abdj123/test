// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warranty_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarrantyDto _$WarrantyDtoFromJson(Map<String, dynamic> json) {
  return _WarrantyDto.fromJson(json);
}

/// @nodoc
mixin _$WarrantyDto {
  bool? get enabled => throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarrantyDtoCopyWith<WarrantyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarrantyDtoCopyWith<$Res> {
  factory $WarrantyDtoCopyWith(
          WarrantyDto value, $Res Function(WarrantyDto) then) =
      _$WarrantyDtoCopyWithImpl<$Res, WarrantyDto>;
  @useResult
  $Res call({bool? enabled, int? percentage, int? hours});
}

/// @nodoc
class _$WarrantyDtoCopyWithImpl<$Res, $Val extends WarrantyDto>
    implements $WarrantyDtoCopyWith<$Res> {
  _$WarrantyDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$WarrantyDtoImplCopyWith<$Res>
    implements $WarrantyDtoCopyWith<$Res> {
  factory _$$WarrantyDtoImplCopyWith(
          _$WarrantyDtoImpl value, $Res Function(_$WarrantyDtoImpl) then) =
      __$$WarrantyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enabled, int? percentage, int? hours});
}

/// @nodoc
class __$$WarrantyDtoImplCopyWithImpl<$Res>
    extends _$WarrantyDtoCopyWithImpl<$Res, _$WarrantyDtoImpl>
    implements _$$WarrantyDtoImplCopyWith<$Res> {
  __$$WarrantyDtoImplCopyWithImpl(
      _$WarrantyDtoImpl _value, $Res Function(_$WarrantyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? percentage = freezed,
    Object? hours = freezed,
  }) {
    return _then(_$WarrantyDtoImpl(
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
@JsonSerializable()
class _$WarrantyDtoImpl extends _WarrantyDto {
  const _$WarrantyDtoImpl({this.enabled, this.percentage, this.hours})
      : super._();

  factory _$WarrantyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarrantyDtoImplFromJson(json);

  @override
  final bool? enabled;
  @override
  final int? percentage;
  @override
  final int? hours;

  @override
  String toString() {
    return 'WarrantyDto(enabled: $enabled, percentage: $percentage, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarrantyDtoImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, percentage, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarrantyDtoImplCopyWith<_$WarrantyDtoImpl> get copyWith =>
      __$$WarrantyDtoImplCopyWithImpl<_$WarrantyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarrantyDtoImplToJson(
      this,
    );
  }
}

abstract class _WarrantyDto extends WarrantyDto {
  const factory _WarrantyDto(
      {final bool? enabled,
      final int? percentage,
      final int? hours}) = _$WarrantyDtoImpl;
  const _WarrantyDto._() : super._();

  factory _WarrantyDto.fromJson(Map<String, dynamic> json) =
      _$WarrantyDtoImpl.fromJson;

  @override
  bool? get enabled;
  @override
  int? get percentage;
  @override
  int? get hours;
  @override
  @JsonKey(ignore: true)
  _$$WarrantyDtoImplCopyWith<_$WarrantyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
