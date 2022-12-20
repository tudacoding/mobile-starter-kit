import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? accessToken,
    int? accessTokenExpiredAt,
    String? refreshToken,
    int? refreshTokenExpiredAt,
    String? vendorId,
    String? dataType,
    String? sortKeyCreate,
    String? studentId,
    String? createdFrom,
    int? createdAt,
    String? email,
    String? name,
    String? state,
    String? sortKeyUpdate,
    List<String>? roles,
    int? updatedAt,
    String? id,
    String? type,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
