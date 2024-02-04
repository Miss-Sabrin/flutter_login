import 'package:flutter/material.dart';
import 'package:one/chat_input.dart';
import 'package:one/chat_page.dart';
import 'package:one/login_page.dart';

void main() {
  runApp(const ChatApp());
}







class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat app',
      theme: ThemeData(primarySwatch: Colors.amber,
      backgroundColor: Colors.blue,
      focusColor: Colors.black,
      ),
      
      //home: ChatPage(),
      home: Login(),
      routes: {
        '/chat':(context)=>ChatPage(),
      },
     //home: ChatInput(),
      
    );
  }
}







