import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Used Macbook Pro for sale", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          Text("45000.0",style: TextStyle(color: Color.fromARGB(255, 243, 179, 41), fontSize: 16,fontWeight: FontWeight.bold),),
          Image.network("https://voluble-tulumba-4022f0.netlify.app/images/ad_04_04.jpeg"),
          Row(
            children: [
              Icon(Icons.person_outlined),
              Text("All"),
              SizedBox(width: 20,),
              Icon(Icons.timer_outlined),
              Text("14 days ago"),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            child: Text("Used Mac 2012 for sale with good quality.500 GB SSD. 8GB RAM.Space Grey. Mid 2012 Modal. Includes Charger.",
            style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: button_login(text: "Contact Seller",newRoute: "",),
          )
        ]),
      ),
    );
  }
}