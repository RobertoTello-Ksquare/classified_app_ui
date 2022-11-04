
import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class AddList extends StatelessWidget {
  final ads=Ads();
  AddList({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: 80,
        child: FloatingActionButton 
        ( backgroundColor:  Color(0xfff25723),
          child: Icon(Icons.add_a_photo_outlined, size: 32,),
          onPressed: () {
            Navigator.pushNamed(context, "/createad");
        },),
      ),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text("Ads Listing"),
              GestureDetector( onTap:(){
                Navigator.pushNamed(context, "/setting");
              } ,
              child: CircleAvatar(backgroundImage: NetworkImage("https://i1.sndcdn.com/artworks-000282479366-s1ytog-t500x500.jpg"))),
            ],
          ),
        ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7),
            itemCount: ads.ads.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  SizedBox(
      height: double.infinity,
      width: double.infinity,
                  child:GestureDetector(onTap: () {
                  Navigator.pushNamed(context, "/productdetail",
                  arguments: {"ads":ads.ads[index]});
                  },    child: Image.network(ads.ads[index]["images"][0],fit: BoxFit.cover,)),),
//Container(color: Color.fromARGB(255, 17, 122, 43)),),
                Align(
                  alignment:Alignment.bottomCenter ,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.blueGrey.withOpacity(0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(ads.ads[index]["title"], style: TextStyle(fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(ads.ads[index]["price"].toString(), style:TextStyle(color:Color(0xfff25723),fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                      ],),
                  ),
                )
                ],
               );
                },),
    ),);
  }
}