import 'package:flutter/material.dart';

class text_input extends StatelessWidget {
  final String text;
  const text_input({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: TextField(
      
      decoration: 
      InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide()),
      labelText: text)
          ),
    );
  }
}