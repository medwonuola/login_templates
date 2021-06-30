import 'package:flutter/material.dart';
import 'package:login_templates/screens/one/login.dart' as one;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login and Signup Templates",
      debugShowCheckedModeBanner: false,
      home: one.Login(),
    );
  }
}
