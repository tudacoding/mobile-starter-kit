// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on AuthStoreBase, Store {
  Computed<bool>? _$loggedInComputed;

  @override
  bool get loggedIn => (_$loggedInComputed ??=
          Computed<bool>(() => super.loggedIn, name: 'AuthStoreBase.loggedIn'))
      .value;

  late final _$loginInfoAtom =
      Atom(name: 'AuthStoreBase.loginInfo', context: context);

  @override
  UserProfile? get loginInfo {
    _$loginInfoAtom.reportRead();
    return super.loginInfo;
  }

  @override
  set loginInfo(UserProfile? value) {
    _$loginInfoAtom.reportWrite(value, super.loginInfo, () {
      super.loginInfo = value;
    });
  }

  late final _$doLoginAtom =
      Atom(name: 'AuthStoreBase.doLogin', context: context);

  @override
  bool get doLogin {
    _$doLoginAtom.reportRead();
    return super.doLogin;
  }

  @override
  set doLogin(bool value) {
    _$doLoginAtom.reportWrite(value, super.doLogin, () {
      super.doLogin = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('AuthStoreBase.login', context: context);

  @override
  Future<bool> login(dynamic email, dynamic password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  late final _$logoutAsyncAction =
      AsyncAction('AuthStoreBase.logout', context: context);

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$AuthStoreBaseActionController =
      ActionController(name: 'AuthStoreBase', context: context);

  @override
  dynamic tokenRefreshed(dynamic refreshModel) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.tokenRefreshed');
    try {
      return super.tokenRefreshed(refreshModel);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginInfo: ${loginInfo},
doLogin: ${doLogin},
loggedIn: ${loggedIn}
    ''';
  }
}
