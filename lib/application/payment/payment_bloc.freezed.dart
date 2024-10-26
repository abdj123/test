// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PaymentEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPaymentDetailsImplCopyWith<$Res> {
  factory _$$GetPaymentDetailsImplCopyWith(_$GetPaymentDetailsImpl value,
          $Res Function(_$GetPaymentDetailsImpl) then) =
      __$$GetPaymentDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String ticketRateId,
      String priceId,
      String fullName,
      String phone,
      String email,
      String address});
}

/// @nodoc
class __$$GetPaymentDetailsImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentDetailsImpl>
    implements _$$GetPaymentDetailsImplCopyWith<$Res> {
  __$$GetPaymentDetailsImplCopyWithImpl(_$GetPaymentDetailsImpl _value,
      $Res Function(_$GetPaymentDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketRateId = null,
    Object? priceId = null,
    Object? fullName = null,
    Object? phone = null,
    Object? email = null,
    Object? address = null,
  }) {
    return _then(_$GetPaymentDetailsImpl(
      ticketRateId: null == ticketRateId
          ? _value.ticketRateId
          : ticketRateId // ignore: cast_nullable_to_non_nullable
              as String,
      priceId: null == priceId
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentDetailsImpl implements _GetPaymentDetails {
  const _$GetPaymentDetailsImpl(
      {required this.ticketRateId,
      required this.priceId,
      required this.fullName,
      required this.phone,
      required this.email,
      required this.address});

  @override
  final String ticketRateId;
  @override
  final String priceId;
  @override
  final String fullName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String address;

  @override
  String toString() {
    return 'PaymentEvent.startPayment(ticketRateId: $ticketRateId, priceId: $priceId, fullName: $fullName, phone: $phone, email: $email, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDetailsImpl &&
            (identical(other.ticketRateId, ticketRateId) ||
                other.ticketRateId == ticketRateId) &&
            (identical(other.priceId, priceId) || other.priceId == priceId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ticketRateId, priceId, fullName, phone, email, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDetailsImplCopyWith<_$GetPaymentDetailsImpl> get copyWith =>
      __$$GetPaymentDetailsImplCopyWithImpl<_$GetPaymentDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) {
    return startPayment(ticketRateId, priceId, fullName, phone, email, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) {
    return startPayment?.call(
        ticketRateId, priceId, fullName, phone, email, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(
          ticketRateId, priceId, fullName, phone, email, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) {
    return startPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) {
    return startPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentDetails implements PaymentEvent {
  const factory _GetPaymentDetails(
      {required final String ticketRateId,
      required final String priceId,
      required final String fullName,
      required final String phone,
      required final String email,
      required final String address}) = _$GetPaymentDetailsImpl;

  String get ticketRateId;
  String get priceId;
  String get fullName;
  String get phone;
  String get email;
  String get address;
  @JsonKey(ignore: true)
  _$$GetPaymentDetailsImplCopyWith<_$GetPaymentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletePaymentImplCopyWith<$Res> {
  factory _$$CompletePaymentImplCopyWith(_$CompletePaymentImpl value,
          $Res Function(_$CompletePaymentImpl) then) =
      __$$CompletePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String paymentId});
}

/// @nodoc
class __$$CompletePaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$CompletePaymentImpl>
    implements _$$CompletePaymentImplCopyWith<$Res> {
  __$$CompletePaymentImplCopyWithImpl(
      _$CompletePaymentImpl _value, $Res Function(_$CompletePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? paymentId = null,
  }) {
    return _then(_$CompletePaymentImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompletePaymentImpl implements _CompletePayment {
  const _$CompletePaymentImpl({required this.uid, required this.paymentId});

  @override
  final String uid;
  @override
  final String paymentId;

  @override
  String toString() {
    return 'PaymentEvent.completePayment(uid: $uid, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletePaymentImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, paymentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletePaymentImplCopyWith<_$CompletePaymentImpl> get copyWith =>
      __$$CompletePaymentImplCopyWithImpl<_$CompletePaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) {
    return completePayment(uid, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) {
    return completePayment?.call(uid, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) {
    if (completePayment != null) {
      return completePayment(uid, paymentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) {
    return completePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) {
    return completePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) {
    if (completePayment != null) {
      return completePayment(this);
    }
    return orElse();
  }
}

abstract class _CompletePayment implements PaymentEvent {
  const factory _CompletePayment(
      {required final String uid,
      required final String paymentId}) = _$CompletePaymentImpl;

  String get uid;
  String get paymentId;
  @JsonKey(ignore: true)
  _$$CompletePaymentImplCopyWith<_$CompletePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelPaymentImplCopyWith<$Res> {
  factory _$$CancelPaymentImplCopyWith(
          _$CancelPaymentImpl value, $Res Function(_$CancelPaymentImpl) then) =
      __$$CancelPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$CancelPaymentImpl>
    implements _$$CancelPaymentImplCopyWith<$Res> {
  __$$CancelPaymentImplCopyWithImpl(
      _$CancelPaymentImpl _value, $Res Function(_$CancelPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelPaymentImpl implements _CancelPayment {
  const _$CancelPaymentImpl();

  @override
  String toString() {
    return 'PaymentEvent.cancelPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) {
    return cancelPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) {
    return cancelPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) {
    if (cancelPayment != null) {
      return cancelPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) {
    return cancelPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) {
    return cancelPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) {
    if (cancelPayment != null) {
      return cancelPayment(this);
    }
    return orElse();
  }
}

abstract class _CancelPayment implements PaymentEvent {
  const factory _CancelPayment() = _$CancelPaymentImpl;
}

/// @nodoc
abstract class _$$FailPaymentImplCopyWith<$Res> {
  factory _$$FailPaymentImplCopyWith(
          _$FailPaymentImpl value, $Res Function(_$FailPaymentImpl) then) =
      __$$FailPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$FailPaymentImpl>
    implements _$$FailPaymentImplCopyWith<$Res> {
  __$$FailPaymentImplCopyWithImpl(
      _$FailPaymentImpl _value, $Res Function(_$FailPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailPaymentImpl implements _FailPayment {
  const _$FailPaymentImpl();

  @override
  String toString() {
    return 'PaymentEvent.failPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketRateId, String priceId,
            String fullName, String phone, String email, String address)
        startPayment,
    required TResult Function(String uid, String paymentId) completePayment,
    required TResult Function() cancelPayment,
    required TResult Function() failPayment,
  }) {
    return failPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult? Function(String uid, String paymentId)? completePayment,
    TResult? Function()? cancelPayment,
    TResult? Function()? failPayment,
  }) {
    return failPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketRateId, String priceId, String fullName,
            String phone, String email, String address)?
        startPayment,
    TResult Function(String uid, String paymentId)? completePayment,
    TResult Function()? cancelPayment,
    TResult Function()? failPayment,
    required TResult orElse(),
  }) {
    if (failPayment != null) {
      return failPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPaymentDetails value) startPayment,
    required TResult Function(_CompletePayment value) completePayment,
    required TResult Function(_CancelPayment value) cancelPayment,
    required TResult Function(_FailPayment value) failPayment,
  }) {
    return failPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPaymentDetails value)? startPayment,
    TResult? Function(_CompletePayment value)? completePayment,
    TResult? Function(_CancelPayment value)? cancelPayment,
    TResult? Function(_FailPayment value)? failPayment,
  }) {
    return failPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPaymentDetails value)? startPayment,
    TResult Function(_CompletePayment value)? completePayment,
    TResult Function(_CancelPayment value)? cancelPayment,
    TResult Function(_FailPayment value)? failPayment,
    required TResult orElse(),
  }) {
    if (failPayment != null) {
      return failPayment(this);
    }
    return orElse();
  }
}

abstract class _FailPayment implements PaymentEvent {
  const factory _FailPayment() = _$FailPaymentImpl;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> paymentDetails});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDetails = null,
  }) {
    return _then(_$LoadedImpl(
      null == paymentDetails
          ? _value._paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final Map<String, dynamic> paymentDetails)
      : _paymentDetails = paymentDetails;

  final Map<String, dynamic> _paymentDetails;
  @override
  Map<String, dynamic> get paymentDetails {
    if (_paymentDetails is EqualUnmodifiableMapView) return _paymentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paymentDetails);
  }

  @override
  String toString() {
    return 'PaymentState.startedPayment(paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentDetails, _paymentDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return startedPayment(paymentDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return startedPayment?.call(paymentDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (startedPayment != null) {
      return startedPayment(paymentDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return startedPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return startedPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (startedPayment != null) {
      return startedPayment(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PaymentState {
  const factory _Loaded(final Map<String, dynamic> paymentDetails) =
      _$LoadedImpl;

  Map<String, dynamic> get paymentDetails;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl();

  @override
  String toString() {
    return 'PaymentState.completedPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return completedPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return completedPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (completedPayment != null) {
      return completedPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return completedPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return completedPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (completedPayment != null) {
      return completedPayment(this);
    }
    return orElse();
  }
}

abstract class _Completed implements PaymentState {
  const factory _Completed() = _$CompletedImpl;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'PaymentState.cancelledPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return cancelledPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return cancelledPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (cancelledPayment != null) {
      return cancelledPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return cancelledPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return cancelledPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (cancelledPayment != null) {
      return cancelledPayment(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements PaymentState {
  const factory _Cancelled() = _$CancelledImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'PaymentState.failedPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return failedPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return failedPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (failedPayment != null) {
      return failedPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return failedPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return failedPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (failedPayment != null) {
      return failedPayment(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PaymentState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PaymentState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> paymentDetails)
        startedPayment,
    required TResult Function() completedPayment,
    required TResult Function() cancelledPayment,
    required TResult Function() failedPayment,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult? Function()? completedPayment,
    TResult? Function()? cancelledPayment,
    TResult? Function()? failedPayment,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> paymentDetails)? startedPayment,
    TResult Function()? completedPayment,
    TResult Function()? cancelledPayment,
    TResult Function()? failedPayment,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) startedPayment,
    required TResult Function(_Completed value) completedPayment,
    required TResult Function(_Cancelled value) cancelledPayment,
    required TResult Function(_Failed value) failedPayment,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? startedPayment,
    TResult? Function(_Completed value)? completedPayment,
    TResult? Function(_Cancelled value)? cancelledPayment,
    TResult? Function(_Failed value)? failedPayment,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? startedPayment,
    TResult Function(_Completed value)? completedPayment,
    TResult Function(_Cancelled value)? cancelledPayment,
    TResult Function(_Failed value)? failedPayment,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaymentState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
