import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class AddList extends StatelessWidget {
  
  AddList({super.key});
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
      "id": "ad_02",
      "title": "Audi A6 for Sale",
      "price": 2000000,
      "createdBy": "Abi",
      "createdAt": "3 days ago",
      "mobile": "+919876543211",
      "description": "Audi A6 for Sale with Good Condition",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_02.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_03.jpeg",
      ]
    },
    {
      "id": "ad_03",
      "title": "Tripical House for sale",
      "price": 5000000,
      "createdBy": "krish",
      "createdAt": "15 days ago",
      "mobile": "+919876983210",
      "description": "Tropical house for sale with fully furnished",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_02.png",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_03.jpeg",
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
    {
      "id": "ad_05",
      "title": "Stylish Sofa for sale",
      "price": 30999,
      "createdBy": "rakei",
      "createdAt": "7 days ago",
      "mobile": "+919876586210",
      "description": "Stylish sofa for sale with multiple colors",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_02.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_03.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_04.jpeg"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: 80,
        child: FloatingActionButton 
        ( backgroundColor:  Color(0xfff25723),
          child: Icon(Icons.add_a_photo_outlined, size: 32,),
          onPressed: (
            
          ) {
        },),
      ),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Ads Listing"),
              CircleAvatar(backgroundImage: NetworkImage("https://i1.sndcdn.com/artworks-000282479366-s1ytog-t500x500.jpg")),
            ],
          ),
        ),
      body:Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7),
            itemCount: ads.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  SizedBox(
      height: double.infinity,
      width: double.infinity,
                  child:Image.network(ads[index]["images"][0],),),
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
                          child: Text(ads[index]["title"], style: TextStyle(fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(ads[index]["price"].toString(), style:TextStyle(color:Color(0xfff25723),fontSize: 16,fontWeight: FontWeight.bold),),
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