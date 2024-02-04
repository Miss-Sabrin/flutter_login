import 'package:flutter/material.dart';
import 'package:one/utalites/textfield_style.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator <String> ? validator;
  final bool hasAsterisks;
  const LoginTextField({Key? key
  ,required this.controller,
  required this.hintText, 
   this.validator,this.hasAsterisks=false}) 
   
   :super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: hasAsterisks,
      
      validator: (value){
        if (validator !=null){
          return validator!(value);

        }
      },


                              // validator: (value) {
                              //   if(value != null && value.isNotEmpty && value.length <5){
                              //     return 'yorr username shuold be more then 5 character';
                              //   }else if(value != null && value.isEmpty){
                              //     return "please type your username";
                              //   }
                                //}
                           
                              
                              controller: controller,
                              onChanged: (value) {
                                print('valuew:$value');
                              },
                              decoration: InputDecoration(
                                hintText: 'user name',
                                hintStyle:ThemeTextStyld.LoginTextFieldsStyle,
                                border: OutlineInputBorder(),
                       
                       
                              ),
                       
                             );
  }
}