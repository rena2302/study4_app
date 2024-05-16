import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:study4_app/controller/home/HomeBinding.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:study4_app/view/home/HomePageView.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}


