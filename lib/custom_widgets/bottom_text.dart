import 'package:flutter/material.dart';

class bottom_text extends StatelessWidget {
  final String text;
  const bottom_text({
    required this.text,
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
child: Text(text,style: TextStyle(color: Color(0xfff25723),fontWeight: FontWeight.bold),
    ),);
  }
}

