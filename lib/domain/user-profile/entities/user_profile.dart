import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entities/coordinate.dart';
import '../../core/value_objects/unique_id.dart';

part 'user_profile.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required UniqueId uid,
    required String username,
    required String email,
    required String? imagePath,
    required DateTime? dateOfBirth,
    required Coordinate? coordinate,
    required String? city,
    required List<String> paymentIds,
  }) = _UserProfile;
}
