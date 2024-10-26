import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/events/entities/artist.dart';

part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
abstract class ArtistDto implements _$ArtistDto {
  const ArtistDto._();

  const factory ArtistDto({
    required String name,
    required String image_url,
  }) = _ArtistDto;

  Artist toDomain() => Artist(name: name, imageUrl: image_url);

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);
}
