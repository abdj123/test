// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketRateDtoImpl _$$TicketRateDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketRateDtoImpl(
      id: json['id'] as String,
      organization_id: json['organization_id'] as String,
      event_id: json['event_id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      valid_from: json['valid_from'] as String,
      complete: json['complete'] as bool,
      type: json['type'] as String,
      show_all_prices: json['show_all_prices'] as bool,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => PriceTicketRateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplements: (json['supplements'] as List<dynamic>)
          .map((e) => SupplementDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      available: json['available'] as bool,
      current_price: json['current_price'] == null
          ? null
          : PriceTicketRateDto.fromJson(
              json['current_price'] as Map<String, dynamic>),
      warranty: json['warranty'] == null
          ? null
          : WarrantyDto.fromJson(json['warranty'] as Map<String, dynamic>),
      availability: AvailabilityDto.fromJson(
          json['availability'] as Map<String, dynamic>),
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TicketRateDtoImplToJson(_$TicketRateDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organization_id,
      'event_id': instance.event_id,
      'name': instance.name,
      'slug': instance.slug,
      'valid_from': instance.valid_from,
      'complete': instance.complete,
      'type': instance.type,
      'show_all_prices': instance.show_all_prices,
      'prices': instance.prices,
      'supplements': instance.supplements,
      'available': instance.available,
      'current_price': instance.current_price,
      'warranty': instance.warranty,
      'availability': instance.availability,
      'min': instance.min,
      'max': instance.max,
      'questions': instance.questions,
    };
