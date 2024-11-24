import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getandpostapi/controller/get_api_controller01.dart';
import 'package:http/http.dart' as http;
class GetApiScreen01 extends StatefulWidget {
  const GetApiScreen01({super.key});

  @override
  State<GetApiScreen01> createState() => _GetApiScreen01State();
}

class _GetApiScreen01State extends State<GetApiScreen01> {
  GetApiController01 getApiController01=Get.put(GetApiController01());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          FutureBuilder(
              future: getApiController01.getApi(),
              builder: (context,snapshot)
          {
            return Expanded(
              child: ListView.builder(
                itemCount: getApiController01.getData.value.length,
                  itemBuilder: (context,index)
              {
                return Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("${getApiController01.getData[index].company!.bs.toString()}"),
                          Text("${getApiController01.getData[index].company!.catchPhrase.toString()}"),
                          Text("${getApiController01.getData[index].company!.name.toString()}"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("${getApiController01.getData[index].address!.street.toString()}"),
                          Text("${getApiController01.getData[index].address!.zipcode.toString()}"),
                          Text("${getApiController01.getData[index].address!.geo.toString()}"),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            );
          })

        ],
      ),
    );
  }
}
