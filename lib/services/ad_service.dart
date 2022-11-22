import 'dart:convert';

import 'package:classified_app_ui/models/ads.dart';
import 'package:classified_app_ui/util/constants.dart';
import 'package:http/http.dart' as http;

class AdService{
  Future<List<AdModel>> fetchAllAds() async {
    List<AdModel> ads = [];
    var url = Uri.parse("${Constants().serverUrl}/ads");
    try {
      var resp = await http.get(url);

      var respJson = jsonDecode(resp.body);
      var postData = respJson['data'];
      ads =
          postData.map<AdModel>((post) => AdModel.fromJson(post)).toList();

      return ads;
    } catch (e) {
      print(e.toString());
      return ads;
    }
  }
}
