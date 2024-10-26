// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  int? get availableQuantity => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  int? get soldQuantity => throw _privateConstructorUsedError;
  DateTime? get salesStartDate => throw _privateConstructorUsedError;
  DateTime? get salesEndDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String? description,
      int? capacity,
      int? availableQuantity,
      Price price,
      int? soldQuantity,
      DateTime? salesStartDate,
      DateTime? salesEndDate});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? availableQuantity = freezed,
    Object? price = null,
    Object? soldQuantity = freezed,
    Object? salesStartDate = freezed,
    Object? salesEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      soldQuantity: freezed == soldQuantity
          ? _value.soldQuantity
          : soldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesStartDate: freezed == salesStartDate
          ? _value.salesStartDate
          : salesStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesEndDate: freezed == salesEndDate
          ? _value.salesEndDate
          : salesEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String? description,
      int? capacity,
      int? availableQuantity,
      Price price,
      int? soldQuantity,
      DateTime? salesStartDate,
      DateTime? salesEndDate});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? availableQuantity = freezed,
    Object? price = null,
    Object? soldQuantity = freezed,
    Object? salesStartDate = freezed,
    Object? salesEndDate = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      soldQuantity: freezed == soldQuantity
          ? _value.soldQuantity
          : soldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesStartDate: freezed == salesStartDate
          ? _value.salesStartDate
          : salesStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesEndDate: freezed == salesEndDate
          ? _value.salesEndDate
          : salesEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.capacity,
      required this.availableQuantity,
      required this.price,
      required this.soldQuantity,
      required this.salesStartDate,
      required this.salesEndDate});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int? capacity;
  @override
  final int? availableQuantity;
  @override
  final Price price;
  @override
  final int? soldQuantity;
  @override
  final DateTime? salesStartDate;
  @override
  final DateTime? salesEndDate;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, capacity: $capacity, availableQuantity: $availableQuantity, price: $price, soldQuantity: $soldQuantity, salesStartDate: $salesStartDate, salesEndDate: $salesEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.soldQuantity, soldQuantity) ||
                other.soldQuantity == soldQuantity) &&
            (identical(other.salesStartDate, salesStartDate) ||
                other.salesStartDate == salesStartDate) &&
            (identical(other.salesEndDate, salesEndDate) ||
                other.salesEndDate == salesEndDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, capacity,
      availableQuantity, price, soldQuantity, salesStartDate, salesEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final UniqueId id,
      required final String name,
      required final String? description,
      required final int? capacity,
      required final int? availableQuantity,
      required final Price price,
      required final int? soldQuantity,
      required final DateTime? salesStartDate,
      required final DateTime? salesEndDate}) = _$ProductImpl;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  int? get capacity;
  @override
  int? get availableQuantity;
  @override
  Price get price;
  @override
  int? get soldQuantity;
  @override
  DateTime? get salesStartDate;
  @override
  DateTime? get salesEndDate;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
