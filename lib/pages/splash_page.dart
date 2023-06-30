import 'dart:async';

import 'package:driver_app/pages/main_screen.dart';
import 'package:flutter/material.dart';
class MySlashScreen extends StatefulWidget
{


  @override
  State<MySlashScreen> createState() => _MySlashScreenState();
}

class _MySlashScreenState extends State<MySlashScreen>
{
  startTimer(){
    Timer(const Duration(seconds: 3), () async{
      //send user to home screen
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const MyMainScreen()));

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
