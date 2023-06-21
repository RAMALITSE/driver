import 'package:flutter/material.dart';

class mybuttons extends StatelessWidget {

  const mybuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
        ),
      child:const Center(
        child: Text(
            "Sign In As Driver",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        ),
      )
    );
  }
}