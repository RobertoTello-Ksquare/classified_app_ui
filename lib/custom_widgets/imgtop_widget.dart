import 'package:flutter/material.dart';

class imgtop extends StatelessWidget {
//  final String image;
  const imgtop({
  //  required this image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Image.asset("assets/images/wall.jpg")
      );
  }
}