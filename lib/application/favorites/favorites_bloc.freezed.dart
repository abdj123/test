// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

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
    extends _$FavoritesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FavoritesEvent.started'));
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
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
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
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavoritesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFavoritesImplCopyWith<$Res> {
  factory _$$GetFavoritesImplCopyWith(
          _$GetFavoritesImpl value, $Res Function(_$GetFavoritesImpl) then) =
      __$$GetFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$GetFavoritesImpl>
    implements _$$GetFavoritesImplCopyWith<$Res> {
  __$$GetFavoritesImplCopyWithImpl(
      _$GetFavoritesImpl _value, $Res Function(_$GetFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetFavoritesImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFavoritesImpl with DiagnosticableTreeMixin implements _GetFavorites {
  const _$GetFavoritesImpl(this.uid);

  @override
  final String uid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.getFavorites(uid: $uid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesEvent.getFavorites'))
      ..add(DiagnosticsProperty('uid', uid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesImplCopyWith<_$GetFavoritesImpl> get copyWith =>
      __$$GetFavoritesImplCopyWithImpl<_$GetFavoritesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return getFavorites(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return getFavorites?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class _GetFavorites implements FavoritesEvent {
  const factory _GetFavorites(final String uid) = _$GetFavoritesImpl;

  String get uid;
  @JsonKey(ignore: true)
  _$$GetFavoritesImplCopyWith<_$GetFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEventToFavoritesImplCopyWith<$Res> {
  factory _$$AddEventToFavoritesImplCopyWith(_$AddEventToFavoritesImpl value,
          $Res Function(_$AddEventToFavoritesImpl) then) =
      __$$AddEventToFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String eventId});
}

/// @nodoc
class __$$AddEventToFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddEventToFavoritesImpl>
    implements _$$AddEventToFavoritesImplCopyWith<$Res> {
  __$$AddEventToFavoritesImplCopyWithImpl(_$AddEventToFavoritesImpl _value,
      $Res Function(_$AddEventToFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? eventId = null,
  }) {
    return _then(_$AddEventToFavoritesImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEventToFavoritesImpl
    with DiagnosticableTreeMixin
    implements _AddEventToFavorites {
  const _$AddEventToFavoritesImpl(this.uid, this.eventId);

  @override
  final String uid;
  @override
  final String eventId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.addEventToFavorites(uid: $uid, eventId: $eventId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesEvent.addEventToFavorites'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('eventId', eventId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventToFavoritesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventToFavoritesImplCopyWith<_$AddEventToFavoritesImpl> get copyWith =>
      __$$AddEventToFavoritesImplCopyWithImpl<_$AddEventToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return addEventToFavorites(uid, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return addEventToFavorites?.call(uid, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (addEventToFavorites != null) {
      return addEventToFavorites(uid, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return addEventToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return addEventToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (addEventToFavorites != null) {
      return addEventToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddEventToFavorites implements FavoritesEvent {
  const factory _AddEventToFavorites(final String uid, final String eventId) =
      _$AddEventToFavoritesImpl;

  String get uid;
  String get eventId;
  @JsonKey(ignore: true)
  _$$AddEventToFavoritesImplCopyWith<_$AddEventToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveEventFromFavoritesImplCopyWith<$Res> {
  factory _$$RemoveEventFromFavoritesImplCopyWith(
          _$RemoveEventFromFavoritesImpl value,
          $Res Function(_$RemoveEventFromFavoritesImpl) then) =
      __$$RemoveEventFromFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String eventId});
}

/// @nodoc
class __$$RemoveEventFromFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveEventFromFavoritesImpl>
    implements _$$RemoveEventFromFavoritesImplCopyWith<$Res> {
  __$$RemoveEventFromFavoritesImplCopyWithImpl(
      _$RemoveEventFromFavoritesImpl _value,
      $Res Function(_$RemoveEventFromFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? eventId = null,
  }) {
    return _then(_$RemoveEventFromFavoritesImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveEventFromFavoritesImpl
    with DiagnosticableTreeMixin
    implements _RemoveEventFromFavorites {
  const _$RemoveEventFromFavoritesImpl(this.uid, this.eventId);

  @override
  final String uid;
  @override
  final String eventId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.removeEventFromFavorites(uid: $uid, eventId: $eventId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FavoritesEvent.removeEventFromFavorites'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('eventId', eventId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveEventFromFavoritesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveEventFromFavoritesImplCopyWith<_$RemoveEventFromFavoritesImpl>
      get copyWith => __$$RemoveEventFromFavoritesImplCopyWithImpl<
          _$RemoveEventFromFavoritesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return removeEventFromFavorites(uid, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return removeEventFromFavorites?.call(uid, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (removeEventFromFavorites != null) {
      return removeEventFromFavorites(uid, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return removeEventFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return removeEventFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (removeEventFromFavorites != null) {
      return removeEventFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _RemoveEventFromFavorites implements FavoritesEvent {
  const factory _RemoveEventFromFavorites(
      final String uid, final String eventId) = _$RemoveEventFromFavoritesImpl;

  String get uid;
  String get eventId;
  @JsonKey(ignore: true)
  _$$RemoveEventFromFavoritesImplCopyWith<_$RemoveEventFromFavoritesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddVenueToFavoritesImplCopyWith<$Res> {
  factory _$$AddVenueToFavoritesImplCopyWith(_$AddVenueToFavoritesImpl value,
          $Res Function(_$AddVenueToFavoritesImpl) then) =
      __$$AddVenueToFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String venueId});
}

/// @nodoc
class __$$AddVenueToFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddVenueToFavoritesImpl>
    implements _$$AddVenueToFavoritesImplCopyWith<$Res> {
  __$$AddVenueToFavoritesImplCopyWithImpl(_$AddVenueToFavoritesImpl _value,
      $Res Function(_$AddVenueToFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? venueId = null,
  }) {
    return _then(_$AddVenueToFavoritesImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddVenueToFavoritesImpl
    with DiagnosticableTreeMixin
    implements _AddVenueToFavorites {
  const _$AddVenueToFavoritesImpl(this.uid, this.venueId);

  @override
  final String uid;
  @override
  final String venueId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.addVenueToFavorites(uid: $uid, venueId: $venueId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesEvent.addVenueToFavorites'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('venueId', venueId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVenueToFavoritesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.venueId, venueId) || other.venueId == venueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, venueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVenueToFavoritesImplCopyWith<_$AddVenueToFavoritesImpl> get copyWith =>
      __$$AddVenueToFavoritesImplCopyWithImpl<_$AddVenueToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return addVenueToFavorites(uid, venueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return addVenueToFavorites?.call(uid, venueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (addVenueToFavorites != null) {
      return addVenueToFavorites(uid, venueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return addVenueToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return addVenueToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (addVenueToFavorites != null) {
      return addVenueToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddVenueToFavorites implements FavoritesEvent {
  const factory _AddVenueToFavorites(final String uid, final String venueId) =
      _$AddVenueToFavoritesImpl;

  String get uid;
  String get venueId;
  @JsonKey(ignore: true)
  _$$AddVenueToFavoritesImplCopyWith<_$AddVenueToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveVenueFromFavoritesImplCopyWith<$Res> {
  factory _$$RemoveVenueFromFavoritesImplCopyWith(
          _$RemoveVenueFromFavoritesImpl value,
          $Res Function(_$RemoveVenueFromFavoritesImpl) then) =
      __$$RemoveVenueFromFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String venueId});
}

/// @nodoc
class __$$RemoveVenueFromFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveVenueFromFavoritesImpl>
    implements _$$RemoveVenueFromFavoritesImplCopyWith<$Res> {
  __$$RemoveVenueFromFavoritesImplCopyWithImpl(
      _$RemoveVenueFromFavoritesImpl _value,
      $Res Function(_$RemoveVenueFromFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? venueId = null,
  }) {
    return _then(_$RemoveVenueFromFavoritesImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveVenueFromFavoritesImpl
    with DiagnosticableTreeMixin
    implements _RemoveVenueFromFavorites {
  const _$RemoveVenueFromFavoritesImpl(this.uid, this.venueId);

  @override
  final String uid;
  @override
  final String venueId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesEvent.removeVenueFromFavorites(uid: $uid, venueId: $venueId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FavoritesEvent.removeVenueFromFavorites'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('venueId', venueId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveVenueFromFavoritesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.venueId, venueId) || other.venueId == venueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, venueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveVenueFromFavoritesImplCopyWith<_$RemoveVenueFromFavoritesImpl>
      get copyWith => __$$RemoveVenueFromFavoritesImplCopyWithImpl<
          _$RemoveVenueFromFavoritesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uid) getFavorites,
    required TResult Function(String uid, String eventId) addEventToFavorites,
    required TResult Function(String uid, String eventId)
        removeEventFromFavorites,
    required TResult Function(String uid, String venueId) addVenueToFavorites,
    required TResult Function(String uid, String venueId)
        removeVenueFromFavorites,
  }) {
    return removeVenueFromFavorites(uid, venueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uid)? getFavorites,
    TResult? Function(String uid, String eventId)? addEventToFavorites,
    TResult? Function(String uid, String eventId)? removeEventFromFavorites,
    TResult? Function(String uid, String venueId)? addVenueToFavorites,
    TResult? Function(String uid, String venueId)? removeVenueFromFavorites,
  }) {
    return removeVenueFromFavorites?.call(uid, venueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uid)? getFavorites,
    TResult Function(String uid, String eventId)? addEventToFavorites,
    TResult Function(String uid, String eventId)? removeEventFromFavorites,
    TResult Function(String uid, String venueId)? addVenueToFavorites,
    TResult Function(String uid, String venueId)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (removeVenueFromFavorites != null) {
      return removeVenueFromFavorites(uid, venueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_AddEventToFavorites value) addEventToFavorites,
    required TResult Function(_RemoveEventFromFavorites value)
        removeEventFromFavorites,
    required TResult Function(_AddVenueToFavorites value) addVenueToFavorites,
    required TResult Function(_RemoveVenueFromFavorites value)
        removeVenueFromFavorites,
  }) {
    return removeVenueFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult? Function(_RemoveEventFromFavorites value)?
        removeEventFromFavorites,
    TResult? Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult? Function(_RemoveVenueFromFavorites value)?
        removeVenueFromFavorites,
  }) {
    return removeVenueFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_AddEventToFavorites value)? addEventToFavorites,
    TResult Function(_RemoveEventFromFavorites value)? removeEventFromFavorites,
    TResult Function(_AddVenueToFavorites value)? addVenueToFavorites,
    TResult Function(_RemoveVenueFromFavorites value)? removeVenueFromFavorites,
    required TResult orElse(),
  }) {
    if (removeVenueFromFavorites != null) {
      return removeVenueFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _RemoveVenueFromFavorites implements FavoritesEvent {
  const factory _RemoveVenueFromFavorites(
      final String uid, final String venueId) = _$RemoveVenueFromFavoritesImpl;

  String get uid;
  String get venueId;
  @JsonKey(ignore: true)
  _$$RemoveVenueFromFavoritesImplCopyWith<_$RemoveVenueFromFavoritesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Favorites favorites) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Favorites favorites)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Favorites favorites)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoritesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FavoritesState.initial'));
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
    required TResult Function(Favorites favorites) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Favorites favorites)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Favorites favorites)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
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
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FavoritesState.loading'));
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
    required TResult Function(Favorites favorites) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Favorites favorites)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Favorites favorites)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoritesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Favorites favorites});

  $FavoritesCopyWith<$Res> get favorites;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$LoadedImpl(
      null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Favorites,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoritesCopyWith<$Res> get favorites {
    return $FavoritesCopyWith<$Res>(_value.favorites, (value) {
      return _then(_value.copyWith(favorites: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(this.favorites);

  @override
  final Favorites favorites;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.loaded(favorites: $favorites)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesState.loaded'))
      ..add(DiagnosticsProperty('favorites', favorites));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favorites);

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
    required TResult Function(Favorites favorites) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Favorites favorites)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Favorites favorites)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoritesState {
  const factory _Loaded(final Favorites favorites) = _$LoadedImpl;

  Favorites get favorites;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FavoritesStateCopyWithImpl<$Res, _$ErrorImpl>
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

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesState.error'))
      ..add(DiagnosticsProperty('message', message));
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
    required TResult Function(Favorites favorites) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Favorites favorites)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Favorites favorites)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoritesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
