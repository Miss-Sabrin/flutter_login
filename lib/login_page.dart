import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});
   final _formkey=GlobalKey<FormState>();

  void loginUser(){
    if(_formkey.currentState !=null && _formkey.currentState!.validate()){
      print(userNameController.text);
      print(passwordController.text);

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
                       Image.network('https://cdn-icons-png.flaticon.com/128/10/10522.png',height: 200,),

                       Form(
                        key: _formkey,
                         child: Column(
                           children: [
                             TextFormField(
                              validator: (value) {
                                if(value != null && value.isNotEmpty && value.length <5){
                                  return 'yorr username shuold be more then 5 character';
                                }else if(value != null && value.isEmpty){
                                  return "please type your username";
                                }
                                return null;
                              },
                              controller: userNameController,
                              onChanged: (value) {
                                print('valuew:$value');
                              },
                              decoration: InputDecoration(
                                hintText: 'user name',
                                hintStyle: TextStyle(color: Colors.blueGrey),
                                border: OutlineInputBorder(),
                       
                       
                              ),
                       
                             ),
                             SizedBox(height: 20,),
                                         TextFormField(
                                          controller: passwordController,
                                          obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'enter password',
                                hintStyle: TextStyle(color: Colors.blueGrey),
                                border: OutlineInputBorder(),
                       
                       
                              ),
                       
                             ),
                           ],
                         ),
                       ),
                                                    SizedBox(height: 20,),

        
                       ElevatedButton(onPressed: (){
                        loginUser();
                       }, child: Text('click me')),


                        GestureDetector(
                        onDoubleTap: () {
                          
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