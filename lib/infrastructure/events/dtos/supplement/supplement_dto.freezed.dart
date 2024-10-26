// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupplementDto _$SupplementDtoFromJson(Map<String, dynamic> json) {
  return _SupplementDto.fromJson(json);
}

/// @nodoc
mixin _$SupplementDto {
  String? get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplementDtoCopyWith<SupplementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementDtoCopyWith<$Res> {
  factory $SupplementDtoCopyWith(
          SupplementDto value, $Res Function(SupplementDto) then) =
      _$SupplementDtoCopyWithImpl<$Res, SupplementDto>;
  @useResult
  $Res call({String? id, String label, double price});
}

/// @nodoc
class _$SupplementDtoCopyWithImpl<$Res, $Val extends SupplementDto>
    implements $SupplementDtoCopyWith<$Res> {
  _$SupplementDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplementDtoImplCopyWith<$Res>
    implements $SupplementDtoCopyWith<$Res> {
  factory _$$SupplementDtoImplCopyWith(
          _$SupplementDtoImpl value, $Res Function(_$SupplementDtoImpl) then) =
      __$$SupplementDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String label, double price});
}

/// @nodoc
class __$$SupplementDtoImplCopyWithImpl<$Res>
    extends _$SupplementDtoCopyWithImpl<$Res, _$SupplementDtoImpl>
    implements _$$SupplementDtoImplCopyWith<$Res> {
  __$$SupplementDtoImplCopyWithImpl(
      _$SupplementDtoImpl _value, $Res Function(_$SupplementDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = null,
    Object? price = null,
  }) {
    return _then(_$SupplementDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplementDtoImpl extends _SupplementDto {
  const _$SupplementDtoImpl({this.id, required this.label, required this.price})
      : super._();

  factory _$SupplementDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplementDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String label;
  @override
  final double price;

  @override
  String toString() {
    return 'SupplementDto(id: $id, label: $label, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplementDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplementDtoImplCopyWith<_$SupplementDtoImpl> get copyWith =>
      __$$SupplementDtoImplCopyWithImpl<_$SupplementDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplementDtoImplToJson(
      this,
    );
  }
}

abstract class _SupplementDto extends SupplementDto {
  const factory _SupplementDto(
      {final String? id,
      required final String label,
      required final double price}) = _$SupplementDtoImpl;
  const _SupplementDto._() : super._();

  factory _SupplementDto.fromJson(Map<String, dynamic> json) =
      _$SupplementDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String get label;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$SupplementDtoImplCopyWith<_$SupplementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
