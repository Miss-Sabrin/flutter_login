import 'package:flutter/material.dart';
import 'package:one/model/chat_message_enttay.dart';

class ChatInput extends StatelessWidget {
  final Function (ChatMessageEnttity) onSubmit;
   ChatInput({Key? key, required this.onSubmit}):super (key: key); 

  final chatMessageController=TextEditingController();
  void onSendingButtonPress(){
    print('${chatMessageController.text}');
  

  //todo add this new  message to the defualt list
  final newChatMessage=ChatMessageEnttity(
    text:chatMessageController.text,
     id: '123', 
     createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(userName: 'sabrinee'));
      onSubmit (newChatMessage);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: (){},
                   icon: Icon(Icons.add,
                   color: Colors.white,)),
                 ///todo add multible line textFeild here

                    Expanded(child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                    
                      controller: chatMessageController,
                        textCapitalization: TextCapitalization.sentences,

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'type your massege',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: InputBorder.none
                    ),
                   )),
                   //todo send message input😁
                    IconButton(
                      onPressed: onSendingButtonPress,
                   icon: Icon(Icons.send,
                   color: Colors.white,)),

                  
                   
                  
                ]),
                decoration: BoxDecoration(
                  color: Colors.black
                ),
              );
  }
}