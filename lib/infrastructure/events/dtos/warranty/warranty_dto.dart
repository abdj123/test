import 'package:freezed_annotation/freezed_annotation.dart';

part 'warranty_dto.freezed.dart';
part 'warranty_dto.g.dart';

@freezed
abstract class WarrantyDto implements _$WarrantyDto {
  const WarrantyDto._();

  const factory WarrantyDto({
    bool? enabled,
    int? percentage,
    int? hours,
  }) = _WarrantyDto;

  factory WarrantyDto.fromJson(Map<String, dynamic> json) =>
      _$WarrantyDtoFromJson(json);
}
