import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';

// c7wBQdwnQYu9xiBgMLhDFw:APA91bHYpBB7IJZKcMYq-oyTYhyA8SvFRz6x8Mzgx1d8q06F-sfT_YePcusPkU0xXTXT8uvn1KVSlfcwDmLv75JWGE0yV-5DslnbeQwTnta0zSC1TgemRW1wvOmIzakDmBFJLErPVTr9


class PushNotificationProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  static Future<dynamic> myBackgroundMessage(Map<String, dynamic> message) {
    if (message.containsKey('data')) {
      final dynamic data = message['data'];
    }
    if (message.containsKey('notification')) {
      final dynamic notification = message['notification'];
    }
  }

  initNotifications() async {
    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();

    print('TOKEN' + token);

    _firebaseMessaging.configure(
      onMessage: onMessage,
      onLaunch: onLaunch,
      onResume: onResume,
    );
  }

  Future<dynamic> onMessage(Map<String, dynamic> message) async {
    print("onMessage: $message");
  }

  Future<dynamic> onLaunch(Map<String, dynamic> message) async {
    print("onLaunch: $message");
  }

  Future<dynamic> onResume(Map<String, dynamic> message) async {
    print("onResume: $message");
  }
}
