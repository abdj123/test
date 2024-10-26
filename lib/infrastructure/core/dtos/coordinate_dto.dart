import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/entities/coordinate.dart';
import '../../../domain/core/value_objects/latitude.dart';
import '../../../domain/core/value_objects/longtude.dart';

part 'coordinate_dto.freezed.dart';
part 'coordinate_dto.g.dart';

@freezed
abstract class CoordinateDto implements _$CoordinateDto {
  const CoordinateDto._();

  const factory CoordinateDto({
    required double latitude,
    required double longtude,
  }) = _CoordinateDto;

  factory CoordinateDto.fromDomain(Coordinate coordinate) {
    return CoordinateDto(
      latitude: coordinate.latitude.getOrCrash(),
      longtude: coordinate.longtude.getOrCrash(),
    );
  }

  Coordinate toDomain() => Coordinate(
        latitude: Latitude(latitude),
        longtude: Longtude(longtude),
      );

  factory CoordinateDto.fromJson(Map<String, dynamic> json) =>
      _$CoordinateDtoFromJson(json);
}
