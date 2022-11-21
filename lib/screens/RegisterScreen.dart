import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/imgtop_widget.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatelessWidget {
  Register({super.key});
  @override
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController _FullNameCtrl = TextEditingController();
TextEditingController _EmailCtrl = TextEditingController();
TextEditingController _MobileCtrl = TextEditingController();
TextEditingController _PasswordCtrl = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
      
      
           imgtop(),
                  SizedBox(
                    height: 16,
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
                          },controller: _FullNameCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Full Name',hintText: 'Full Name',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),
                          ),
                          Padding(padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                           if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },controller: _EmailCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Email Adress',hintText: 'Email',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),),
                          Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                            if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },controller: _MobileCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Mobile Number',hintText: 'Mobile Number',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),
                          ),
                          Padding(padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                           if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },controller: _PasswordCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Password',hintText: 'Password',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),),
                      ],)),
                          Padding(
                           padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                           child: SizedBox(
                            height: 50,
                            width: 450,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723) ),
                                    child: Text('Register Now'),
                                    onPressed: (() {
                                     formKey.currentState?.save();
                                     formKey.currentState?.validate();
                                    }),), 
                           ),),
          /*  button_login(text: "Register Now",newRoute: "/home",),
             SizedBox(
                    height: 12,
                  ),*/
            bottom_text(text: "Already have an account?",newRoute: "/",)
        ],
        ),
      ),
    );
  }
}