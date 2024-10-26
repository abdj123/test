// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaidTicket {
  UniqueId get paymentId => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get ticketRateId => throw _privateConstructorUsedError;
  PriceTicketRate get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaidTicketCopyWith<PaidTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaidTicketCopyWith<$Res> {
  factory $PaidTicketCopyWith(
          PaidTicket value, $Res Function(PaidTicket) then) =
      _$PaidTicketCopyWithImpl<$Res, PaidTicket>;
  @useResult
  $Res call(
      {UniqueId paymentId,
      String qrCode,
      String eventId,
      String ticketRateId,
      PriceTicketRate price});

  $PriceTicketRateCopyWith<$Res> get price;
}

/// @nodoc
class _$PaidTicketCopyWithImpl<$Res, $Val extends PaidTicket>
    implements $PaidTicketCopyWith<$Res> {
  _$PaidTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? qrCode = null,
    Object? eventId = null,
    Object? ticketRateId = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketRateId: null == ticketRateId
          ? _value.ticketRateId
          : ticketRateId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceTicketRate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceTicketRateCopyWith<$Res> get price {
    return $PriceTicketRateCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaidTicketImplCopyWith<$Res>
    implements $PaidTicketCopyWith<$Res> {
  factory _$$PaidTicketImplCopyWith(
          _$PaidTicketImpl value, $Res Function(_$PaidTicketImpl) then) =
      __$$PaidTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId paymentId,
      String qrCode,
      String eventId,
      String ticketRateId,
      PriceTicketRate price});

  @override
  $PriceTicketRateCopyWith<$Res> get price;
}

/// @nodoc
class __$$PaidTicketImplCopyWithImpl<$Res>
    extends _$PaidTicketCopyWithImpl<$Res, _$PaidTicketImpl>
    implements _$$PaidTicketImplCopyWith<$Res> {
  __$$PaidTicketImplCopyWithImpl(
      _$PaidTicketImpl _value, $Res Function(_$PaidTicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? qrCode = null,
    Object? eventId = null,
    Object? ticketRateId = null,
    Object? price = null,
  }) {
    return _then(_$PaidTicketImpl(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketRateId: null == ticketRateId
          ? _value.ticketRateId
          : ticketRateId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceTicketRate,
    ));
  }
}

/// @nodoc

class _$PaidTicketImpl implements _PaidTicket {
  const _$PaidTicketImpl(
      {required this.paymentId,
      required this.qrCode,
      required this.eventId,
      required this.ticketRateId,
      required this.price});

  @override
  final UniqueId paymentId;
  @override
  final String qrCode;
  @override
  final String eventId;
  @override
  final String ticketRateId;
  @override
  final PriceTicketRate price;

  @override
  String toString() {
    return 'PaidTicket(paymentId: $paymentId, qrCode: $qrCode, eventId: $eventId, ticketRateId: $ticketRateId, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaidTicketImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.ticketRateId, ticketRateId) ||
                other.ticketRateId == ticketRateId) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentId, qrCode, eventId, ticketRateId, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidTicketImplCopyWith<_$PaidTicketImpl> get copyWith =>
      __$$PaidTicketImplCopyWithImpl<_$PaidTicketImpl>(this, _$identity);
}

abstract class _PaidTicket implements PaidTicket {
  const factory _PaidTicket(
      {required final UniqueId paymentId,
      required final String qrCode,
      required final String eventId,
      required final String ticketRateId,
      required final PriceTicketRate price}) = _$PaidTicketImpl;

  @override
  UniqueId get paymentId;
  @override
  String get qrCode;
  @override
  String get eventId;
  @override
  String get ticketRateId;
  @override
  PriceTicketRate get price;
  @override
  @JsonKey(ignore: true)
  _$$PaidTicketImplCopyWith<_$PaidTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
