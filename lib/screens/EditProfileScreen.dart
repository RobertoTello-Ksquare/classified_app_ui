import 'package:classified_app_ui/custom_widgets/bottom_text.dart';
import 'package:classified_app_ui/models/users.dart';
import 'package:classified_app_ui/screens/LoginScreen.dart';
import 'package:classified_app_ui/services/user_services.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
   Edit({super.key});

  @override
  
UserModel user = UserModel();
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  /*  String _imagePath = '';
void captureImageFromGallery() async {
    var file = await imageModel().pickImage(source: imgURL.gallery);
    if (file != null) {
      print(file.path);
      setState(() {
        _imagePath = file.path;
      });
    }
  }
   void captureImageFromCamera() async {
    var file = await imageModel().pickImage(source: imgURL.camera);

    if (file != null) {
      print(file.path);
      setState(() {
        _imagePath = file.path;
      });
    }
  }*/
  @override
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController _NameCtrl = TextEditingController();
TextEditingController _EmailCtrl = TextEditingController();
TextEditingController _MobileCtrl = TextEditingController();
TextEditingController _PasswordCtrl = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
          elevation: 0,
          centerTitle: true,
          title: Text("Edit Profile"),
          ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                      height: 8,
                    ),
          CircleAvatar(backgroundImage: NetworkImage("https://i1.sndcdn.com/artworks-000282479366-s1ytog-t500x500.jpg",),radius: 80,), 
            SizedBox(
                      height: 8,
                    ),
                      Form(key: formKey,
                          autovalidateMode:AutovalidateMode.onUserInteraction,
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
                            controller:_NameCtrl,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Name',hintText: 'Name',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),
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
                                user.email = newValue;
                              });
                            },
                            controller:_EmailCtrl,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Email',hintText: 'Email',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),
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
                                user.mobile = newValue;
                              });
                            },
                            controller:_MobileCtrl,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Mobile',hintText: 'Mobile',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),
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
                            },
                            controller:_PasswordCtrl,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Password',hintText: 'Password',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),
                            ),
                             Padding(
                           padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                           child: SizedBox(
                            height: 50,
                            width: 450,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723) ),
                                    child: Text('Update Profile'),
                                    onPressed: () async {
                                formKey.currentState?.save();
                                await UserService().updateProfile(context, user);
                              },
                            ), 
                          ),
                        ),
              bottom_text(text: "Logout",newRoute: "/",)
            ],),),],),
        ),),);
        
      
    
  }
}