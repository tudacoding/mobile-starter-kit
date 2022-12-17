// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      love: (json['love'] as num).toDouble(),
      like: (json['like'] as num).toDouble(),
      score: (json['score'] as num).toDouble(),
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'love': instance.love,
      'like': instance.like,
      'score': instance.score,
      'review': instance.review,
    };
