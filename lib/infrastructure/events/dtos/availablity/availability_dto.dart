import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_dto.freezed.dart';
part 'availability_dto.g.dart';

@freezed
abstract class AvailabilityDto implements _$AvailabilityDto {
  const AvailabilityDto._();

  const factory AvailabilityDto({
    required int sold,
    required int available,
  }) = _AvailabilityDto;

  factory AvailabilityDto.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityDtoFromJson(json);
}
