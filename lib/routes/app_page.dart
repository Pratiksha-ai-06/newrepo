import 'package:get/get.dart';
import 'package:getandpostapi/binding/get_api_binding01.dart';
import 'package:getandpostapi/binding/post_api_screen_binding.dart';
import 'package:getandpostapi/routes/routes.dart';
import 'package:getandpostapi/screen/get_api_screen01.dart';
import 'package:getandpostapi/screen/post_api_screen.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
class AppPage{
  static String INITIAL_ROUTE=Routes.POST_API_SCREEN01_ROUTE;
  static final pages=[
    GetPage(
        name: Routes.GET_API_SCREEN01_ROUTE,
        page:()=>GetApiScreen01(),
        binding:GetApiBinding01()
    ),
    GetPage(
        name: Routes.POST_API_SCREEN01_ROUTE,
        page:()=>PostApiScreen(),
        binding:PostApiScreenBinding()
    ),

  ];
}