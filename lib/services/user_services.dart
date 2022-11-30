import 'dart:convert';

import 'package:classified_app_ui/models/users.dart';
import 'package:classified_app_ui/util/alertmanager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:classified_app_ui/util/constants.dart';

class UserService {
   Future fetchUserData(context) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url = Uri.parse(Constants().serverUrl+Constants().userEndpoint);
    Map<String, dynamic> modelObj = {};
    String? token = await storage.read(key: "token");
    try {
      http.Response response =
          await http.post(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      return modelObj;
    }
    }
   Future updateProfile(context, UserModel model) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url =
        Uri.parse(Constants().serverUrl+Constants().updateUserEndpoint);
    Map<String, dynamic> modelObj = model.toJson();
    String? token = await storage.read(key: "token");
    try {
      http.Response response =
          await http.patch(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, "Profile successfully updated");
        Navigator.pushReplacementNamed(context, '/home');
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      return modelObj;
    }
    }
  }
