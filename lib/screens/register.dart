import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/imgtop_widget.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
         imgtop(),
                SizedBox(
                  height: 40,
                ),
            text_input(text: "Full Name",),
            SizedBox(
                  height: 20,
                ),
            text_input(text: "Email Address",),
            SizedBox(
                  height: 20,
                ),
            text_input(text: "Mobile Number",),
            SizedBox(
                  height: 20,
                ),
            text_input(text: "Password",),
           SizedBox(
                  height: 20,
                ),
          button_login(text: "Register Now"),
           SizedBox(
                  height: 20,
                ),
          bottom_text(text: "Already have an account?",)
      ],
      ),
    );
  }
}