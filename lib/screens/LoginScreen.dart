
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                //imgtop(image:"assets/images/wall.jpg"),
                SizedBox(child:Image.asset("assets/images/wall.jpg")),
                  SizedBox(
                    height: 28,
                  ),
              Padding(
                padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                child: text_input(text: "Email Address",),
              ),
              
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: text_input(text: "Password",),
              ),
             SizedBox(
                    height: 20,
                  ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: button_login(text: "Login",newRoute:"/home" ,),
            ),
             SizedBox(
                    height: 12,
                  ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: bottom_text(text: "Don't have any account?",newRoute: "/register",),
            )
            ],
          ),
        ),
    );
  }
}
