import 'package:flutter/material.dart';
import 'package:one/chat_input.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alingment;
  const ChatBubble({Key? key ,required this.alingment,required this.message}):super (key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
                  alignment: alingment,
                  child: Container(
                    child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:   [
                        Text(
                        message,
                        style: TextStyle(fontSize: 20,
                        color: Colors.white
                        
                        
                        ),
                        ),
                                   Image.network('https://cdn-icons-png.flaticon.com/128/10/10522.png')
                
                      ],
                    ),
                  ),
                
                  margin: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    )
                  )
                    
                  
                  ,),
                );
              
          
  }
}