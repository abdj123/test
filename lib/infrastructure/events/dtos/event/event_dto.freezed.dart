// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
mixin _$EventDto {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get display_date => throw _privateConstructorUsedError;
  String get start_date => throw _privateConstructorUsedError;
  String get end_date => throw _privateConstructorUsedError;
  String get organization_id => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;
  String get outfit => throw _privateConstructorUsedError;
  List<String> get ambiences => throw _privateConstructorUsedError;
  List<String> get music_genres => throw _privateConstructorUsedError;
  List<ArtistDto>? get artists => throw _privateConstructorUsedError;
  String get location_id => throw _privateConstructorUsedError;
  LocationDto get location => throw _privateConstructorUsedError;
  List<TicketRateDto>? get ticket_rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res, EventDto>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      String? description,
      String display_date,
      String start_date,
      String end_date,
      String organization_id,
      int age,
      String image_url,
      String outfit,
      List<String> ambiences,
      List<String> music_genres,
      List<ArtistDto>? artists,
      String location_id,
      LocationDto location,
      List<TicketRateDto>? ticket_rates});

  $LocationDtoCopyWith<$Res> get location;
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res, $Val extends EventDto>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? display_date = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? organization_id = null,
    Object? age = null,
    Object? image_url = null,
    Object? outfit = null,
    Object? ambiences = null,
    Object? music_genres = null,
    Object? artists = freezed,
    Object? location_id = null,
    Object? location = null,
    Object? ticket_rates = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      display_date: null == display_date
          ? _value.display_date
          : display_date // ignore: cast_nullable_to_non_nullable
              as String,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      organization_id: null == organization_id
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      outfit: null == outfit
          ? _value.outfit
          : outfit // ignore: cast_nullable_to_non_nullable
              as String,
      ambiences: null == ambiences
          ? _value.ambiences
          : ambiences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      music_genres: null == music_genres
          ? _value.music_genres
          : music_genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistDto>?,
      location_id: null == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      ticket_rates: freezed == ticket_rates
          ? _value.ticket_rates
          : ticket_rates // ignore: cast_nullable_to_non_nullable
              as List<TicketRateDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventDtoImplCopyWith<$Res>
    implements $EventDtoCopyWith<$Res> {
  factory _$$EventDtoImplCopyWith(
          _$EventDtoImpl value, $Res Function(_$EventDtoImpl) then) =
      __$$EventDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      String? description,
      String display_date,
      String start_date,
      String end_date,
      String organization_id,
      int age,
      String image_url,
      String outfit,
      List<String> ambiences,
      List<String> music_genres,
      List<ArtistDto>? artists,
      String location_id,
      LocationDto location,
      List<TicketRateDto>? ticket_rates});

  @override
  $LocationDtoCopyWith<$Res> get location;
}

