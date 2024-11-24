import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

TextEditingController nameController=TextEditingController();
TextEditingController emailController=TextEditingController();

class PostApiScreenController extends GetxController
{
  Future<bool> postApi() async{
    Map<String,String> abc={
      "name": nameController.text.toString(),
      "email":emailController.text.toString(),
    };
    final response=await http.post(Uri.parse("http://103.159.85.246:4000/api/employee/registersub"),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
      "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpAZ21haWwuY29tIiwicm9sZSI6ImFkbWluIiwiYWRtaW5Vc2VySWQiOiI2NmJlZGZkZGE1ZWRmYWJkMDRmMTFhNTgiLCJhZG1pbkNvbXBhbnlOYW1lIjoiZ2FtbWEiLCJlbXBsb3llZUlkIjoiNjZiZWUwMGRhNWVkZmFiZDA0ZjExYTYzIiwibmFtZSI6ImphY2siLCJpYXQiOjE3MjM3ODUyNjh9.5NXcgWrYy8OwO_v8gCJoLOvM8_vRYSRyGr5Adr_cvpI",
    },
      body: jsonEncode(abc),
    );
    if(response.statusCode==200)
      {
        return true;
      }
    else
      {
        return false;
      }
  }
}