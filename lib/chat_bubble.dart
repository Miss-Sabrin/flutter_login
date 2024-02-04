import 'package:flutter/material.dart';
import 'package:one/chat_input.dart';
import 'package:one/model/chat_message_enttay.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessageEnttity enttity;


  final Alignment alingment;
  const ChatBubble({Key? key ,required this.alingment,required this.enttity}):super (key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
                  alignment: alingment,
                  child: Container(
                    constraints: 
                     BoxConstraints(maxWidth:MediaQuery.of(context).size.width *0.5, ),

                    
                     
                    child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:   [
                        Text(
                        '${enttity.text}',
                        style: TextStyle(fontSize: 20,
                        color: Colors.white
                        
                        
                        ),
                        ),
                        if(enttity.imageUrl!=null)
                                   Image.network('${enttity.imageUrl}',
                                   
                                   height: 200,
                                   )
                
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