import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/core/value_objects/unique_id.dart';
import '../../../../domain/events/entities/ticket_rate.dart';
import '../availablity/availability_dto.dart';
import '../price_ticket_rate/price_ticket_rate_dto.dart';
import '../question/question_dto.dart';
import '../supplement/supplement_dto.dart';
import '../warranty/warranty_dto.dart';

part 'ticket_rate_dto.freezed.dart';
part 'ticket_rate_dto.g.dart';

@freezed
abstract class TicketRateDto implements _$TicketRateDto {
  const TicketRateDto._();

  const factory TicketRateDto({
    required String id,
    required String organization_id,
    required String event_id,
    required String name,
    required String slug,
    required String valid_from,
    required bool complete,
    required String type,
    required bool show_all_prices,
    required List<PriceTicketRateDto> prices,
    required List<SupplementDto> supplements,
    required bool available,
    PriceTicketRateDto? current_price,
    WarrantyDto? warranty,
    required AvailabilityDto availability,
    required int min,
    required int max,
    required List<QuestionDto> questions,
  }) = _TicketRateDto;

  TicketRate toDomain() {
    return TicketRate(
      id: UniqueId.fromUniqueString(id),
      name: name,
      slug: slug,
      validFrom: DateTime.parse(valid_from),
      complete: complete,
      type: type,
      prices: prices.map((priceDto) => priceDto.toDomain()).toList(),
      currentPrice: current_price?.toDomain(),
      supplements:
          supplements.map((supplementDto) => supplementDto.toDomain()).toList(),
      available: available,
      min: min,
      max: max,
      questions:
          questions.map((questionDto) => questionDto.toDomain()).toList(),
    );
  }

  factory TicketRateDto.fromJson(Map<String, dynamic> json) =>
      _$TicketRateDtoFromJson(json);
}
