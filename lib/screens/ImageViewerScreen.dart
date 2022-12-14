// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:flutter/material.dart';
class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key});

  static const String routeName = "/imageviewer";

  @override
  Widget build(BuildContext context) {
var arg = ModalRoute.of(context)!.settings.arguments as Map;
print(arg["ImageViewer"]);
    final List<String> ads = [...arg["ImageViewer"]];
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
                    child: Image.network(item, fit: BoxFit.cover, width:double.infinity,)))
                .toList(),
          )),
    );
  }
}