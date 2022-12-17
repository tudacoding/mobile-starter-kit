import 'package:dio/dio.dart';
import 'package:mobile_starter_kit/api/common/api_handler.dart';
import 'package:mobile_starter_kit/api/common/environments.dart';

class AuthApiHandler extends ApiHandler {
  AuthApiHandler() : super(currentEnv.authencationUrl, routeMap: {});

  // todo: need login API

  void applyAuthorizationFor(List<ApiHandler> apis) {
    final dios = apis.map((e) => e.dio).toList();
    final authorizationInterceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        handler.next(options);
      },
    );
    for (var e in dios) {
      e.interceptors.add(authorizationInterceptor);
    }
  }
}
