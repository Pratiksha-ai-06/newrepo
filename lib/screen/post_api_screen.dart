import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getandpostapi/controller/post_api_screen_controller.dart';
import 'package:http/http.dart' as http;
class PostApiScreen extends StatefulWidget {
  const PostApiScreen({super.key});

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}
PostApiScreenController postApiScreenController=Get.put(PostApiScreenController());
class _PostApiScreenState extends State<PostApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Enter the name"
            ),
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Enter the email"
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () async {
              bool success = await postApiScreenController.postApi();
              if (success) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Login succesful")));
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Login failed")));
              }
            },
            child: Text("Login"),),

        ],
      ),
    );
  }
}

