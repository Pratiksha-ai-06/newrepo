import 'package:flutter/material.dart';
import 'package:getandpostapi/routes/app_page.dart';
import 'package:getandpostapi/routes/routes.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.POST_API_SCREEN01_ROUTE,
      getPages:AppPage.pages,
    );
  }
}


