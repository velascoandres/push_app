import 'package:flutter/material.dart';
import 'package:push_app/src/pages/home_page.dart';
import 'package:push_app/src/pages/message_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
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
