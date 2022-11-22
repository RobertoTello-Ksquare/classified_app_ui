import "dart:convert";
import 'package:classified_app_ui/models/users.dart';
import 'package:classified_app_ui/util/alertmanager.dart';
import 'package:classified_app_ui/util/constants.dart';
import "package:flutter/material.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:http/http.dart" as http;
import "package:http/http.dart";

class AuthService {
  Future register(context, UserModel model) async {
    Uri url = Uri.parse(Constants().serverUrl+Constants().registerEndpoint);
    print(url);
    Map<String, dynamic> modelObj = model.toJson();
    try {
      Response response =
          await http.post(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, "User successfully created");
        Navigator.pushReplacementNamed(context, '/home');  //lee 
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      print(e);
      return modelObj;
    }
  }

  Future login(context, UserModel model) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Uri url = Uri.parse(Constants().serverUrl+Constants().loginEndpoint);
    var modelObj = model.toJson();
    try {
      Response response =
          await http.post(url, body: jsonEncode(modelObj), headers: {
        "Content-Type": "application/json",
      });
      modelObj = jsonDecode(response.body);
      if (modelObj["status"] == true) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
        storage.write(key: "token", value: modelObj["data"]["token"]);
        Navigator.pushReplacementNamed(context, '/home', arguments: {
          "name": modelObj["data"]["user"]["name"],
          "email": modelObj["data"]["user"]["email"],
          "mobile": modelObj["data"]["user"]["mobile"],
          "imgUrl": modelObj["data"]["user"]["imgURL"],
        });
      }
      if (modelObj["status"] == false) {
        AlertManager().displaySnackbar(context, modelObj["message"]);
      }
      return modelObj;
    } catch (e) {
      print(e);
      return modelObj;
    }
  }
}