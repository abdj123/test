import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';
// import '../../events/entities/product.dart';
import '../../venues/entities/venue.dart';

part 'order_detail.freezed.dart';

@freezed
abstract class OrderDetail with _$OrderDetail {
  const factory OrderDetail({
    required UniqueId paymentId,
    required UniqueId eventId,
    required String eventName,
    required String eventImageURL,
    required DateTime? startDate,
    required DateTime? endDate,
    required List<dynamic> tickets,
    required Venue venue,
  }) = _OrderDetail;
}
