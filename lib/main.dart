import 'package:api_integration/Screens/controller_binding.dart';
import 'package:api_integration/calling_api.dart';
import 'package:api_integration/colors.dart';
import 'package:api_integration/tiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'Screens/home_page.dart';
import 'example_two.dart';
import 'home_screen.dart';
import 'index.dart';
import 'question_1.dart';
import 'upOnly_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: HomePage(),
    );
  }
}
