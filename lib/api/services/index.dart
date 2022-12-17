//  api service để kiểm tra xem mỗi lần gọi API đã có authentication chưa
import 'package:mobile_starter_kit/api/handler/auth_api_handler.dart';
import 'package:mobile_starter_kit/api/handler/resource_api_handler.dart';

class ApiService {
  var auth = AuthApiHandler();
  var resource = ResourceApiHandler();

  ApiService() {
    auth.applyAuthorizationFor([resource]);
  }
}
