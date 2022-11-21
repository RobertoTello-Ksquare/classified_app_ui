
import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:classified_app_ui/models/ads.dart';
import 'package:classified_app_ui/services/ad_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custom_widgets/imgtop_widget.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController _EmailCtrl = TextEditingController();
TextEditingController _PasswordCtrl = TextEditingController();
fetchAllAds() async {
    List<AdModel> ads = [];
     ads = await AdService().fetchAllAds();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    print(fetchAllAds());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  //imgtop(image:"assets/images/wall.jpg"),
                  SizedBox(child:Image.asset("assets/images/wall.jpg")),
                    SizedBox(
                      height: 28,
                    ),
                    Form(key: formKey,
                      autovalidateMode:  AutovalidateMode.onUserInteraction,
                      child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(validator: (value) {
                          if (value==null||value.isEmpty) {
                            return "required field";
                          }
                          return null;
                        }, controller: _EmailCtrl, keyboardType: TextInputType.text,
                        decoration: InputDecoration(labelText: 'Email Adress',hintText: 'Email',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12)))),
                        
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                            if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          }, controller: _PasswordCtrl, keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: 'Password',hintText: 'Password',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12)))),
                        )
                    ],)),
                
               SizedBox(
                      height: 20,
                    ),
              Padding(
                padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                child: SizedBox(
                   height: 50,
                  width: 450,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723) ),
                         child: Text('Login'),
                         onPressed: (() {
                          formKey.currentState?.save();
                          formKey.currentState?.validate();
                
                          //Navigator.pushReplacementNamed(context, newRoute);
                         }),),
                ),
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
        ),
    );
  }
}
