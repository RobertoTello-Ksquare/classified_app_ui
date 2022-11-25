
import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/models/ads.dart';
import 'package:classified_app_ui/models/users.dart';
import 'package:classified_app_ui/services/ad_service.dart';
import 'package:classified_app_ui/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController _EmailCtrl = TextEditingController();
TextEditingController _PasswordCtrl = TextEditingController();
RoundedLoadingButtonController _buttonController = RoundedLoadingButtonController();
UserModel user = UserModel();

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
                        },
                        onSaved: (newValue) {
                            setState(() {
                              user.email = newValue;
                            });
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
                          }, 
                          onSaved: (newValue) {
                            setState(() {
                              user.password = newValue;
                            });
                          },controller: _PasswordCtrl, keyboardType: TextInputType.text,
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
                  child: RoundedLoadingButton(
                   child: Text('Login', style: TextStyle(color: Colors.white)),
                   controller: _buttonController,color: Color(0xfff25723),borderRadius: 5,width: 450,
                   resetAfterDuration:true,resetDuration:Duration(seconds: 2),
                   onPressed: 
                          (() async {
                          formKey.currentState?.save();
                          await AuthService().login(context, user);
                         }),)
                ),
              ),
               const SizedBox(
                      height: 12,
                    ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: bottom_text(text: "Don't have any account?",newRoute: "/register",),
              ),
              ],),
            ),
        ),
        );
  }
}
