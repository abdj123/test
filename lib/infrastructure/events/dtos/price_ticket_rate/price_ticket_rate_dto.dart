import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_tree_client/domain/core/value_objects/unique_id.dart';
import 'package:ticket_tree_client/domain/events/entities/price_ticket_rate.dart';

part 'price_ticket_rate_dto.freezed.dart';
part 'price_ticket_rate_dto.g.dart';

@freezed
abstract class PriceTicketRateDto implements _$PriceTicketRateDto {
  const PriceTicketRateDto._();

  const factory PriceTicketRateDto({
    String? id,
    required String name,
    required double price,
    required String valid_until,
    required int quantity,
    required String fee_type,
    required int fee_quantity,
    required String includes,
    required String additional_info,
  }) = _PriceTicketRateDto;

  PriceTicketRate toDomain() {
    return PriceTicketRate(
      id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
      name: name,
      price: price,
      validUntil: DateTime.parse(valid_until),
      quantity: quantity,
      feeType: fee_type,
      feeQuantity: fee_quantity,
      includes: includes,
      additionalInfo: additional_info,
    );
  }

  factory PriceTicketRateDto.fromJson(Map<String, dynamic> json) =>
      _$PriceTicketRateDtoFromJson(json);
}
