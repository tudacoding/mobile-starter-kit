import 'package:get_it/get_it.dart';
import 'package:mobile_starter_kit/api/service/index.dart';

class SetupGetIt {
  static init() {
    final getIt = GetIt.instance;
    getIt.registerLazySingleton<ApiService>(() => ApiService());
  }
}
