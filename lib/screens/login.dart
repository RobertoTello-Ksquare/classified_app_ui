import 'dart:ui';

import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custom_widgets/imgtop_widget.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
TextEditingController _EmailCtrl = TextEditingController();
TextEditingController _PasswordCtrl = TextEditingController();


class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              imgtop(),
                SizedBox(
                  height: 40,
                ),
            text_input(text: "Email Address",),
            SizedBox(
                  height: 20,
                ),
            text_input(text: "Password",),
           SizedBox(
                  height: 20,
                ),
          button_login(text: "Login"),
           SizedBox(
                  height: 20,
                ),
          bottom_text(text: "Don't have any account?",)
          ],
        ),
      );
  }
}
