import 'package:get_it/get_it.dart';
import 'package:mobile_starter_kit/plugins/localstorage.dart';
import 'package:mobile_starter_kit/plugins/ok_toast.dart';
import 'package:mobx/mobx.dart';
import 'package:mobile_starter_kit/api/service/index.dart';
import 'package:mobile_starter_kit/models/user_profile/user_profile.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  final api = GetIt.instance<ApiService>();

  @observable
  UserProfile? loginInfo;
  @observable
  bool doLogin = false;

  @computed
  bool get loggedIn => loginInfo != null;

  AuthStoreBase() {
    loginInfo = LocalStorage.instance.loginInfo;
    reaction((_) => loginInfo,
        (user) => LocalStorage.instance.loginInfo = loginInfo);
  }

  @action
  Future<bool> login(email, password) async {
    doLogin = true;
    try {
      loginInfo = await api.auth.login(email, password);
      return true;
    } catch (e) {
      ToastHelper.error("Đã có lỗi xảy ra, vui lòng thử lại.");
      return false;
    } finally {
      doLogin = false;
    }
  }
}
