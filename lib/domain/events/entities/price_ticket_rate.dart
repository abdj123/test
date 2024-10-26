import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';

part 'price_ticket_rate.freezed.dart';

@freezed
abstract class PriceTicketRate with _$PriceTicketRate {
  const factory PriceTicketRate({
    required UniqueId id,
    required String name,
    required double price,
    required DateTime validUntil,
    required String feeType,
    required int feeQuantity,
    required String includes,
    required String additionalInfo,
    required int quantity,
  }) = _PriceTicketRate;
}
