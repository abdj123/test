import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/dtos/coordinate_dto.dart';
import '../../../domain/core/value_objects/unique_id.dart';
import '../../../domain/user-profile/entities/user_profile.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
abstract class UserProfileDto implements _$UserProfileDto {
  const UserProfileDto._();

  const factory UserProfileDto({
    required String uid,
    String? username,
    required String email,
    String? imagePath,
    DateTime? dateOfBirth,
    CoordinateDto? coordinate,
    String? city,
    List<String>? paymentIds,
  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(UserProfile profile) {
    return UserProfileDto(
      uid: profile.uid.getOrCrash(),
      username: profile.username,
      email: profile.email,
      imagePath: profile.imagePath,
      dateOfBirth: profile.dateOfBirth,
      coordinate: profile.coordinate == null
          ? null
          : CoordinateDto.fromDomain(profile.coordinate!),
      city: profile.city,
    );
  }

  UserProfile toDomain() => UserProfile(
        uid: UniqueId.fromUniqueString(uid),
        username: username ?? '',
        email: email,
        imagePath: imagePath,
        dateOfBirth: dateOfBirth,
        coordinate: coordinate?.toDomain(),
        city: city,
        paymentIds: paymentIds ?? [],
      );

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);
}
