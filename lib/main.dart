import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_starter_kit/plugins/get_it.dart';
import 'package:mobile_starter_kit/plugins/localstorage.dart';
import 'package:mobile_starter_kit/plugins/router.dart';
import 'package:mobile_starter_kit/plugins/theme.dart';
import 'package:mobile_starter_kit/store/auth/auth_store.dart';
import 'package:mobile_starter_kit/store/counter/counter_store.dart';
import 'package:mobile_starter_kit/store/resource/resource_store.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt.init();
  await LocalStorage.instance.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(ChangeNotifierProvider(
    create: (_) => AppTheme(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final CounterStore _counterStore = CounterStore();
  final ResourceStore _resourceStore = ResourceStore();
  final AuthStore _authStore = AuthStore();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<CounterStore>(create: (_) => _counterStore),
          Provider<ResourceStore>(create: (_) => _resourceStore),
          Provider<AuthStore>(create: (_) => _authStore),
        ],
        child: OKToast(
          child: MaterialApp.router(
              title: 'Netflix',
              theme: AppTheme.of(context, listen: true).currentTheme,
              routerConfig: router),
        ));
  }
}
