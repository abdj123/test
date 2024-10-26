import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/events/entities/product.dart';
import '../../../../../domain/core/value_objects/unique_id.dart';
import '../price/price_dto.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required String id,
    required String name,
    required String? description,
    required int? capacity,
    required int? availableQuantity,
    required PriceDto price,
    required int? soldQuantity,
    required DateTime? salesStartDate,
    required DateTime? salesEndDate,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      name: product.name,
      description: product.description,
      capacity: product.capacity,
      availableQuantity: product.availableQuantity,
      price: PriceDto.fromDomain(product.price),
      soldQuantity: product.soldQuantity,
      salesStartDate: product.salesStartDate,
      salesEndDate: product.salesEndDate,
    );
  }

  Product toDomain() => Product(
      id: UniqueId.fromUniqueString(id),
      name: name,
      description: description,
      capacity: capacity,
      availableQuantity: availableQuantity,
      price: price.toDomain(),
      soldQuantity: soldQuantity,
      salesStartDate: salesStartDate,
      salesEndDate: salesEndDate);

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
