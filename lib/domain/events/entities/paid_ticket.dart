import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_tree_client/domain/core/value_objects/unique_id.dart';

import 'price_ticket_rate.dart';

part 'paid_ticket.freezed.dart';

@freezed
abstract class PaidTicket with _$PaidTicket {
  const factory PaidTicket({
    required UniqueId paymentId,
    required String qrCode,
    required String eventId,
    required String ticketRateId,
    required PriceTicketRate price,
  }) = _PaidTicket;
}
