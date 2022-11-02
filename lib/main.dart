import 'package:classified_app_ui/screens/addlist.dart';
import 'package:classified_app_ui/screens/edit.dart';
import 'package:classified_app_ui/screens/login.dart';
import 'package:classified_app_ui/screens/myads.dart';
import 'package:classified_app_ui/screens/register.dart';
import 'package:classified_app_ui/screens/settings.dart';
import 'package:classified_app_ui/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: CustomTheme().theme,
debugShowCheckedModeBanner: false,
      home:  Myads(),
    );
  }
}
