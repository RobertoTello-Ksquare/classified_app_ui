import 'package:flutter/material.dart';

class imgtop extends StatelessWidget {
  const imgtop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Image.asset("images/wall.jpg")
      );
  }
}