// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetail {
  UniqueId get paymentId => throw _privateConstructorUsedError;
  UniqueId get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventImageURL => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<dynamic> get tickets => throw _privateConstructorUsedError;
  Venue get venue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res, OrderDetail>;
  @useResult
  $Res call(
      {UniqueId paymentId,
      UniqueId eventId,
      String eventName,
      String eventImageURL,
      DateTime? startDate,
      DateTime? endDate,
      List<dynamic> tickets,
      Venue venue});

  $VenueCopyWith<$Res> get venue;
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res, $Val extends OrderDetail>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? eventImageURL = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tickets = null,
    Object? venue = null,
  }) {
    return _then(_value.copyWith(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventImageURL: null == eventImageURL
          ? _value.eventImageURL
          : eventImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res> get venue {
    return $VenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDetailImplCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$OrderDetailImplCopyWith(
          _$OrderDetailImpl value, $Res Function(_$OrderDetailImpl) then) =
      __$$OrderDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId paymentId,
      UniqueId eventId,
      String eventName,
      String eventImageURL,
      DateTime? startDate,
      DateTime? endDate,
      List<dynamic> tickets,
      Venue venue});

  @override
  $VenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$OrderDetailImplCopyWithImpl<$Res>
    extends _$OrderDetailCopyWithImpl<$Res, _$OrderDetailImpl>
    implements _$$OrderDetailImplCopyWith<$Res> {
  __$$OrderDetailImplCopyWithImpl(
      _$OrderDetailImpl _value, $Res Function(_$OrderDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? eventImageURL = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tickets = null,
    Object? venue = null,
  }) {
    return _then(_$OrderDetailImpl(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventImageURL: null == eventImageURL
          ? _value.eventImageURL
          : eventImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
    ));
  }
}

/// @nodoc

class _$OrderDetailImpl implements _OrderDetail {
  const _$OrderDetailImpl(
      {required this.paymentId,
      required this.eventId,
      required this.eventName,
      required this.eventImageURL,
      required this.startDate,
      required this.endDate,
      required final List<dynamic> tickets,
      required this.venue})
      : _tickets = tickets;

  @override
  final UniqueId paymentId;
  @override
  final UniqueId eventId;
  @override
  final String eventName;
  @override
  final String eventImageURL;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  final List<dynamic> _tickets;
  @override
  List<dynamic> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final Venue venue;

  @override
  String toString() {
    return 'OrderDetail(paymentId: $paymentId, eventId: $eventId, eventName: $eventName, eventImageURL: $eventImageURL, startDate: $startDate, endDate: $endDate, tickets: $tickets, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventImageURL, eventImageURL) ||
                other.eventImageURL == eventImageURL) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.venue, venue) || other.venue == venue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentId,
      eventId,
      eventName,
      eventImageURL,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_tickets),
      venue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailImplCopyWith<_$OrderDetailImpl> get copyWith =>
      __$$OrderDetailImplCopyWithImpl<_$OrderDetailImpl>(this, _$identity);
}

abstract class _OrderDetail implements OrderDetail {
  const factory _OrderDetail(
      {required final UniqueId paymentId,
      required final UniqueId eventId,
      required final String eventName,
      required final String eventImageURL,
      required final DateTime? startDate,
      required final DateTime? endDate,
      required final List<dynamic> tickets,
      required final Venue venue}) = _$OrderDetailImpl;

  @override
  UniqueId get paymentId;
  @override
  UniqueId get eventId;
  @override
  String get eventName;
  @override
  String get eventImageURL;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  List<dynamic> get tickets;
  @override
  Venue get venue;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailImplCopyWith<_$OrderDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
