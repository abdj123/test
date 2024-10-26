// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorized_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorizedEvents {
  List<Event> get todayEvents => throw _privateConstructorUsedError;
  List<Event> get thisWeekEvents => throw _privateConstructorUsedError;
  List<Event> get upcomingEvents => throw _privateConstructorUsedError;
  List<Event> get pastEvents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategorizedEventsCopyWith<CategorizedEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorizedEventsCopyWith<$Res> {
  factory $CategorizedEventsCopyWith(
          CategorizedEvents value, $Res Function(CategorizedEvents) then) =
      _$CategorizedEventsCopyWithImpl<$Res, CategorizedEvents>;
  @useResult
  $Res call(
      {List<Event> todayEvents,
      List<Event> thisWeekEvents,
      List<Event> upcomingEvents,
      List<Event> pastEvents});
}

/// @nodoc
class _$CategorizedEventsCopyWithImpl<$Res, $Val extends CategorizedEvents>
    implements $CategorizedEventsCopyWith<$Res> {
  _$CategorizedEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayEvents = null,
    Object? thisWeekEvents = null,
    Object? upcomingEvents = null,
    Object? pastEvents = null,
  }) {
    return _then(_value.copyWith(
      todayEvents: null == todayEvents
          ? _value.todayEvents
          : todayEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      thisWeekEvents: null == thisWeekEvents
          ? _value.thisWeekEvents
          : thisWeekEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      upcomingEvents: null == upcomingEvents
          ? _value.upcomingEvents
          : upcomingEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      pastEvents: null == pastEvents
          ? _value.pastEvents
          : pastEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorizedEventsImplCopyWith<$Res>
    implements $CategorizedEventsCopyWith<$Res> {
  factory _$$CategorizedEventsImplCopyWith(_$CategorizedEventsImpl value,
          $Res Function(_$CategorizedEventsImpl) then) =
      __$$CategorizedEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> todayEvents,
      List<Event> thisWeekEvents,
      List<Event> upcomingEvents,
      List<Event> pastEvents});
}

/// @nodoc
class __$$CategorizedEventsImplCopyWithImpl<$Res>
    extends _$CategorizedEventsCopyWithImpl<$Res, _$CategorizedEventsImpl>
    implements _$$CategorizedEventsImplCopyWith<$Res> {
  __$$CategorizedEventsImplCopyWithImpl(_$CategorizedEventsImpl _value,
      $Res Function(_$CategorizedEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayEvents = null,
    Object? thisWeekEvents = null,
    Object? upcomingEvents = null,
    Object? pastEvents = null,
  }) {
    return _then(_$CategorizedEventsImpl(
      todayEvents: null == todayEvents
          ? _value._todayEvents
          : todayEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      thisWeekEvents: null == thisWeekEvents
          ? _value._thisWeekEvents
          : thisWeekEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      upcomingEvents: null == upcomingEvents
          ? _value._upcomingEvents
          : upcomingEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      pastEvents: null == pastEvents
          ? _value._pastEvents
          : pastEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$CategorizedEventsImpl implements _CategorizedEvents {
  const _$CategorizedEventsImpl(
      {required final List<Event> todayEvents,
      required final List<Event> thisWeekEvents,
      required final List<Event> upcomingEvents,
      required final List<Event> pastEvents})
      : _todayEvents = todayEvents,
        _thisWeekEvents = thisWeekEvents,
        _upcomingEvents = upcomingEvents,
        _pastEvents = pastEvents;

  final List<Event> _todayEvents;
  @override
  List<Event> get todayEvents {
    if (_todayEvents is EqualUnmodifiableListView) return _todayEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayEvents);
  }

  final List<Event> _thisWeekEvents;
  @override
  List<Event> get thisWeekEvents {
    if (_thisWeekEvents is EqualUnmodifiableListView) return _thisWeekEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thisWeekEvents);
  }

  final List<Event> _upcomingEvents;
  @override
  List<Event> get upcomingEvents {
    if (_upcomingEvents is EqualUnmodifiableListView) return _upcomingEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingEvents);
  }

  final List<Event> _pastEvents;
  @override
  List<Event> get pastEvents {
    if (_pastEvents is EqualUnmodifiableListView) return _pastEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastEvents);
  }

  @override
  String toString() {
    return 'CategorizedEvents(todayEvents: $todayEvents, thisWeekEvents: $thisWeekEvents, upcomingEvents: $upcomingEvents, pastEvents: $pastEvents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorizedEventsImpl &&
            const DeepCollectionEquality()
                .equals(other._todayEvents, _todayEvents) &&
            const DeepCollectionEquality()
                .equals(other._thisWeekEvents, _thisWeekEvents) &&
            const DeepCollectionEquality()
                .equals(other._upcomingEvents, _upcomingEvents) &&
            const DeepCollectionEquality()
                .equals(other._pastEvents, _pastEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todayEvents),
      const DeepCollectionEquality().hash(_thisWeekEvents),
      const DeepCollectionEquality().hash(_upcomingEvents),
      const DeepCollectionEquality().hash(_pastEvents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorizedEventsImplCopyWith<_$CategorizedEventsImpl> get copyWith =>
      __$$CategorizedEventsImplCopyWithImpl<_$CategorizedEventsImpl>(
          this, _$identity);
}

abstract class _CategorizedEvents implements CategorizedEvents {
  const factory _CategorizedEvents(
      {required final List<Event> todayEvents,
      required final List<Event> thisWeekEvents,
      required final List<Event> upcomingEvents,
      required final List<Event> pastEvents}) = _$CategorizedEventsImpl;

  @override
  List<Event> get todayEvents;
  @override
  List<Event> get thisWeekEvents;
  @override
  List<Event> get upcomingEvents;
  @override
  List<Event> get pastEvents;
  @override
  @JsonKey(ignore: true)
  _$$CategorizedEventsImplCopyWith<_$CategorizedEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
