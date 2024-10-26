import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';
import 'price.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required UniqueId id,
    required String name,
    required String? description,
    required int? capacity,
    required int? availableQuantity,
    required Price price,
    required int? soldQuantity,
    required DateTime? salesStartDate,
    required DateTime? salesEndDate,
  }) = _Product;
}
