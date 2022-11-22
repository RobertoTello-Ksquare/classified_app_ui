import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/imgtop_widget.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:classified_app_ui/models/users.dart';
import 'package:classified_app_ui/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

TextEditingController _NameCtrl = TextEditingController();

TextEditingController _EmailCtrl = TextEditingController();

TextEditingController _MobileCtrl = TextEditingController();

TextEditingController _PasswordCtrl = TextEditingController();

UserModel user = UserModel();

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
                          },
                          onSaved: (newValue) {
                            setState(() {
                              user.name = newValue;
                            });
                          },
                          controller: _NameCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Name',hintText: 'Name',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),
                          ),
                          Padding(padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                           if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            setState(() {
                              user.email = newValue;
                            });
                          },
                          controller: _EmailCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Email Adress',hintText: 'Email',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),),
                          Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                            if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },
                           onSaved: (newValue) {
                            setState(() {
                              user.mobile = newValue;
                            });
                          },
                          controller: _MobileCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Mobile Number',hintText: 'Mobile Number',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),
                          ),
                          Padding(padding: const EdgeInsets.all(12.0),
                          child: TextFormField(validator: (value) {
                           if (value==null||value.isEmpty) {
                              return "required field";
                            }
                            return null;
                          },
                           onSaved: (newValue) {
                            setState(() {
                              user.password = newValue;
                            });
                          },
                          controller: _PasswordCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Password',hintText: 'Password',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                          ),),
                      ],)),
                          Padding(
                           padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                           child: SizedBox(
                            height: 50,
                            width: 450,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723) ),
                                    child: Text('Register Now'),
                                    onPressed: () async {
                                formKey.currentState?.save();
                                await AuthService().register(context, user);
                              },
                             ), 
                           ),),
          /* button_login(text: "Register Now",newRoute: "/home",),
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