import 'package:get/get.dart';
import 'package:getandpostapi/controller/get_api_controller01.dart';

class GetApiBinding01 extends Bindings
{
  @override
  void dependencies() {
    Get.put<GetApiController01>(GetApiController01());
  }

}