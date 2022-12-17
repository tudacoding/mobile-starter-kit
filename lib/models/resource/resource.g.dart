// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Resource _$$_ResourceFromJson(Map<String, dynamic> json) => _$_Resource(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      size: json['size'] as int?,
      dataType: json['dataType'] as String?,
      createdBy: json['createdBy'] as String?,
      provider: json['provider'] as String?,
      type: json['type'] as String?,
      origin: json['origin'] == null
          ? null
          : Origin.fromJson(json['origin'] as Map<String, dynamic>),
      subType: json['subType'] as String?,
      vendorId: json['vendorId'] as String?,
      tags: json['tags'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: json['__v'] as int?,
      status: json['status'] as String?,
      duration: json['duration'] as int?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_ResourceToJson(_$_Resource instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'size': instance.size,
      'dataType': instance.dataType,
      'createdBy': instance.createdBy,
      'provider': instance.provider,
      'type': instance.type,
      'origin': instance.origin,
      'subType': instance.subType,
      'vendorId': instance.vendorId,
      'tags': instance.tags,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
      'status': instance.status,
      'duration': instance.duration,
      'link': instance.link,
    };
