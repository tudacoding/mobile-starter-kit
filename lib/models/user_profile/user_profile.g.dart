// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      accessToken: json['accessToken'] as String?,
      accessTokenExpiredAt: json['accessTokenExpiredAt'] as int?,
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiredAt: json['refreshTokenExpiredAt'] as int?,
      vendorId: json['vendorId'] as String?,
      dataType: json['dataType'] as String?,
      sortKeyCreate: json['sortKeyCreate'] as String?,
      studentId: json['studentId'] as String?,
      createdFrom: json['createdFrom'] as String?,
      createdAt: json['createdAt'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      sortKeyUpdate: json['sortKeyUpdate'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      updatedAt: json['updatedAt'] as int?,
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiredAt': instance.accessTokenExpiredAt,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiredAt': instance.refreshTokenExpiredAt,
      'vendorId': instance.vendorId,
      'dataType': instance.dataType,
      'sortKeyCreate': instance.sortKeyCreate,
      'studentId': instance.studentId,
      'createdFrom': instance.createdFrom,
      'createdAt': instance.createdAt,
      'email': instance.email,
      'name': instance.name,
      'state': instance.state,
      'sortKeyUpdate': instance.sortKeyUpdate,
      'roles': instance.roles,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
      'type': instance.type,
    };
