
import 'package:flutter/material.dart';
import 'package:one/chat_page.dart';
import 'package:one/utalites/textfield_style.dart';
import 'package:one/widget/login_textfield.dart';
// import 'package:url_launcher/url_launcher.dart';




class Login extends StatelessWidget {
   Login({super.key});
   final _formkey=GlobalKey<FormState>();

  void loginUser(context){
    if(_formkey.currentState !=null && _formkey.currentState!.validate()){
      print(userNameController.text);
      print(passwordController.text);



      //todo navigator to chatpage on succesful login
      //todo with navigate

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context)=>ChatPage(username:userNameController.text ,),)
      // );

      ///todo add  named router
      Navigator.pushReplacementNamed(
        context,'/chat',
        arguments: '${userNameController.text}'
      );

       print('login success');
    }else{
      print('not succesed');
    }
   
  }
  final userNameController=TextEditingController();
    final passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Let\'s sing your in !!!!!!',
                style: TextStyle(fontSize: 30,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3            ),
                ),
                
              
              ),
              
              Text('welcome back! \n your\'v been missed',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
              
              color: Colors.blue,
              
              fontWeight: FontWeight.bold),
              ),
                       Image.network('https://cdn-icons-png.flaticon.com/128/10/10522.png',height: 150,),

                       Form(
                        key: _formkey,
                         child: Column(
                           children: [
                             LoginTextField(
                              hintText: 'enter your username',
                              validator: (value) {
                                if(value != null && value.isNotEmpty && value.length <5){
                                  return 'yorr username shuold be more then 5 character';
                                }else if(value != null && value.isEmpty){
                                  return "please type your username";
                                }
                                return null;
                              },
                              controller: userNameController,
                              // onChanged: (value) {
                              //   print('valuew:$value');
                              // },
                          
                       
                             ),
                             SizedBox(height: 20,),
                                         LoginTextField(
                                          hasAsterisks: true,
                                          hintText: "enter your password",
                                          controller: passwordController,

                       
                             ),
                           ],
                         ),
                       ),
                                                    SizedBox(height: 20,),

        
                       ElevatedButton(onPressed: (){
                        loginUser(context);
                       }, 
                       child: Text('click me')),


                        GestureDetector(
                        onDoubleTap: ()async {

                          //todo:  navigate to browser🤳
                          //todo way shaqen waysy lunch cos sdk 3 eh kana wa 6 error wakas
                          // if (!await launch("https://www.linkedin.com/learning/flutter-essential-training-build-for-multiple-platforms/adding-plugins-to-your-app-from-pub-dev?autoSkip=true&resume=false&u=709399")) {
                          //  throw Exception('Could not launch this ');
                          // }
                          
                          print('ondoubleTap');
                        },
                        onLongPress: () {
                          print('onLongpress');
                        },
                        onTap: () {
                          print('one cliked');
                        },
                        child:  Column(
                          children: [
                             Text('find me'),
                      
                      Text('saabsiman080@gmail.com'),
                      
                          ],
                        )
                      
                      
                      
                      )
              
              
            ],
          ),
        ),
      ),
      
        
    );
          // Image.network('https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_1280.jpg')
        
        
      
      
    
  }
}