import 'package:flutter/material.dart';

class button_login extends StatelessWidget {
  final String text;
  const button_login({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 450,
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723) ),
         child: Text(text),
         onPressed: (() {
          
         }),),
    );
  }
}