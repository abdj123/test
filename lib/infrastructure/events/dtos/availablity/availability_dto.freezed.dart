// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailabilityDto _$AvailabilityDtoFromJson(Map<String, dynamic> json) {
  return _AvailabilityDto.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityDto {
  int get sold => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityDtoCopyWith<AvailabilityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityDtoCopyWith<$Res> {
  factory $AvailabilityDtoCopyWith(
          AvailabilityDto value, $Res Function(AvailabilityDto) then) =
      _$AvailabilityDtoCopyWithImpl<$Res, AvailabilityDto>;
  @useResult
  $Res call({int sold, int available});
}

/// @nodoc
class _$AvailabilityDtoCopyWithImpl<$Res, $Val extends AvailabilityDto>
    implements $AvailabilityDtoCopyWith<$Res> {
  _$AvailabilityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sold = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityDtoImplCopyWith<$Res>
    implements $AvailabilityDtoCopyWith<$Res> {
  factory _$$AvailabilityDtoImplCopyWith(_$AvailabilityDtoImpl value,
          $Res Function(_$AvailabilityDtoImpl) then) =
      __$$AvailabilityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sold, int available});
}

/// @nodoc
class __$$AvailabilityDtoImplCopyWithImpl<$Res>
    extends _$AvailabilityDtoCopyWithImpl<$Res, _$AvailabilityDtoImpl>
    implements _$$AvailabilityDtoImplCopyWith<$Res> {
  __$$AvailabilityDtoImplCopyWithImpl(
      _$AvailabilityDtoImpl _value, $Res Function(_$AvailabilityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sold = null,
    Object? available = null,
  }) {
    return _then(_$AvailabilityDtoImpl(
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityDtoImpl extends _AvailabilityDto {
  const _$AvailabilityDtoImpl({required this.sold, required this.available})
      : super._();

  factory _$AvailabilityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityDtoImplFromJson(json);

  @override
  final int sold;
  @override
  final int available;

  @override
  String toString() {
    return 'AvailabilityDto(sold: $sold, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDtoImpl &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sold, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDtoImplCopyWith<_$AvailabilityDtoImpl> get copyWith =>
      __$$AvailabilityDtoImplCopyWithImpl<_$AvailabilityDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityDtoImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityDto extends AvailabilityDto {
  const factory _AvailabilityDto(
      {required final int sold,
      required final int available}) = _$AvailabilityDtoImpl;
  const _AvailabilityDto._() : super._();

  factory _AvailabilityDto.fromJson(Map<String, dynamic> json) =
      _$AvailabilityDtoImpl.fromJson;

  @override
  int get sold;
  @override
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDtoImplCopyWith<_$AvailabilityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
