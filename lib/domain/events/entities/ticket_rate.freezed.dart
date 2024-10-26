// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketRate {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  DateTime get validFrom => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<PriceTicketRate> get prices => throw _privateConstructorUsedError;
  List<Supplement> get supplements => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  PriceTicketRate? get currentPrice => throw _privateConstructorUsedError;
  Warranty? get warranty => throw _privateConstructorUsedError;
  Availability? get availability => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  List<Field>? get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketRateCopyWith<TicketRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketRateCopyWith<$Res> {
  factory $TicketRateCopyWith(
          TicketRate value, $Res Function(TicketRate) then) =
      _$TicketRateCopyWithImpl<$Res, TicketRate>;
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String slug,
      DateTime validFrom,
      bool complete,
      String type,
      List<PriceTicketRate> prices,
      List<Supplement> supplements,
      bool available,
      PriceTicketRate? currentPrice,
      Warranty? warranty,
      Availability? availability,
      int min,
      int max,
      List<Question> questions,
      List<Field>? fields});

  $PriceTicketRateCopyWith<$Res>? get currentPrice;
  $WarrantyCopyWith<$Res>? get warranty;
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class _$TicketRateCopyWithImpl<$Res, $Val extends TicketRate>
    implements $TicketRateCopyWith<$Res> {
  _$TicketRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? validFrom = null,
    Object? complete = null,
    Object? type = null,
    Object? prices = null,
    Object? supplements = null,
    Object? available = null,
    Object? currentPrice = freezed,
    Object? warranty = freezed,
    Object? availability = freezed,
    Object? min = null,
    Object? max = null,
    Object? questions = null,
    Object? fields = freezed,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceTicketRate>,
      supplements: null == supplements
          ? _value.supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as List<Supplement>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as PriceTicketRate?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as Warranty?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceTicketRateCopyWith<$Res>? get currentPrice {
    if (_value.currentPrice == null) {
      return null;
    }

    return $PriceTicketRateCopyWith<$Res>(_value.currentPrice!, (value) {
      return _then(_value.copyWith(currentPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WarrantyCopyWith<$Res>? get warranty {
    if (_value.warranty == null) {
      return null;
    }

    return $WarrantyCopyWith<$Res>(_value.warranty!, (value) {
      return _then(_value.copyWith(warranty: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketRateImplCopyWith<$Res>
    implements $TicketRateCopyWith<$Res> {
  factory _$$TicketRateImplCopyWith(
          _$TicketRateImpl value, $Res Function(_$TicketRateImpl) then) =
      __$$TicketRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String slug,
      DateTime validFrom,
      bool complete,
      String type,
      List<PriceTicketRate> prices,
      List<Supplement> supplements,
      bool available,
      PriceTicketRate? currentPrice,
      Warranty? warranty,
      Availability? availability,
      int min,
      int max,
      List<Question> questions,
      List<Field>? fields});

  @override
  $PriceTicketRateCopyWith<$Res>? get currentPrice;
  @override
  $WarrantyCopyWith<$Res>? get warranty;
  @override
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$TicketRateImplCopyWithImpl<$Res>
    extends _$TicketRateCopyWithImpl<$Res, _$TicketRateImpl>
    implements _$$TicketRateImplCopyWith<$Res> {
  __$$TicketRateImplCopyWithImpl(
      _$TicketRateImpl _value, $Res Function(_$TicketRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? validFrom = null,
    Object? complete = null,
    Object? type = null,
    Object? prices = null,
    Object? supplements = null,
    Object? available = null,
    Object? currentPrice = freezed,
    Object? warranty = freezed,
    Object? availability = freezed,
    Object? min = null,
    Object? max = null,
    Object? questions = null,
    Object? fields = freezed,
  }) {
    return _then(_$TicketRateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceTicketRate>,
      supplements: null == supplements
          ? _value._supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as List<Supplement>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as PriceTicketRate?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as Warranty?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
    ));
  }
}

/// @nodoc

class _$TicketRateImpl implements _TicketRate {
  const _$TicketRateImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.validFrom,
      required this.complete,
      required this.type,
      required final List<PriceTicketRate> prices,
      required final List<Supplement> supplements,
      required this.available,
      this.currentPrice,
      this.warranty,
      this.availability,
      required this.min,
      required this.max,
      required final List<Question> questions,
      final List<Field>? fields})
      : _prices = prices,
        _supplements = supplements,
        _questions = questions,
        _fields = fields;

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final DateTime validFrom;
  @override
  final bool complete;
  @override
  final String type;
  final List<PriceTicketRate> _prices;
  @override
  List<PriceTicketRate> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  final List<Supplement> _supplements;
  @override
  List<Supplement> get supplements {
    if (_supplements is EqualUnmodifiableListView) return _supplements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplements);
  }

  @override
  final bool available;
  @override
  final PriceTicketRate? currentPrice;
  @override
  final Warranty? warranty;
  @override
  final Availability? availability;
  @override
  final int min;
  @override
  final int max;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<Field>? _fields;
  @override
  List<Field>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketRate(id: $id, name: $name, slug: $slug, validFrom: $validFrom, complete: $complete, type: $type, prices: $prices, supplements: $supplements, available: $available, currentPrice: $currentPrice, warranty: $warranty, availability: $availability, min: $min, max: $max, questions: $questions, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketRateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality()
                .equals(other._supplements, _supplements) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      validFrom,
      complete,
      type,
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_supplements),
      available,
      currentPrice,
      warranty,
      availability,
      min,
      max,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketRateImplCopyWith<_$TicketRateImpl> get copyWith =>
      __$$TicketRateImplCopyWithImpl<_$TicketRateImpl>(this, _$identity);
}

abstract class _TicketRate implements TicketRate {
  const factory _TicketRate(
      {required final UniqueId id,
      required final String name,
      required final String slug,
      required final DateTime validFrom,
      required final bool complete,
      required final String type,
      required final List<PriceTicketRate> prices,
      required final List<Supplement> supplements,
      required final bool available,
      final PriceTicketRate? currentPrice,
      final Warranty? warranty,
      final Availability? availability,
      required final int min,
      required final int max,
      required final List<Question> questions,
      final List<Field>? fields}) = _$TicketRateImpl;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  DateTime get validFrom;
  @override
  bool get complete;
  @override
  String get type;
  @override
  List<PriceTicketRate> get prices;
  @override
  List<Supplement> get supplements;
  @override
  bool get available;
  @override
  PriceTicketRate? get currentPrice;
  @override
  Warranty? get warranty;
  @override
  Availability? get availability;
  @override
  int get min;
  @override
  int get max;
  @override
  List<Question> get questions;
  @override
  List<Field>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$TicketRateImplCopyWith<_$TicketRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
