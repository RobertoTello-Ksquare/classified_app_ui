import 'dart:convert';

import 'package:classified_app_ui/models/ads.dart';
import 'package:classified_app_ui/util/alertmanager.dart';
import 'package:classified_app_ui/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AdService{
  Future<List<AdModel>> fetchAllAds() async {
    List<AdModel> ad = [];
    var url = Uri.parse("${Constants().serverUrl}/ads");
    try {
      var resp = await http.get(url);

      var respJson = jsonDecode(resp.body);
      var postData = respJson['data'];
      ad =
          postData.map<AdModel>((post) => AdModel.fromJson(post)).toList();

      return ad;
    } catch (e) {
      print(e.toString());
      return ad;
    }
  }


  Future<Map<String, dynamic>> createAd(context, AdModel model) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url = Uri.parse(Constants().serverUrl+ Constants().fetchAdsEndpoint);
    Map<String, dynamic> modelObj = model.toJson();
    String? token = await storage.read(key: "token");
    try {
      Response response =
          await http.post(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, "Ad successfully created ");
        Navigator.pop(context);
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      return modelObj;
    }
  }

   Future<Map<String, dynamic>> userAds(context) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url = Uri.parse(Constants().serverUrl+ Constants().adsLoggedUserEndpoint);
    Map<String, dynamic> modelObj = {};
    String? token = await storage.read(key: "token");
    try {
      Response response =
          await http.post(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, "User posted ads");
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      return modelObj;
    }
  }

  Future<Map<String, dynamic>> editAd(context, AdModel model, String id) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url =
        Uri.parse(Constants().serverUrl+ Constants().adsUpdateEndpoint);
    Map<String, dynamic> modelObj = model.toJson();
    String? token = await storage.read(key: "token");
    try {
      Response response =
          await http.patch(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, "Ad successfully updated");
        Navigator.pushNamed(context, "/myads");
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]["message"]);
      }
      return modelObj;
    } catch (e) {
      return modelObj;
    }
  }
}
