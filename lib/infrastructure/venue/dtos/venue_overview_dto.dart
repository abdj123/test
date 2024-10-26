import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_tree_client/domain/core/entities/coordinate.dart';
import 'package:ticket_tree_client/domain/core/value_objects/latitude.dart';
import 'package:ticket_tree_client/domain/core/value_objects/longtude.dart';

import '../../../domain/core/value_objects/unique_id.dart';
import '../../../domain/venues/entities/venue.dart';

part 'venue_overview_dto.freezed.dart';
part 'venue_overview_dto.g.dart';

@freezed
abstract class VenueDto implements _$VenueDto {
  const VenueDto._();

  const factory VenueDto({
    String? unic_id,
    required String location_id,
    required String name,
    String? address,
    String? imageUrl,
    String? fullAddress,
    double? latitude,
    double? longitude,
    String? city,
    String? country,
    String? timezone,
  }) = _VenueDto;

  Venue toDomain() => Venue(
        id: UniqueId.fromUniqueString(location_id),
        name: name,
        imageUrl: imageUrl,
        fullAddress: fullAddress ?? '',
        coordinate: (latitude == null || longitude == null)
            ? null
            : Coordinate(
                latitude: Latitude(latitude!), longtude: Longtude(longitude!)),
        city: city,
      );

  factory VenueDto.fromJson(Map<String, dynamic> json) =>
      _$VenueDtoFromJson(json);
}
