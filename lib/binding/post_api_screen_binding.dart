import 'package:get/get.dart';
import 'package:getandpostapi/controller/post_api_screen_controller.dart';

class PostApiScreenBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put<PostApiScreenController>(PostApiScreenController());
  }

}