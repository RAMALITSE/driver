import 'package:driver_app/componets/mytextfield.dart';
import 'package:flutter/material.dart';

import '../componets/mybuttons.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordControler = TextEditingController();

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
            hintText: 'Username',
            obscureText: false,
          ),

          // passsord textfield
          const SizedBox(height: 10),

          mytextfield(
            controller: passwordControler,
            hintText: 'Password',
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
            const mybuttons(),
          // sign in wit google

          //not a member? sin in
        ])),
      ),
    );
  }
}
