import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
abstract class LocationDto implements _$LocationDto {
  const LocationDto._();

  const factory LocationDto({
    String? id,
    String? address,
    String? image_url,
    String? number,
    String? city,
    String? country,
    required String full_address,
    required double latitude,
    required double longitude,
    required String timezone,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
