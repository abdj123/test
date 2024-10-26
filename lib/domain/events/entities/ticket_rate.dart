import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';
import 'availability.dart';
import 'field.dart';
import 'price_ticket_rate.dart';
import 'question.dart';
import 'supplement.dart';
import 'warranty.dart';

part 'ticket_rate.freezed.dart';

@freezed
abstract class TicketRate with _$TicketRate {
  const factory TicketRate({
    required UniqueId id,
    required String name,
    required String slug,
    required DateTime validFrom,
    required bool complete,
    required String type,
    required List<PriceTicketRate> prices,
    required List<Supplement> supplements,
    required bool available,
    PriceTicketRate? currentPrice,
    Warranty? warranty,
    Availability? availability,
    required int min,
    required int max,
    required List<Question> questions,
    List<Field>? fields,
  }) = _TicketRate;
}

enum Type { limited, public }
