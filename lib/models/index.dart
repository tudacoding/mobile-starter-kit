import 'package:mobile_starter_kit/models/restaurant/restaurant.dart';

class _JsonHandler<T> {
  T Function(Map<String, dynamic>) from;
  Map<String, dynamic> Function(T) to;
  _JsonHandler(this.from, this.to);
}

class ModelJsonHandler {
  static List<T> fromListJson<T>(dynamic data) {
    if (T is Map<String, dynamic>) {
      return (data as List<T>).toList();
    }

    final handler = _handlers
        .firstWhere((element) => element is _JsonHandler<T>) as _JsonHandler<T>;
    return (data as List).map((e) => handler.from(e)).toList();
  }

  static T fromJson<T>(Map<String, dynamic> json) {
    if (T is Map<String, dynamic>) {
      return json as T;
    }

    final handler = _handlers
        .firstWhere((element) => element is _JsonHandler<T>) as _JsonHandler<T>;
    return handler.from(json);
  }

  static Map<String, dynamic> toJson<T>(T model) {
    final handler = _handlers
        .firstWhere((element) => element is _JsonHandler<T>) as _JsonHandler<T>;
    return handler.to(model);
  }

  static final List _handlers = [
    _JsonHandler<Restaurant>(
        (json) => Restaurant.fromJson(json), (model) => model.toJson()),
  ];
}
