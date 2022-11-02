
import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(  
          elevation: 0,
          centerTitle: true,
          title: Text("Settings"),
          ),
          
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( 
          
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
              Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: const
                  CircleAvatar(backgroundImage: AssetImage("images/lion.png"),
),),
                ),
                Expanded(
                  child: Column(   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Roberto",),
                      SizedBox(height: 4,),
                      Text("9991638349")
                    ],),
                ),
                  Text("Edit", style:TextStyle(color: Color(0xfff25723),fontWeight: FontWeight.bold))],
                  
                ),
                SizedBox(height: 20,),
              Row(
                children: [
                Container(
                  margin: EdgeInsets.only(left:10,right:50.0),
                  child:
                 Icon(Icons.article_outlined,)),
               Column(
                  children: [
                    Text("My Ads"),
                  ],),
              ],
              ),
                SizedBox(height: 32,),

              Row(
                children: [  
               Container(
                margin: EdgeInsets.only(left:10,right:50.0),

                 child:Icon(Icons.person_outline),),

                  Column(
                    children: [
                      Container(

                        child: Text("About us")),
                    ],
               ),
              ],
              ),
                SizedBox(height: 32,),

              Row(
                children: [
               Container(  
                margin: EdgeInsets.only(left:10,right:50.0),
                child: 
                Icon(Icons.contacts_outlined),),

                 Column(
                    children: [
                      Text("Contact Us"),
                    ],),
               
              ],
              ),
              ]
              ,),
      )
     );
  }
}