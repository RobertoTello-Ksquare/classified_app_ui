import 'package:classified_app_ui/custom_widgets/list_p.dart';
import 'package:classified_app_ui/screens/CreateAdScreen.dart';
import 'package:classified_app_ui/screens/EditAdScreen.dart';
import 'package:classified_app_ui/screens/EditProfileScreen.dart';
import 'package:classified_app_ui/screens/HomeScreen.dart';
import 'package:classified_app_ui/screens/ImageViewerScreen.dart';
import 'package:classified_app_ui/screens/LoginScreen.dart';
import 'package:classified_app_ui/screens/MyAdsScreen.dart';
import 'package:classified_app_ui/screens/ProductDetailScreen.dart';
import 'package:classified_app_ui/screens/RegisterScreen.dart';
import 'package:classified_app_ui/screens/SettingsScreen.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  var generateRoute = ((settings) {
    var routeName = settings.name;
    var args = settings.arguments;
    switch (routeName) {
      case '/':
        return MaterialPageRoute(builder: (context) =>login());

      case '/register':
        return MaterialPageRoute(
          builder: (context) =>Register(),);

          case '/createad':
        return MaterialPageRoute(
          builder: (context) =>CreateAd(),);

            case '/editad':
        return MaterialPageRoute(
          builder: (context) =>EditAd(
            ads: args,
          ),);

            case '/editprofile':
        return MaterialPageRoute(
          builder: (context) =>Edit(),);

            case '/home':
        return MaterialPageRoute(
          builder: (context) =>AddList(),);

            case '/myads':
        return MaterialPageRoute(
          builder: (context) =>Myads(),);

           case '/productdetail':
        return MaterialPageRoute(
          builder: (context) =>ProductDetail(
            ads:args
          ),);

          case '/setting':
        return MaterialPageRoute(
          builder: (context) =>Settings(),);

          case '/imageviewer':
        return MaterialPageRoute(
          builder: (context) =>ImageViewer(
                  ads: args,
          ),);

        default:
         return  MaterialPageRoute(builder: (context) {
     return Scaffold(
      appBar: AppBar(
       title: Text('ERROR'),
        centerTitle: true,
        ),  // AppBar
      body: Center(
        child: Text('Page not found!'),
       ), // Center
     ); // Scaffold
  },);
    }
  });}