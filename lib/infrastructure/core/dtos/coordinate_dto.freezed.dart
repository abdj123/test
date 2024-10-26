// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoordinateDto _$CoordinateDtoFromJson(Map<String, dynamic> json) {
  return _CoordinateDto.fromJson(json);
}

/// @nodoc
mixin _$CoordinateDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longtude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateDtoCopyWith<CoordinateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateDtoCopyWith<$Res> {
  factory $CoordinateDtoCopyWith(
          CoordinateDto value, $Res Function(CoordinateDto) then) =
      _$CoordinateDtoCopyWithImpl<$Res, CoordinateDto>;
  @useResult
  $Res call({double latitude, double longtude});
}

/// @nodoc
class _$CoordinateDtoCopyWithImpl<$Res, $Val extends CoordinateDto>
    implements $CoordinateDtoCopyWith<$Res> {
  _$CoordinateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longtude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtude: null == longtude
          ? _value.longtude
          : longtude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinateDtoImplCopyWith<$Res>
    implements $CoordinateDtoCopyWith<$Res> {
  factory _$$CoordinateDtoImplCopyWith(
          _$CoordinateDtoImpl value, $Res Function(_$CoordinateDtoImpl) then) =
      __$$CoordinateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longtude});
}

/// @nodoc
class __$$CoordinateDtoImplCopyWithImpl<$Res>
    extends _$CoordinateDtoCopyWithImpl<$Res, _$CoordinateDtoImpl>
    implements _$$CoordinateDtoImplCopyWith<$Res> {
  __$$CoordinateDtoImplCopyWithImpl(
      _$CoordinateDtoImpl _value, $Res Function(_$CoordinateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longtude = null,
  }) {
    return _then(_$CoordinateDtoImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtude: null == longtude
          ? _value.longtude
          : longtude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinateDtoImpl extends _CoordinateDto {
  const _$CoordinateDtoImpl({required this.latitude, required this.longtude})
      : super._();

  factory _$CoordinateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinateDtoImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longtude;

  @override
  String toString() {
    return 'CoordinateDto(latitude: $latitude, longtude: $longtude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longtude, longtude) ||
                other.longtude == longtude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longtude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateDtoImplCopyWith<_$CoordinateDtoImpl> get copyWith =>
      __$$CoordinateDtoImplCopyWithImpl<_$CoordinateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinateDtoImplToJson(
      this,
    );
  }
}

abstract class _CoordinateDto extends CoordinateDto {
  const factory _CoordinateDto(
      {required final double latitude,
      required final double longtude}) = _$CoordinateDtoImpl;
  const _CoordinateDto._() : super._();

  factory _CoordinateDto.fromJson(Map<String, dynamic> json) =
      _$CoordinateDtoImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longtude;
  @override
  @JsonKey(ignore: true)
  _$$CoordinateDtoImplCopyWith<_$CoordinateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
