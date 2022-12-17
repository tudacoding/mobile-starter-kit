import 'package:dio/dio.dart';
import 'package:mobile_starter_kit/api/common/environments.dart';
import 'package:mobile_starter_kit/models/index.dart';

final vendorRequestInceptor =
    InterceptorsWrapper(onRequest: (options, handlers) {
  switch (options.method.toUpperCase()) {
    case "GET":
    case "DELETE":
    case "PUT":
      if (options.queryParameters.isEmpty) {
        options.queryParameters = {"vendorId": currentEnv.vendorId};
      } else {
        options.queryParameters["vendorId"] = currentEnv.vendorId;
      }
      break;
    default:
      if (options.data == null) {
        options.data = {"vendorId": currentEnv.vendorId};
      } else {
        options.data["vendorId"] = currentEnv.vendorId;
      }
      break;
  }

  handlers.next(options);
});

class ApiHandler {
  final Dio dio;
  final bool requireAuth;
  final Map<Type, String> routeMap;

  ApiHandler(String baseUrl,
      {bool? requireAuth, required this.routeMap, bool autoAddVendorId = true})
      : dio = Dio(BaseOptions(baseUrl: baseUrl)),
        requireAuth = requireAuth ?? false {
    if (autoAddVendorId) {
      dio.interceptors.add(vendorRequestInceptor);
    }
  }
  Future<int> count<T>(
      {Map<String, dynamic>? params, String path = "/count"}) async {
    final response =
        await dio.get("${routeMap[T]}$path", queryParameters: params);
    return response.data as int;
  }

  Future<T> create<T>(T model) async {
    final path = routeMap[T];
    final res = await dio.post(path!, data: ModelJsonHandler.toJson<T>(model));
    return ModelJsonHandler.fromJson<T>(res.data);
  }

  Future<T> delete<T>(dynamic id) async {
    final res = await dio.delete("${routeMap[T]}/$id");
    return ModelJsonHandler.fromJson<T>(res.data);
  }

  Future<List<T>> find<T>({Map<String, dynamic>? params}) async {
    final path = routeMap[T];
    final response = await dio.get(path!, queryParameters: params);
    return ModelJsonHandler.fromListJson(response.data);
  }

  Future<T> findOne<T>({dynamic id, Map<String, dynamic>? params}) async {
    var path = routeMap[T];
    if (id != null) {
      path = "${routeMap[T]}/$id";
    }
    final res = await dio.get(path!, queryParameters: params);
    return ModelJsonHandler.fromJson<T>(res.data);
  }

  Future<T> update<T>(dynamic id, T model) async {
    final res = await dio.put("${routeMap[T]}/$id",
        data: ModelJsonHandler.toJson<T>(model));
    return ModelJsonHandler.fromJson<T>(res.data);
  }
}
