// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Favorites {
  List<String> get eventIds => throw _privateConstructorUsedError;
  List<String> get venueIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res, Favorites>;
  @useResult
  $Res call({List<String> eventIds, List<String> venueIds});
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res, $Val extends Favorites>
    implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventIds = null,
    Object? venueIds = null,
  }) {
    return _then(_value.copyWith(
      eventIds: null == eventIds
          ? _value.eventIds
          : eventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      venueIds: null == venueIds
          ? _value.venueIds
          : venueIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesImplCopyWith<$Res>
    implements $FavoritesCopyWith<$Res> {
  factory _$$FavoritesImplCopyWith(
          _$FavoritesImpl value, $Res Function(_$FavoritesImpl) then) =
      __$$FavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> eventIds, List<String> venueIds});
}

/// @nodoc
class __$$FavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesCopyWithImpl<$Res, _$FavoritesImpl>
    implements _$$FavoritesImplCopyWith<$Res> {
  __$$FavoritesImplCopyWithImpl(
      _$FavoritesImpl _value, $Res Function(_$FavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventIds = null,
    Object? venueIds = null,
  }) {
    return _then(_$FavoritesImpl(
      eventIds: null == eventIds
          ? _value._eventIds
          : eventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      venueIds: null == venueIds
          ? _value._venueIds
          : venueIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FavoritesImpl implements _Favorites {
  const _$FavoritesImpl(
      {required final List<String> eventIds,
      required final List<String> venueIds})
      : _eventIds = eventIds,
        _venueIds = venueIds;

  final List<String> _eventIds;
  @override
  List<String> get eventIds {
    if (_eventIds is EqualUnmodifiableListView) return _eventIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventIds);
  }

  final List<String> _venueIds;
  @override
  List<String> get venueIds {
    if (_venueIds is EqualUnmodifiableListView) return _venueIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_venueIds);
  }

  @override
  String toString() {
    return 'Favorites(eventIds: $eventIds, venueIds: $venueIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesImpl &&
            const DeepCollectionEquality().equals(other._eventIds, _eventIds) &&
            const DeepCollectionEquality().equals(other._venueIds, _venueIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_eventIds),
      const DeepCollectionEquality().hash(_venueIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      __$$FavoritesImplCopyWithImpl<_$FavoritesImpl>(this, _$identity);
}

abstract class _Favorites implements Favorites {
  const factory _Favorites(
      {required final List<String> eventIds,
      required final List<String> venueIds}) = _$FavoritesImpl;

  @override
  List<String> get eventIds;
  @override
  List<String> get venueIds;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
