import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void showFlutterNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  print('showFlutterNotification ${notification?.title}');
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? _token;
  String? initialMessage;
  bool _resolved = false;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      print(token);
    });
    FirebaseMessaging.instance.getInitialMessage().then(
          (value) => {
            setState(
              () {
                _resolved = true;
                initialMessage = value?.data.toString();
              },
            )
          },
        );

    FirebaseMessaging.onMessage.listen(showFlutterNotification);

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!$message');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) => Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Hello'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => {}),
          child: const Icon(Icons.add),
        ));
  }
}
