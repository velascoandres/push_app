import 'package:flutter/material.dart';
import 'package:push_app/src/pages/home_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:push_app/src/pages/message_page.dart';
import 'package:push_app/src/providers/push_notification_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'message': (BuildContext context) => MessagePage(),
      },
    );
  }
}
