// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshToken _$$_RefreshTokenFromJson(Map<String, dynamic> json) =>
    _$_RefreshToken(
      accessToken: json['accessToken'] as String?,
      accessTokenExpiredAt: json['accessTokenExpiredAt'] as int?,
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiredAt: json['refreshTokenExpiredAt'] as int?,
    );

Map<String, dynamic> _$$_RefreshTokenToJson(_$_RefreshToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiredAt': instance.accessTokenExpiredAt,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiredAt': instance.refreshTokenExpiredAt,
    };
