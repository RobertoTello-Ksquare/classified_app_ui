import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:classified_app_ui/util/constants.dart';

class UserService {
  Future<List> _fetchUserData() async{
    var url = Uri.parse("${Constants().serverUrl}/api/users?page=2");
    try
    {
      var res = await http.get(url);
      var resAsJSON = jsonDecode(res.body);
      var userData = resAsJSON('data');
      return userData;
    } catch (e){
      return[];
    }
  }
}