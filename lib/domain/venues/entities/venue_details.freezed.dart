// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VenueDetails {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get googlePlaceId => throw _privateConstructorUsedError;
  Coordinate? get coordinate => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<String> get events => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VenueDetailsCopyWith<VenueDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueDetailsCopyWith<$Res> {
  factory $VenueDetailsCopyWith(
          VenueDetails value, $Res Function(VenueDetails) then) =
      _$VenueDetailsCopyWithImpl<$Res, VenueDetails>;
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String imageUrl,
      String? description,
      String? googlePlaceId,
      Coordinate? coordinate,
      String address,
      String city,
      List<String> events,
      int likes});

  $CoordinateCopyWith<$Res>? get coordinate;
}

/// @nodoc
class _$VenueDetailsCopyWithImpl<$Res, $Val extends VenueDetails>
    implements $VenueDetailsCopyWith<$Res> {
  _$VenueDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = freezed,
    Object? googlePlaceId = freezed,
    Object? coordinate = freezed,
    Object? address = null,
    Object? city = null,
    Object? events = null,
    Object? likes = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_value.coordinate!, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VenueDetailsImplCopyWith<$Res>
    implements $VenueDetailsCopyWith<$Res> {
  factory _$$VenueDetailsImplCopyWith(
          _$VenueDetailsImpl value, $Res Function(_$VenueDetailsImpl) then) =
      __$$VenueDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String imageUrl,
      String? description,
      String? googlePlaceId,
      Coordinate? coordinate,
      String address,
      String city,
      List<String> events,
      int likes});

  @override
  $CoordinateCopyWith<$Res>? get coordinate;
}

/// @nodoc
class __$$VenueDetailsImplCopyWithImpl<$Res>
    extends _$VenueDetailsCopyWithImpl<$Res, _$VenueDetailsImpl>
    implements _$$VenueDetailsImplCopyWith<$Res> {
  __$$VenueDetailsImplCopyWithImpl(
      _$VenueDetailsImpl _value, $Res Function(_$VenueDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = freezed,
    Object? googlePlaceId = freezed,
    Object? coordinate = freezed,
    Object? address = null,
    Object? city = null,
    Object? events = null,
    Object? likes = null,
  }) {
    return _then(_$VenueDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VenueDetailsImpl implements _VenueDetails {
  const _$VenueDetailsImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      this.description,
      this.googlePlaceId,
      this.coordinate,
      required this.address,
      required this.city,
      required final List<String> events,
      required this.likes})
      : _events = events;

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String? description;
  @override
  final String? googlePlaceId;
  @override
  final Coordinate? coordinate;
  @override
  final String address;
  @override
  final String city;
  final List<String> _events;
  @override
  List<String> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final int likes;

  @override
  String toString() {
    return 'VenueDetails(id: $id, name: $name, imageUrl: $imageUrl, description: $description, googlePlaceId: $googlePlaceId, coordinate: $coordinate, address: $address, city: $city, events: $events, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenueDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      description,
      googlePlaceId,
      coordinate,
      address,
      city,
      const DeepCollectionEquality().hash(_events),
      likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VenueDetailsImplCopyWith<_$VenueDetailsImpl> get copyWith =>
      __$$VenueDetailsImplCopyWithImpl<_$VenueDetailsImpl>(this, _$identity);
}

abstract class _VenueDetails implements VenueDetails {
  const factory _VenueDetails(
      {required final UniqueId id,
      required final String name,
      required final String imageUrl,
      final String? description,
      final String? googlePlaceId,
      final Coordinate? coordinate,
      required final String address,
      required final String city,
      required final List<String> events,
      required final int likes}) = _$VenueDetailsImpl;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String? get description;
  @override
  String? get googlePlaceId;
  @override
  Coordinate? get coordinate;
  @override
  String get address;
  @override
  String get city;
  @override
  List<String> get events;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$VenueDetailsImplCopyWith<_$VenueDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
