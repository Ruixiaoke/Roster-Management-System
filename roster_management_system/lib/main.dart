import 'package:flutter/material.dart';
import 'package:roster_management_system/widge/login.dart';
import 'package:roster_management_system/widge/register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: registerpage(),
    );
  }
}

