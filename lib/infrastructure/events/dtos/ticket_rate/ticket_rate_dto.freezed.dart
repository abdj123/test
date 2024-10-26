// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketRateDto _$TicketRateDtoFromJson(Map<String, dynamic> json) {
  return _TicketRateDto.fromJson(json);
}

/// @nodoc
mixin _$TicketRateDto {
  String get id => throw _privateConstructorUsedError;
  String get organization_id => throw _privateConstructorUsedError;
  String get event_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get valid_from => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get show_all_prices => throw _privateConstructorUsedError;
  List<PriceTicketRateDto> get prices => throw _privateConstructorUsedError;
  List<SupplementDto> get supplements => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  PriceTicketRateDto? get current_price => throw _privateConstructorUsedError;
  WarrantyDto? get warranty => throw _privateConstructorUsedError;
  AvailabilityDto get availability => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  List<QuestionDto> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketRateDtoCopyWith<TicketRateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketRateDtoCopyWith<$Res> {
  factory $TicketRateDtoCopyWith(
          TicketRateDto value, $Res Function(TicketRateDto) then) =
      _$TicketRateDtoCopyWithImpl<$Res, TicketRateDto>;
  @useResult
  $Res call(
      {String id,
      String organization_id,
      String event_id,
      String name,
      String slug,
      String valid_from,
      bool complete,
      String type,
      bool show_all_prices,
      List<PriceTicketRateDto> prices,
      List<SupplementDto> supplements,
      bool available,
      PriceTicketRateDto? current_price,
      WarrantyDto? warranty,
      AvailabilityDto availability,
      int min,
      int max,
      List<QuestionDto> questions});

  $PriceTicketRateDtoCopyWith<$Res>? get current_price;
  $WarrantyDtoCopyWith<$Res>? get warranty;
  $AvailabilityDtoCopyWith<$Res> get availability;
}

/// @nodoc
class _$TicketRateDtoCopyWithImpl<$Res, $Val extends TicketRateDto>
    implements $TicketRateDtoCopyWith<$Res> {
  _$TicketRateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization_id = null,
    Object? event_id = null,
    Object? name = null,
    Object? slug = null,
    Object? valid_from = null,
    Object? complete = null,
    Object? type = null,
    Object? show_all_prices = null,
    Object? prices = null,
    Object? supplements = null,
    Object? available = null,
    Object? current_price = freezed,
    Object? warranty = freezed,
    Object? availability = null,
    Object? min = null,
    Object? max = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization_id: null == organization_id
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as String,
      event_id: null == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      valid_from: null == valid_from
          ? _value.valid_from
          : valid_from // ignore: cast_nullable_to_non_nullable
              as String,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      show_all_prices: null == show_all_prices
          ? _value.show_all_prices
          : show_all_prices // ignore: cast_nullable_to_non_nullable
              as bool,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceTicketRateDto>,
      supplements: null == supplements
          ? _value.supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as List<SupplementDto>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      current_price: freezed == current_price
          ? _value.current_price
          : current_price // ignore: cast_nullable_to_non_nullable
              as PriceTicketRateDto?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as WarrantyDto?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as AvailabilityDto,
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
              as List<QuestionDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceTicketRateDtoCopyWith<$Res>? get current_price {
    if (_value.current_price == null) {
      return null;
    }

    return $PriceTicketRateDtoCopyWith<$Res>(_value.current_price!, (value) {
      return _then(_value.copyWith(current_price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WarrantyDtoCopyWith<$Res>? get warranty {
    if (_value.warranty == null) {
      return null;
    }

    return $WarrantyDtoCopyWith<$Res>(_value.warranty!, (value) {
      return _then(_value.copyWith(warranty: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityDtoCopyWith<$Res> get availability {
    return $AvailabilityDtoCopyWith<$Res>(_value.availability, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketRateDtoImplCopyWith<$Res>
    implements $TicketRateDtoCopyWith<$Res> {
  factory _$$TicketRateDtoImplCopyWith(
          _$TicketRateDtoImpl value, $Res Function(_$TicketRateDtoImpl) then) =
      __$$TicketRateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organization_id,
      String event_id,
      String name,
      String slug,
      String valid_from,
      bool complete,
      String type,
      bool show_all_prices,
      List<PriceTicketRateDto> prices,
      List<SupplementDto> supplements,
      bool available,
      PriceTicketRateDto? current_price,
      WarrantyDto? warranty,
      AvailabilityDto availability,
      int min,
      int max,
      List<QuestionDto> questions});

  @override
  $PriceTicketRateDtoCopyWith<$Res>? get current_price;
  @override
  $WarrantyDtoCopyWith<$Res>? get warranty;
  @override
  $AvailabilityDtoCopyWith<$Res> get availability;
}

/// @nodoc
class __$$TicketRateDtoImplCopyWithImpl<$Res>
    extends _$TicketRateDtoCopyWithImpl<$Res, _$TicketRateDtoImpl>
    implements _$$TicketRateDtoImplCopyWith<$Res> {
  __$$TicketRateDtoImplCopyWithImpl(
      _$TicketRateDtoImpl _value, $Res Function(_$TicketRateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization_id = null,
    Object? event_id = null,
    Object? name = null,
    Object? slug = null,
    Object? valid_from = null,
    Object? complete = null,
    Object? type = null,
    Object? show_all_prices = null,
    Object? prices = null,
    Object? supplements = null,
    Object? available = null,
    Object? current_price = freezed,
    Object? warranty = freezed,
    Object? availability = null,
    Object? min = null,
    Object? max = null,
    Object? questions = null,
  }) {
    return _then(_$TicketRateDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization_id: null == organization_id
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as String,
      event_id: null == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      valid_from: null == valid_from
          ? _value.valid_from
          : valid_from // ignore: cast_nullable_to_non_nullable
              as String,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      show_all_prices: null == show_all_prices
          ? _value.show_all_prices
          : show_all_prices // ignore: cast_nullable_to_non_nullable
              as bool,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceTicketRateDto>,
      supplements: null == supplements
          ? _value._supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as List<SupplementDto>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      current_price: freezed == current_price
          ? _value.current_price
          : current_price // ignore: cast_nullable_to_non_nullable
              as PriceTicketRateDto?,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as WarrantyDto?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as AvailabilityDto,
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
              as List<QuestionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketRateDtoImpl extends _TicketRateDto {
  const _$TicketRateDtoImpl(
      {required this.id,
      required this.organization_id,
      required this.event_id,
      required this.name,
      required this.slug,
      required this.valid_from,
      required this.complete,
      required this.type,
      required this.show_all_prices,
      required final List<PriceTicketRateDto> prices,
      required final List<SupplementDto> supplements,
      required this.available,
      this.current_price,
      this.warranty,
      required this.availability,
      required this.min,
      required this.max,
      required final List<QuestionDto> questions})
      : _prices = prices,
        _supplements = supplements,
        _questions = questions,
        super._();

  factory _$TicketRateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketRateDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String organization_id;
  @override
  final String event_id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String valid_from;
  @override
  final bool complete;
  @override
  final String type;
  @override
  final bool show_all_prices;
  final List<PriceTicketRateDto> _prices;
  @override
  List<PriceTicketRateDto> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  final List<SupplementDto> _supplements;
  @override
  List<SupplementDto> get supplements {
    if (_supplements is EqualUnmodifiableListView) return _supplements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplements);
  }

  @override
  final bool available;
  @override
  final PriceTicketRateDto? current_price;
  @override
  final WarrantyDto? warranty;
  @override
  final AvailabilityDto availability;
  @override
  final int min;
  @override
  final int max;
  final List<QuestionDto> _questions;
  @override
  List<QuestionDto> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'TicketRateDto(id: $id, organization_id: $organization_id, event_id: $event_id, name: $name, slug: $slug, valid_from: $valid_from, complete: $complete, type: $type, show_all_prices: $show_all_prices, prices: $prices, supplements: $supplements, available: $available, current_price: $current_price, warranty: $warranty, availability: $availability, min: $min, max: $max, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketRateDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization_id, organization_id) ||
                other.organization_id == organization_id) &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.valid_from, valid_from) ||
                other.valid_from == valid_from) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.show_all_prices, show_all_prices) ||
                other.show_all_prices == show_all_prices) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality()
                .equals(other._supplements, _supplements) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.current_price, current_price) ||
                other.current_price == current_price) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organization_id,
      event_id,
      name,
      slug,
      valid_from,
      complete,
      type,
      show_all_prices,
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_supplements),
      available,
      current_price,
      warranty,
      availability,
      min,
      max,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketRateDtoImplCopyWith<_$TicketRateDtoImpl> get copyWith =>
      __$$TicketRateDtoImplCopyWithImpl<_$TicketRateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketRateDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketRateDto extends TicketRateDto {
  const factory _TicketRateDto(
      {required final String id,
      required final String organization_id,
      required final String event_id,
      required final String name,
      required final String slug,
      required final String valid_from,
      required final bool complete,
      required final String type,
      required final bool show_all_prices,
      required final List<PriceTicketRateDto> prices,
      required final List<SupplementDto> supplements,
      required final bool available,
      final PriceTicketRateDto? current_price,
      final WarrantyDto? warranty,
      required final AvailabilityDto availability,
      required final int min,
      required final int max,
      required final List<QuestionDto> questions}) = _$TicketRateDtoImpl;
  const _TicketRateDto._() : super._();

  factory _TicketRateDto.fromJson(Map<String, dynamic> json) =
      _$TicketRateDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get organization_id;
  @override
  String get event_id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get valid_from;
  @override
  bool get complete;
  @override
  String get type;
  @override
  bool get show_all_prices;
  @override
  List<PriceTicketRateDto> get prices;
  @override
  List<SupplementDto> get supplements;
  @override
  bool get available;
  @override
  PriceTicketRateDto? get current_price;
  @override
  WarrantyDto? get warranty;
  @override
  AvailabilityDto get availability;
  @override
  int get min;
  @override
  int get max;
  @override
  List<QuestionDto> get questions;
  @override
  @JsonKey(ignore: true)
  _$$TicketRateDtoImplCopyWith<_$TicketRateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
