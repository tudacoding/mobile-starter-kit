import 'package:dio/dio.dart';
import 'package:mobile_starter_kit/api/common/api_handler.dart';
import 'package:mobile_starter_kit/api/common/environments.dart';
import 'package:mobile_starter_kit/models/user_profile/user_profile.dart';
import 'package:mobile_starter_kit/plugins/base64.dart';

class AuthApiHandler extends ApiHandler {
  AuthApiHandler() : super(currentEnv.authencationUrl, routeMap: {});

  Future<UserProfile> login(String email, String password) async {
    var res = await dio.post("/student/signin",
        data: {"email": email, "password": Base64.encode(password)});
    var profile = await dio.get("/student/${res.data['id']}");
    res.data["avatar"] = profile.data["avatar"];
    return UserProfile.fromJson(res.data);
  }

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
