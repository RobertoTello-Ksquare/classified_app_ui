import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:classified_app_ui/screens/EditAdScreen.dart';
import 'package:classified_app_ui/screens/EditProfileScreen.dart';
import 'package:classified_app_ui/services/ad_service.dart';
import 'package:flutter/material.dart';
class Myads extends StatelessWidget {
  Myads({super.key});
   final ads=Ads();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("My Ads"),
          ],
        ),
      ),
      body: FutureBuilder(
        future: AdService().userAds(context),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> myAds = snapshot.data!["data"];
              return ListView.builder(
                  itemCount: myAds.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0),
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                          context,
                          EditAd,
                          arguments: {
                            "title": myAds[index]["title"],
                            "price": myAds[index]["price"],
                            "images": myAds[index]["images"],
                            "mobile": myAds[index]["mobile"],
                            "description": myAds[index]["description"],
                            "_id": myAds[index]["_id"],
                          },
                        ),child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount:ads.ads.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration:BoxDecoration(border:Border.all(color: Colors.grey)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 120,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/editad",
                                    arguments:{"ads":ads.ads[index]});
                                  },
                                  child: Container(
                                    child: Image.network(
                                      ads.ads[index]["images"][0],height:80,fit: (BoxFit.cover),),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 110,
                                margin: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              ads.ads[index]["title"],
                                              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Row(
                                            children: [
                                              Icon(Icons.timer_outlined),
                                              Text(
                                                ads.ads[index]["createdAt"],
                                                style: const TextStyle(fontSize: 16,),
                                              ),
                                            ],
                                          ),
                                         SizedBox(height: 8,),
        
                                          Text(
                                          ads.ads[index]["price"].toString(),style: const TextStyle(color: Color(0xfff25723), fontSize: 16,fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        )));});
        } if (snapshot.hasError) {
              return const Center(
                child: Text("Something wrong"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFFf25723),),);}}));}}
        

        
        
        
      
    
  

 /*ads[index]["title"],
                                ads[index]["createdAt"],
                                ads[index]["price"],*/