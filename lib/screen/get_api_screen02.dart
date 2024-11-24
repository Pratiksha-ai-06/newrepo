import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getandpostapi/controller/get_api_screen_controller02.dart';
import 'package:http/http.dart' as http;
class GetApiScreen02 extends StatefulWidget {
  const GetApiScreen02({super.key});

  @override
  State<GetApiScreen02> createState() => _GetApiScreen02State();
}

class _GetApiScreen02State extends State<GetApiScreen02> {
  GetApiScreenController02 getApiScreenController02=Get.put(GetApiScreenController02());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: getApiScreenController02.getApi(),
              builder: (context,snapshot)
          {
            return Expanded(
              child: ListView.builder(
                itemCount:getApiScreenController02.getData.value.length ,
                  itemBuilder: (context,index)
              {
                return Column(
                  children: [
                    Text('id ${getApiScreenController02.data!.id}')
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
