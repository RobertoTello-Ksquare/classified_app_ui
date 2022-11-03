import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myads extends StatelessWidget {
  Myads({super.key});
  List ads = [
    {
      "id": "ad_01",
      "title": "iPhone for Sale",
      "price": 19999,
      "createdBy": "Abi",
      "createdAt": "5 days ago",
      "mobile": "+919876543210",
      "description": "iPhone for sale with Good Condition",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_02.jpeg",
      ]
    },
    {
      "id": "ad_04",
      "title": "Macbook Pro for Sale",
      "price": 49999,
      "createdBy": "guru",
      "createdAt": "1 days ago",
      "mobile": "+917876543210",
      "description":
          "Macbook pro for sale. 12GB RAM | 512GB SSD | Ratina Display",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_02.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_03.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_04.jpeg",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Ads Listing"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: ads.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration:BoxDecoration(border:Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Image.network(
                            ads[index]["images"][0],height:double.infinity,fit: (BoxFit.fitHeight),),
                          Container(
                            
                            width: 200,
                            height: 100,
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Center(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ads[index]["title"],
                                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                          Icon(Icons.timer_outlined),
                                          Text(
                                            ads[index]["createdAt"],
                                            style: const TextStyle(fontSize: 16,),
                                          ),
                                        ],
                                      ),
                                                                            SizedBox(height: 8,),

                                      Text(
                                      ads[index]["price"].toString(),style: const TextStyle(color: Color.fromARGB(255, 243, 179, 41), fontSize: 16,fontWeight: FontWeight.bold),
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
    );
  }
}
 /*ads[index]["title"],
                                ads[index]["createdAt"],
                                ads[index]["price"],*/