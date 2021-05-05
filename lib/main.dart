import 'package:flutter/material.dart';
import 'package:socialintegrationapp/screens/SignInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Integration App',
      theme: ThemeData(
       brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}
