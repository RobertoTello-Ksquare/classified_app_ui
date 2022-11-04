import 'package:classified_app_ui/custom_widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});
  final String link_a = "https://appmaking.com/about";
  final String link_c = "https://appmaking.com/contact";

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
                  CircleAvatar(backgroundImage: NetworkImage("https://i1.sndcdn.com/artworks-000282479366-s1ytog-t500x500.jpg"),
),),
                ),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Roberto",),
                      SizedBox(height: 4,),
                      Text("9991638349")
                    ],),
                ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/editprofile");
                    },
                    child: Text("Edit", style:TextStyle(color: Color(0xfff25723),fontWeight: FontWeight.bold)))],
                  
                ),
                SizedBox(height: 20,),
              Row(
                children: [
                Container(
                  margin: EdgeInsets.only(left:10,right:50.0),
                  child:
                 Icon(Icons.post_add_outlined,)),
               Column(
                  children: [
                    GestureDetector(onTap: () {
                    Navigator.pushNamed(context, "/myads");
                    },    child: Text("My Ads"))  ,
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
                        child:  GestureDetector(onTap: () =>_launchUrl(link_a),
                          child: Text("About us"))),
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
                      GestureDetector(onTap: () => _launchUrl(link_c),  child: Text("Contact Us")),
                    ],),
               
              ],
              ),
              ]
              ,),
      )
     );
  }
}

Future _launchUrl(url) async {
  url = Uri.parse(url);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw "Couldn't launch $url";
  }
}