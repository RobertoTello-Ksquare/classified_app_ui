import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:classified_app_ui/custom_widgets/text_large_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAd extends StatelessWidget {
   EditAd({super.key, required this.ads});
dynamic ads;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
          elevation: 0,
          centerTitle: true,
          title: Text("Edit Ad"),
          ),
          body: Center(
            child: Column(
              
              children: [
                SizedBox(height: 10,),
                Container(
                  height:100 ,
                  width: 100,
                   decoration:
                   BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
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
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                  height:50 ,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),border:Border.all(color: Colors.grey)
                  ),
                        child: Image.network(ads["ads"]["images"][0])),
                    ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                  height:50 ,
                  width: 50,  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),border:Border.all(color: Colors.grey)
                  ),
                      child: Image.network(ads["ads"]["images"][1])),
                       ),
              
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        text_input(text: ads["ads"]["title"]),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        text_input(text: ads["ads"]["price"].toString()),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        text_input(text: ads["ads"]["mobile"]),
                      ],
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        text_large_input(text:ads["ads"]["description"]),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: button_login(text: "Submit Ad",newRoute: "/myads",),
                )
              ],
            ),
          ),
    );
  }
}