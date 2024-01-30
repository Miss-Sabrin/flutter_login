import 'package:flutter/material.dart';
import 'package:one/chat_page.dart';
import 'package:one/login_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat app',
      theme: ThemeData(primarySwatch: Colors.amber),
      //home: ChatPage(),
      home: Login(),
    );
  }
}