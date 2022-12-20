import 'dart:convert';
import 'package:mobile_starter_kit/models/user_profile/user_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static final LocalStorage _singleton = LocalStorage._internal();
  static LocalStorage get instance => _singleton;

  static const String _loginInfoKey = "loginInfor";

  SharedPreferences? _prefs;

  LocalStorage._internal();

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  UserProfile? get loginInfo {
    final str = _prefs?.getString(_loginInfoKey);
    return (str != null && str.isNotEmpty)
        ? UserProfile.fromJson(json.decode(str))
        : null;
  }

  set loginInfo(UserProfile? loginInfo) {
    _prefs?.setString(
      _loginInfoKey,
      loginInfo != null ? json.encode(loginInfo.toJson()) : "",
    );
  }
}
