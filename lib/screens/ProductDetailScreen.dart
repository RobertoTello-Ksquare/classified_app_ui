import 'package:classified_app_ui/custom_widgets/button_login.dart';
import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:classified_app_ui/screens/ImageViewerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';


class ProductDetail extends StatefulWidget {
  dynamic ads;
  ProductDetail({super.key, required this.ads });
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
final String link_phone = "tel: +91987654321";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
       height: double.infinity,
        padding: const EdgeInsets.all(10),
      
   child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(widget.ads["ads"]["title"], style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Text(widget.ads["ads"]["price"].toString(),style: TextStyle(color: Color.fromARGB(255, 243, 179, 41), fontSize: 16,fontWeight: FontWeight.bold),),
            GestureDetector(onTap: () {
              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => ImageViewer(),
                                settings: RouteSettings(
                                arguments: {"ImageViewer":widget.ads["ads"]["images"]},
                                
                                ),));}, 
            child: Container(
              height: 300,
              width: double.infinity,
              child: Image.network(widget.ads["ads"]["images"][0], fit: BoxFit.cover,)),),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(Icons.person_outlined),
                Text(widget.ads["ads"]["createdBy"]),
                SizedBox(width: 20,),
                Icon(Icons.timer_outlined),
                Text(widget.ads["ads"]["createdAt"]),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 70,
              child: Text(widget.ads["ads"]["description"],
              style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                      width: 450,
                child: ElevatedButton( onPressed: () { _launchUrl(link_phone); },
                child: Text("Contact Seller"), style: ElevatedButton.styleFrom(backgroundColor:Color(0xfff25723),),),
              ),)]))));}}        


Future _launchUrl(url) async {
  url = Uri.parse(url);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw "Couldn't launch $url";
  }
}