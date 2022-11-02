import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myads extends StatelessWidget {
  const Myads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(  
          elevation: 0,
          title: Text("My Ads"),
          ),
      body: Column(
        children: [
          Row(
              children: [
                Container(
                  width: 100,
                  height: 160,
                  child: Image.asset("assets/images/photo.jpg"))
              ],
          ),
          Row(

          ),
          Row(

          ),
        ],
      ),
    );
  }
}