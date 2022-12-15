import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/plugins/router.dart';
import 'package:mobile_starter_kit/plugins/theme.dart';
import 'package:mobile_starter_kit/store/counter_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AppTheme(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final CounterStore _counterStore = CounterStore();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<CounterStore>(create: (_) => _counterStore),
        ],
        child: MaterialApp.router(
            title: 'Netflix',
            theme: AppTheme.of(context, listen: true).currentTheme,
            routerConfig: router));
  }
}
