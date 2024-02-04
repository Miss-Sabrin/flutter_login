import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one/chat_bubble.dart';
import 'package:one/chat_input.dart';
import 'package:one/model/chat_message_enttay.dart';

class ChatPage extends StatefulWidget {
  //todo useing navigater 
 // final String username;
 // const ChatPage({super.key,required this.username});
     ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
    ///todo difrence chats
    ///todo initiate state of messages
    List<ChatMessageEnttity> _message=[
      // ChatMessageEnttity(
        // author:  Author(userName: "sabrin"),
        // createdAt: 12334,
        // id: '1',
        // text: "fisrt text"
        
        
        
        //  ),
        //  ChatMessageEnttity(
        // author:  Author(userName: "rina"),
        // createdAt: 12334,
        // id: '2',
        // text: "second text"
        
        
        
        //  ),
        
        
         
      
    ];

///todo type of json
    _loadInitialMessage() async{
     rootBundle.loadString('assets/mock_message.json').then((response) {
            final List<dynamic> decodeList=jsonDecode(response)as List;

      final List<ChatMessageEnttity> _chatMessage=decodeList.map((listItem){
          return ChatMessageEnttity.fromJson(listItem);
        
      }).toList();
          
print(_chatMessage.length);

//todo final stated the 
setState(() {
  _message=_chatMessage;
});
      }).then((_) {
        print('done');
      });
  
      
    }
    onMessageSent(ChatMessageEnttity enttity){
      _message.add(enttity);

      setState(() {
        
      });

    }
    @override
  void initState() {
    // TODO: implement initState
     //todo call method
    _loadInitialMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

   
    //todo using add named router 👍
          final username=ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('hi $username')),
        
        actions: [
        IconButton(onPressed: (){

          //todo navigator back to loging on logout

          Navigator.pushReplacementNamed(context,'/');
          print('icon pressed');
        }, icon: Icon(Icons.logout),
        
        ), 
        
      ]),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _message.length,
              itemBuilder: (context, index) {
                return ChatBubble(alingment: index % 2==0
                ? Alignment.centerLeft
                :Alignment.centerRight,
                
                
                 enttity: 
                 _message[index]
               );
                

              },
              
           
                // ChatBubble(alingment: Alignment.centerLeft, message: 'sabrin iwrn'),
                //  ChatBubble(alingment: Alignment.centerRight, message: 'sharmake fcnhy'),
                //   ChatBubble(alingment: Alignment.centerLeft, message: 'sabrin m.a'),


                
                ///
               
          
              
              ///
              ///
              
          
              
            ),
          ),
            ChatInput(onSubmit: onMessageSent,)
        ],
      ),
    );
  }
}