import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites.freezed.dart';

@freezed
abstract class Favorites with _$Favorites {
  const factory Favorites({
    required List<String> eventIds,
    required List<String> venueIds,
  }) = _Favorites;
}
