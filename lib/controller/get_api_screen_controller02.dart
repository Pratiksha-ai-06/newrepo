import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import '../model/get_api_screen02.dart';
class GetApiScreenController02 extends GetxController {
  var data;
  RxList<getApiScreen02> getData = <getApiScreen02>[].obs;

  Future<RxList<getApiScreen02>> getApi() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    if (response.statusCode == 200) {
      data = getApiScreen02.fromJson(jsonDecode(response.body.toString()));
      return data;
    }
    else {
      return data;
    }
  }
}
