import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:classified_app_ui/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
          elevation: 0,
          centerTitle: true,
          title: Text("Edit Profile"),
          ),
      body: Center(
        child: Column(
          children: [
             SizedBox(
                    height: 8,
                  ),
        CircleAvatar(backgroundImage: AssetImage("images/lion.png",),radius: 80,), 
          SizedBox(
                    height: 8,
                  ),
          text_input(text: "RobertoTello",),
              SizedBox(
                    height: 8,
                  ),
              text_input(text: "roberto@itksquare.com",),
              SizedBox(
                    height: 8,
                  ),
              text_input(text: "+52 9991638349",),
             SizedBox(
                    height: 8,
                  ),
            button_login(text: "Update Profie",newRoute: "",),
             SizedBox(
                    height: 8,
                  ),
            bottom_text(text: "Logout",newRoute: "",)
          ],
        ),
      ),
    );
  }
}