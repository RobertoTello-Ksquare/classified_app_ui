import 'package:carousel_slider/carousel_slider.dart';
import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:flutter/material.dart';
class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required ads});

  static const String routeName = 'View images';

  @override
  Widget build(BuildContext context) {

    final List<String> ads = [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_02.jpeg",
      ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
          ]),
          body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: CarouselSlider(
            options: CarouselOptions(viewportFraction: 1.0),
            items: ads
                .map((item) => Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 600)))
                .toList(),
          )),
    );
  }
}