
import 'dart:ffi';

import 'package:classified_app_ui/models/ads.dart';
import 'package:classified_app_ui/services/ad_service.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CreateAd extends StatefulWidget {
   CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  @override
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

TextEditingController _titleCtrl = TextEditingController();
TextEditingController _priceCtrl = TextEditingController();
TextEditingController _contactNumCtrl = TextEditingController();
TextEditingController _descriptionCtrl = TextEditingController();
RoundedLoadingButtonController _buttonController = RoundedLoadingButtonController();
AdModel ads = AdModel();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
          elevation: 0,
          centerTitle: true,
          title: const Text("Create Ad"),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Form(key: formKey, autovalidateMode:AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                     Container(
                      height:100 ,
                      width: 100,
                       decoration:
                       BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                 border:Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          IconButton(icon:Icon(Icons.add_a_photo_outlined,),
                          onPressed:(() {}),style: IconButton.styleFrom(
                          ),iconSize: 40,),
                          Text("Tap to upload")
                        ],
                      ),
                    ),
                    Padding(padding:  const EdgeInsets.all(12.0),
                            child: TextFormField(validator: (value) {
                              if (value==null||value.isEmpty) {
                                return "required field";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                ads.title = newValue;
                              });
                            },     
                            controller: _titleCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Title',hintText: 'Title',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),
                            ),
                             Padding(padding:  const EdgeInsets.all(12.0),
                            child: TextFormField(validator: (value) {
                              if (value==null||value.isEmpty) {
                                return "required field";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                ads.price = double.tryParse(newValue!);
                              });
                            },     
                            controller:_priceCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Price',hintText: 'Price',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),),
                             Padding(padding:  const EdgeInsets.all(12.0),
                            child: 
                            TextFormField(validator: (value) {
                              if (value==null||value.isEmpty) {
                                return "required field";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                ads.mobile = newValue;
                              });
                            },     
                            controller: _contactNumCtrl, keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Contact Number',hintText: 'Contact Number',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12))),
                            ),),
                             Padding(padding:  const EdgeInsets.all(12.0),
                            child: 
                             TextFormField(validator: (value) {
                              if (value==null||value.isEmpty) {
                                return "required field";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                ads.description = newValue;
                              });
                            },     
                            controller: _descriptionCtrl, keyboardType: TextInputType.multiline,minLines: 3,maxLines: 5,decoration: InputDecoration(labelText: 'Description',hintText: 'Description',enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.black12),),),
                            ), ),
                     
                            Padding(
                             padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                             child: SizedBox(
                                height: 50,
                               width: 450,
                               child: RoundedLoadingButton(
                                child: Text('Submit Ad', style: TextStyle(color: Colors.white)),
                                controller: _buttonController,color: Color(0xfff25723),borderRadius: 5,width: 450,
                                resetAfterDuration:true,resetDuration:Duration(seconds: 2),
                                onPressed: 
                                       (() async {
                                       formKey.currentState?.save();
                                       await AdService().createAd(context, ads);
                                      }),)
                             ),),
                             ],),
                             ),
            ),),);
  }
}