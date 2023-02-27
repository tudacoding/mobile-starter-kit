import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
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
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

bool isFlutterLocalNotificationsInitialized = false;

// TODO: Add stream controller
// TODO: Define the background message handler

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // print('run =');
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await setupFlutterNotifications();
  // print('Handling a background message ${message.notification?.title}');
  await Firebase.initializeApp();

  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
    print('Message data: ${message.data}');
    print('Message notification: ${message.notification?.title}');
    print('Message notification: ${message.notification?.body}');
  }
}

Future<void> setupFlutterNotifications() async {
  print('setup Flutter noti $isFlutterLocalNotificationsInitialized');
  if (isFlutterLocalNotificationsInitialized) return;
  print('ask for enable');
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt.init();
  await LocalStorage.instance.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // TODO: Request permission
  final messaging = FirebaseMessaging.instance;

  final settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (kDebugMode) {
    print('Permission granted: ${settings.authorizationStatus}');
  }
  // TODO: Register with FCM
  // TODO: Set up foreground message handler
  // TODO: Set up background message handler
  String? token = await messaging.getToken();

  if (kDebugMode) {
    print('Registration Token=$token');
  }

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

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
