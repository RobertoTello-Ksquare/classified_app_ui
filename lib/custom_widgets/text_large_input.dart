import 'package:flutter/material.dart';

class text_large_input extends StatelessWidget {
  final String text;
  const text_large_input({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(maxLines: 3,
      
      decoration: 
      InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide()),
      hintText: text)
          ),
    );
  }
}