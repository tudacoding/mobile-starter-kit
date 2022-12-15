import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/plugins/router.dart';
import 'package:mobile_starter_kit/plugins/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AppTheme(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Netflix',
        theme: AppTheme.of(context, listen: true).currentTheme,
        routerConfig: router);
  }
}
