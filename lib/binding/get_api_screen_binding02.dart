import 'package:get/get.dart';
import 'package:getandpostapi/controller/get_api_screen_controller02.dart';

class GetApiScreenBinding02 extends Bindings
{
  @override
  void dependencies() {
    Get.put<GetApiScreenController02>(GetApiScreenController02());
  }

}