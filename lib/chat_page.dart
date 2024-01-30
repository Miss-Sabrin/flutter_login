import 'package:flutter/material.dart';
import 'package:one/chat_bubble.dart';
import 'package:one/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('hi'),
        
        actions: [
        IconButton(onPressed: (){
          print('click');
        }, icon: Icon(Icons.logout),
        
        ),
        
      ]),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(alingment: index % 2==0
                ? Alignment.centerLeft
                :Alignment.centerRight,
                
                
                 message: 'waku raba ma irabta🤞❤');
                

              },
              
           
                // ChatBubble(alingment: Alignment.centerLeft, message: 'sabrin iwrn'),
                //  ChatBubble(alingment: Alignment.centerRight, message: 'sharmake fcnhy'),
                //   ChatBubble(alingment: Alignment.centerLeft, message: 'sabrin m.a'),


                
                ///
               
          
              
              ///
              ///
              
          
              
            ),
          ),
            ChatInput()
        ],
      ),
    );
  }
}