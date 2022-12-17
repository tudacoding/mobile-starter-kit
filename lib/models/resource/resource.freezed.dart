// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
mixin _$Resource {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get dataType => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Origin? get origin => throw _privateConstructorUsedError;
  String? get subType => throw _privateConstructorUsedError;
  String? get vendorId => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      int? size,
      String? dataType,
      String? createdBy,
      String? provider,
      String? type,
      Origin? origin,
      String? subType,
      String? vendorId,
      String? tags,
      DateTime? updatedAt,
      DateTime? createdAt,
      @JsonKey(name: '__v') int? v,
      String? status,
      int? duration,
      String? link});

  $OriginCopyWith<$Res>? get origin;
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? size = freezed,
    Object? dataType = freezed,
    Object? createdBy = freezed,
    Object? provider = freezed,
    Object? type = freezed,
    Object? origin = freezed,
    Object? subType = freezed,
    Object? vendorId = freezed,
    Object? tags = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? v = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $OriginCopyWith<$Res>(_value.origin!, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$$_ResourceCopyWith(
          _$_Resource value, $Res Function(_$_Resource) then) =
      __$$_ResourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      int? size,
      String? dataType,
      String? createdBy,
      String? provider,
      String? type,
      Origin? origin,
      String? subType,
      String? vendorId,
      String? tags,
      DateTime? updatedAt,
      DateTime? createdAt,
      @JsonKey(name: '__v') int? v,
      String? status,
      int? duration,
      String? link});

  @override
  $OriginCopyWith<$Res>? get origin;
}

/// @nodoc
class __$$_ResourceCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$_Resource>
    implements _$$_ResourceCopyWith<$Res> {
  __$$_ResourceCopyWithImpl(
      _$_Resource _value, $Res Function(_$_Resource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? size = freezed,
    Object? dataType = freezed,
    Object? createdBy = freezed,
    Object? provider = freezed,
    Object? type = freezed,
    Object? origin = freezed,
    Object? subType = freezed,
    Object? vendorId = freezed,
    Object? tags = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? v = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_Resource(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resource implements _Resource {
  _$_Resource(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.size,
      this.dataType,
      this.createdBy,
      this.provider,
      this.type,
      this.origin,
      this.subType,
      this.vendorId,
      this.tags,
      this.updatedAt,
      this.createdAt,
      @JsonKey(name: '__v') this.v,
      this.status,
      this.duration,
      this.link});

  factory _$_Resource.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final int? size;
  @override
  final String? dataType;
  @override
  final String? createdBy;
  @override
  final String? provider;
  @override
  final String? type;
  @override
  final Origin? origin;
  @override
  final String? subType;
  @override
  final String? vendorId;
  @override
  final String? tags;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final String? status;
  @override
  final int? duration;
  @override
  final String? link;

  @override
  String toString() {
    return 'Resource(id: $id, title: $title, size: $size, dataType: $dataType, createdBy: $createdBy, provider: $provider, type: $type, origin: $origin, subType: $subType, vendorId: $vendorId, tags: $tags, updatedAt: $updatedAt, createdAt: $createdAt, v: $v, status: $status, duration: $duration, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      size,
      dataType,
      createdBy,
      provider,
      type,
      origin,
      subType,
      vendorId,
      tags,
      updatedAt,
      createdAt,
      v,
      status,
      duration,
      link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceCopyWith<_$_Resource> get copyWith =>
      __$$_ResourceCopyWithImpl<_$_Resource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceToJson(
      this,
    );
  }
}

abstract class _Resource implements Resource {
  factory _Resource(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final int? size,
      final String? dataType,
      final String? createdBy,
      final String? provider,
      final String? type,
      final Origin? origin,
      final String? subType,
      final String? vendorId,
      final String? tags,
      final DateTime? updatedAt,
      final DateTime? createdAt,
      @JsonKey(name: '__v') final int? v,
      final String? status,
      final int? duration,
      final String? link}) = _$_Resource;

  factory _Resource.fromJson(Map<String, dynamic> json) = _$_Resource.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  int? get size;
  @override
  String? get dataType;
  @override
  String? get createdBy;
  @override
  String? get provider;
  @override
  String? get type;
  @override
  Origin? get origin;
  @override
  String? get subType;
  @override
  String? get vendorId;
  @override
  String? get tags;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  String? get status;
  @override
  int? get duration;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceCopyWith<_$_Resource> get copyWith =>
      throw _privateConstructorUsedError;
}
