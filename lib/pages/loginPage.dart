import 'package:driver_app/componets/mytextfield.dart';
import 'package:flutter/material.dart';

import '../componets/mybuttons.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordControler = TextEditingController();

  //sign user in method
  void signUserIn(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SafeArea(
            child: Column(children: [
          const SizedBox(height: 50),

          //logo
          const Icon(
            Icons.lock,
            size: 100,
          ),

          const SizedBox(height: 50),

          //welcome back
          Text(
            'welcome back you\'ve been missed!',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),
          //user text filed

          mytextfield(
            controller: usernameController,
            hintText: 'Enter Username',
            obscureText: false,
          ),

          // passsord textfield
          const SizedBox(height: 10),

          mytextfield(
            controller: passwordControler,
            hintText: 'Enter Password',
            obscureText: true,
          ),
          // forget password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password? ',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // sign in button
             mybuttons(
              onTap:signUserIn ,
            ),
          // sign in wit google
          const SizedBox(height: 50),

          //or continue with
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Row(
             children: [
               Expanded(child: Divider(
                 thickness: 0.9,
                 color: Colors.grey[400],
               ),
               ),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Text(
                   'Or Continue with',
                    style: TextStyle(color: Colors.grey[700]),
                 ),

               ),

               Expanded(child: Divider(
                 thickness: 0.9,
                 color: Colors.grey[400],
               ),
               ),
             ],
           ),
         ),

        //google sin in
              Row(
                children: [
                  Image.asset('lib/images/google.png',
                  height: 72,),
                ],
              )

          //not a member? sin in
        ])),
      ),
    );
  }
}
