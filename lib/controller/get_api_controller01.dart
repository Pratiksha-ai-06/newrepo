import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/get_api_demo_screen1.dart';

class GetApiController01 extends GetxController
{
  RxList<getApiDemo1> getData=<getApiDemo1>[].obs;
  Future<RxList<getApiDemo1>> getApi() async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200)
      {
        for(var index in data)
          {
            getData.add(getApiDemo1.fromJson(index));
          }
        return getData;
      }
    else
      {
        return getData;
      }
  }


}