/// @nodoc
class __$$EventDtoImplCopyWithImpl<$Res>
    extends _$EventDtoCopyWithImpl<$Res, _$EventDtoImpl>
    implements _$$EventDtoImplCopyWith<$Res> {
  __$$EventDtoImplCopyWithImpl(
      _$EventDtoImpl _value, $Res Function(_$EventDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? display_date = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? organization_id = null,
    Object? age = null,
    Object? image_url = null,
    Object? outfit = null,
    Object? ambiences = null,
    Object? music_genres = null,
    Object? artists = freezed,
    Object? location_id = null,
    Object? location = null,
    Object? ticket_rates = freezed,
  }) {
    return _then(_$EventDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      display_date: null == display_date
          ? _value.display_date
          : display_date // ignore: cast_nullable_to_non_nullable
              as String,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      organization_id: null == organization_id
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      outfit: null == outfit
          ? _value.outfit
          : outfit // ignore: cast_nullable_to_non_nullable
              as String,
      ambiences: null == ambiences
          ? _value._ambiences
          : ambiences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      music_genres: null == music_genres
          ? _value._music_genres
          : music_genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistDto>?,
      location_id: null == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      ticket_rates: freezed == ticket_rates
          ? _value._ticket_rates
          : ticket_rates // ignore: cast_nullable_to_non_nullable
              as List<TicketRateDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDtoImpl extends _EventDto {
  const _$EventDtoImpl(
      {this.id,
      required this.name,
      required this.slug,
      this.description,
      required this.display_date,
      required this.start_date,
      required this.end_date,
      required this.organization_id,
      required this.age,
      required this.image_url,
      required this.outfit,
      required final List<String> ambiences,
      required final List<String> music_genres,
      final List<ArtistDto>? artists,
      required this.location_id,
      required this.location,
      final List<TicketRateDto>? ticket_rates})
      : _ambiences = ambiences,
        _music_genres = music_genres,
        _artists = artists,
        _ticket_rates = ticket_rates,
        super._();

  factory _$EventDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String display_date;
  @override
  final String start_date;
  @override
  final String end_date;
  @override
  final String organization_id;
  @override
  final int age;
  @override
  final String image_url;
  @override
  final String outfit;
  final List<String> _ambiences;
  @override
  List<String> get ambiences {
    if (_ambiences is EqualUnmodifiableListView) return _ambiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ambiences);
  }

  final List<String> _music_genres;
  @override
  List<String> get music_genres {
    if (_music_genres is EqualUnmodifiableListView) return _music_genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_music_genres);
  }

  final List<ArtistDto>? _artists;
  @override
  List<ArtistDto>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String location_id;
  @override
  final LocationDto location;
  final List<TicketRateDto>? _ticket_rates;
  @override
  List<TicketRateDto>? get ticket_rates {
    final value = _ticket_rates;
    if (value == null) return null;
    if (_ticket_rates is EqualUnmodifiableListView) return _ticket_rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventDto(id: $id, name: $name, slug: $slug, description: $description, display_date: $display_date, start_date: $start_date, end_date: $end_date, organization_id: $organization_id, age: $age, image_url: $image_url, outfit: $outfit, ambiences: $ambiences, music_genres: $music_genres, artists: $artists, location_id: $location_id, location: $location, ticket_rates: $ticket_rates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.display_date, display_date) ||
                other.display_date == display_date) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.organization_id, organization_id) ||
                other.organization_id == organization_id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.outfit, outfit) || other.outfit == outfit) &&
            const DeepCollectionEquality()
                .equals(other._ambiences, _ambiences) &&
            const DeepCollectionEquality()
                .equals(other._music_genres, _music_genres) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._ticket_rates, _ticket_rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      description,
      display_date,
      start_date,
      end_date,
      organization_id,
      age,
      image_url,
      outfit,
      const DeepCollectionEquality().hash(_ambiences),
      const DeepCollectionEquality().hash(_music_genres),
      const DeepCollectionEquality().hash(_artists),
      location_id,
      location,
      const DeepCollectionEquality().hash(_ticket_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      __$$EventDtoImplCopyWithImpl<_$EventDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDtoImplToJson(
      this,
    );
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {final String? id,
      required final String name,
      required final String slug,
      final String? description,
      required final String display_date,
      required final String start_date,
      required final String end_date,
      required final String organization_id,
      required final int age,
      required final String image_url,
      required final String outfit,
      required final List<String> ambiences,
      required final List<String> music_genres,
      final List<ArtistDto>? artists,
      required final String location_id,
      required final LocationDto location,
      final List<TicketRateDto>? ticket_rates}) = _$EventDtoImpl;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) =
      _$EventDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String get display_date;
  @override
  String get start_date;
  @override
  String get end_date;
  @override
  String get organization_id;
  @override
  int get age;
  @override
  String get image_url;
  @override
  String get outfit;
  @override
  List<String> get ambiences;
  @override
  List<String> get music_genres;
  @override
  List<ArtistDto>? get artists;
  @override
  String get location_id;
  @override
  LocationDto get location;
  @override
  List<TicketRateDto>? get ticket_rates;
  @override
  @JsonKey(ignore: true)
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
