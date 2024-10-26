// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Supplement {
  UniqueId get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementCopyWith<Supplement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementCopyWith<$Res> {
  factory $SupplementCopyWith(
          Supplement value, $Res Function(Supplement) then) =
      _$SupplementCopyWithImpl<$Res, Supplement>;
  @useResult
  $Res call({UniqueId id, String label, double price});
}

/// @nodoc
class _$SupplementCopyWithImpl<$Res, $Val extends Supplement>
    implements $SupplementCopyWith<$Res> {
  _$SupplementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
abstract class _$$SupplementImplCopyWith<$Res>
    implements $SupplementCopyWith<$Res> {
  factory _$$SupplementImplCopyWith(
          _$SupplementImpl value, $Res Function(_$SupplementImpl) then) =
      __$$SupplementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String label, double price});
}

/// @nodoc
class __$$SupplementImplCopyWithImpl<$Res>
    extends _$SupplementCopyWithImpl<$Res, _$SupplementImpl>
    implements _$$SupplementImplCopyWith<$Res> {
  __$$SupplementImplCopyWithImpl(
      _$SupplementImpl _value, $Res Function(_$SupplementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? price = null,
  }) {
    return _then(_$SupplementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$SupplementImpl implements _Supplement {
  const _$SupplementImpl(
      {required this.id, required this.label, required this.price});

  @override
  final UniqueId id;
  @override
  final String label;
  @override
  final double price;

  @override
  String toString() {
    return 'Supplement(id: $id, label: $label, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplementImplCopyWith<_$SupplementImpl> get copyWith =>
      __$$SupplementImplCopyWithImpl<_$SupplementImpl>(this, _$identity);
}

abstract class _Supplement implements Supplement {
  const factory _Supplement(
      {required final UniqueId id,
      required final String label,
      required final double price}) = _$SupplementImpl;

  @override
  UniqueId get id;
  @override
  String get label;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$SupplementImplCopyWith<_$SupplementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
