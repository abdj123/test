// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDetailDto _$EventDetailDtoFromJson(Map<String, dynamic> json) {
  return _EventDetailDto.fromJson(json);
}

/// @nodoc
mixin _$EventDetailDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  List<ProductDto> get products => throw _privateConstructorUsedError;
  VenueDto get venue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailDtoCopyWith<EventDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailDtoCopyWith<$Res> {
  factory $EventDetailDtoCopyWith(
          EventDetailDto value, $Res Function(EventDetailDto) then) =
      _$EventDetailDtoCopyWithImpl<$Res, EventDetailDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String coverImage,
      String? summary,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      bool isPublished,
      List<ProductDto> products,
      VenueDto venue});

  $VenueDtoCopyWith<$Res> get venue;
}

/// @nodoc
class _$EventDetailDtoCopyWithImpl<$Res, $Val extends EventDetailDto>
    implements $EventDetailDtoCopyWith<$Res> {
  _$EventDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverImage = null,
    Object? summary = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isPublished = null,
    Object? products = null,
    Object? venue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as VenueDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueDtoCopyWith<$Res> get venue {
    return $VenueDtoCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventDetailDtoImplCopyWith<$Res>
    implements $EventDetailDtoCopyWith<$Res> {
  factory _$$EventDetailDtoImplCopyWith(_$EventDetailDtoImpl value,
          $Res Function(_$EventDetailDtoImpl) then) =
      __$$EventDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String coverImage,
      String? summary,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      bool isPublished,
      List<ProductDto> products,
      VenueDto venue});

  @override
  $VenueDtoCopyWith<$Res> get venue;
}

/// @nodoc
class __$$EventDetailDtoImplCopyWithImpl<$Res>
    extends _$EventDetailDtoCopyWithImpl<$Res, _$EventDetailDtoImpl>
    implements _$$EventDetailDtoImplCopyWith<$Res> {
  __$$EventDetailDtoImplCopyWithImpl(
      _$EventDetailDtoImpl _value, $Res Function(_$EventDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverImage = null,
    Object? summary = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isPublished = null,
    Object? products = null,
    Object? venue = null,
  }) {
    return _then(_$EventDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as VenueDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailDtoImpl extends _EventDetailDto {
  const _$EventDetailDtoImpl(
      {required this.id,
      required this.name,
      required this.coverImage,
      required this.summary,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.isPublished,
      required final List<ProductDto> products,
      required this.venue})
      : _products = products,
        super._();

  factory _$EventDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String coverImage;
  @override
  final String? summary;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool isPublished;
  final List<ProductDto> _products;
  @override
  List<ProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final VenueDto venue;

  @override
  String toString() {
    return 'EventDetailDto(id: $id, name: $name, coverImage: $coverImage, summary: $summary, description: $description, startDate: $startDate, endDate: $endDate, isPublished: $isPublished, products: $products, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.venue, venue) || other.venue == venue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      coverImage,
      summary,
      description,
      startDate,
      endDate,
      isPublished,
      const DeepCollectionEquality().hash(_products),
      venue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailDtoImplCopyWith<_$EventDetailDtoImpl> get copyWith =>
      __$$EventDetailDtoImplCopyWithImpl<_$EventDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _EventDetailDto extends EventDetailDto {
  const factory _EventDetailDto(
      {required final String id,
      required final String name,
      required final String coverImage,
      required final String? summary,
      required final String? description,
      required final DateTime? startDate,
      required final DateTime? endDate,
      required final bool isPublished,
      required final List<ProductDto> products,
      required final VenueDto venue}) = _$EventDetailDtoImpl;
  const _EventDetailDto._() : super._();

  factory _EventDetailDto.fromJson(Map<String, dynamic> json) =
      _$EventDetailDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get coverImage;
  @override
  String? get summary;
  @override
  String? get description;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isPublished;
  @override
  List<ProductDto> get products;
  @override
  VenueDto get venue;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailDtoImplCopyWith<_$EventDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
