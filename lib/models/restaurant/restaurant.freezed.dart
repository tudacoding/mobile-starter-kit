// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get name => throw _privateConstructorUsedError;
  String get cuisine => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_opened')
  int? get yearOpened => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String name,
      String cuisine,
      @JsonKey(name: 'year_opened') int? yearOpened,
      List<Review> reviews});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cuisine = null,
    Object? yearOpened = freezed,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      yearOpened: freezed == yearOpened
          ? _value.yearOpened
          : yearOpened // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String cuisine,
      @JsonKey(name: 'year_opened') int? yearOpened,
      List<Review> reviews});
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cuisine = null,
    Object? yearOpened = freezed,
    Object? reviews = null,
  }) {
    return _then(_$_Restaurant(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      yearOpened: freezed == yearOpened
          ? _value.yearOpened
          : yearOpened // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  _$_Restaurant(
      {required this.name,
      required this.cuisine,
      @JsonKey(name: 'year_opened') this.yearOpened,
      final List<Review> reviews = const []})
      : _reviews = reviews;

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final String name;
  @override
  final String cuisine;
  @override
  @JsonKey(name: 'year_opened')
  final int? yearOpened;
  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'Restaurant(name: $name, cuisine: $cuisine, yearOpened: $yearOpened, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.yearOpened, yearOpened) ||
                other.yearOpened == yearOpened) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, cuisine, yearOpened,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  factory _Restaurant(
      {required final String name,
      required final String cuisine,
      @JsonKey(name: 'year_opened') final int? yearOpened,
      final List<Review> reviews}) = _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  String get name;
  @override
  String get cuisine;
  @override
  @JsonKey(name: 'year_opened')
  int? get yearOpened;
  @override
  List<Review> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
