import 'package:freezed_annotation/freezed_annotation.dart';

import 'origin.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@freezed
class Resource with _$Resource {
  factory Resource({
    @JsonKey(name: '_id') String? id,
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
    String? link,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
}
