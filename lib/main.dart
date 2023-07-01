import 'package:driver_app/componets/slash.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Satoshi',
      ),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );

  }
}

class Onboarding extends StatelessWidget{

  final List<Introduction> list= [

    Introduction(
      title:  '',
      subTitle: ' ',
      imageUrl: 'lib/images/logo.png',
    ),

    Introduction(
      title: 'Select Location',
      subTitle: 'Just select the location that you want to go to and leave the rest to us,',
      imageUrl: 'lib/images/mylocation.png',
    ),

    Introduction(
      title: 'Choose Your Ride',
      subTitle: 'Brow...',
      imageUrl: 'lib/images/choose.png',
    ),

    Introduction(
      title: 'Enjoy Your Ride',
      subTitle: 'Enjoy Your Ride with our comfortable cars and our experience driver .',
      imageUrl: 'lib/images/ride.png',
    ),
  ];


  @override
  Widget build(BuildContext context) {
   return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: Colors.grey,
      introductionList: list,
     onTapSkipButton: ()=> Navigator.push(context,
         MaterialPageRoute(
             builder: (context) =>LoginPage(),
         )),
        skipTextStyle: const TextStyle(
       color: Colors.blueGrey,
       fontSize: 18
     ),
    );
  }

}
