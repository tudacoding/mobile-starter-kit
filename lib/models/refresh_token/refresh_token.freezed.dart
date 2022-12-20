// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) {
  return _RefreshToken.fromJson(json);
}

/// @nodoc
mixin _$RefreshToken {
  String? get accessToken => throw _privateConstructorUsedError;
  int? get accessTokenExpiredAt => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  int? get refreshTokenExpiredAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenCopyWith<RefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenCopyWith<$Res> {
  factory $RefreshTokenCopyWith(
          RefreshToken value, $Res Function(RefreshToken) then) =
      _$RefreshTokenCopyWithImpl<$Res, RefreshToken>;
  @useResult
  $Res call(
      {String? accessToken,
      int? accessTokenExpiredAt,
      String? refreshToken,
      int? refreshTokenExpiredAt});
}

/// @nodoc
class _$RefreshTokenCopyWithImpl<$Res, $Val extends RefreshToken>
    implements $RefreshTokenCopyWith<$Res> {
  _$RefreshTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiredAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiredAt = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiredAt: freezed == accessTokenExpiredAt
          ? _value.accessTokenExpiredAt
          : accessTokenExpiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshTokenExpiredAt: freezed == refreshTokenExpiredAt
          ? _value.refreshTokenExpiredAt
          : refreshTokenExpiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenCopyWith<$Res>
    implements $RefreshTokenCopyWith<$Res> {
  factory _$$_RefreshTokenCopyWith(
          _$_RefreshToken value, $Res Function(_$_RefreshToken) then) =
      __$$_RefreshTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      int? accessTokenExpiredAt,
      String? refreshToken,
      int? refreshTokenExpiredAt});
}

/// @nodoc
class __$$_RefreshTokenCopyWithImpl<$Res>
    extends _$RefreshTokenCopyWithImpl<$Res, _$_RefreshToken>
    implements _$$_RefreshTokenCopyWith<$Res> {
  __$$_RefreshTokenCopyWithImpl(
      _$_RefreshToken _value, $Res Function(_$_RefreshToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiredAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiredAt = freezed,
  }) {
    return _then(_$_RefreshToken(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiredAt: freezed == accessTokenExpiredAt
          ? _value.accessTokenExpiredAt
          : accessTokenExpiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshTokenExpiredAt: freezed == refreshTokenExpiredAt
          ? _value.refreshTokenExpiredAt
          : refreshTokenExpiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshToken implements _RefreshToken {
  _$_RefreshToken(
      {this.accessToken,
      this.accessTokenExpiredAt,
      this.refreshToken,
      this.refreshTokenExpiredAt});

  factory _$_RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenFromJson(json);

  @override
  final String? accessToken;
  @override
  final int? accessTokenExpiredAt;
  @override
  final String? refreshToken;
  @override
  final int? refreshTokenExpiredAt;

  @override
  String toString() {
    return 'RefreshToken(accessToken: $accessToken, accessTokenExpiredAt: $accessTokenExpiredAt, refreshToken: $refreshToken, refreshTokenExpiredAt: $refreshTokenExpiredAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessTokenExpiredAt, accessTokenExpiredAt) ||
                other.accessTokenExpiredAt == accessTokenExpiredAt) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.refreshTokenExpiredAt, refreshTokenExpiredAt) ||
                other.refreshTokenExpiredAt == refreshTokenExpiredAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken,
      accessTokenExpiredAt, refreshToken, refreshTokenExpiredAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenCopyWith<_$_RefreshToken> get copyWith =>
      __$$_RefreshTokenCopyWithImpl<_$_RefreshToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenToJson(
      this,
    );
  }
}

abstract class _RefreshToken implements RefreshToken {
  factory _RefreshToken(
      {final String? accessToken,
      final int? accessTokenExpiredAt,
      final String? refreshToken,
      final int? refreshTokenExpiredAt}) = _$_RefreshToken;

  factory _RefreshToken.fromJson(Map<String, dynamic> json) =
      _$_RefreshToken.fromJson;

  @override
  String? get accessToken;
  @override
  int? get accessTokenExpiredAt;
  @override
  String? get refreshToken;
  @override
  int? get refreshTokenExpiredAt;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenCopyWith<_$_RefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}
