import 'package:driver_app/componets/square_shape.dart ';
import 'package:flutter/material.dart';

class square_shape extends StatelessWidget {

  final String imageImage;
  const square_shape({super.key, required this.imageImage});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.white
      ),
      borderRadius: BorderRadius.circular(16
      ),
      color: Colors.grey[200],
      ),
      child: Image.asset(imageImage,
      height: 40,
      ),
    );
  }
}