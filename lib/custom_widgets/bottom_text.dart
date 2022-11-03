import 'package:flutter/material.dart';

class bottom_text extends StatelessWidget {
  final String text;
  final String newRoute;
  const bottom_text({
    required this.text,
    required this.newRoute,
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
child: TextButton(onPressed: (() {
  Navigator.pushReplacementNamed(context, newRoute);
}), child: Text(text,style: TextStyle(color: Color(0xfff25723),fontWeight: FontWeight.bold),
    ))//Text(text,style: TextStyle(color: Color(0xfff25723),fontWeight: FontWeight.bold),
    );
  }
}

