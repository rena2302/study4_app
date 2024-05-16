import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study4_app/obj/Course.dart';

class HomeController extends GetxController{

  final appName = 'Study4'.obs;
  final courseList = <Course>[].obs;

  final appNameEditingController = TextEditingController();

  updateCourseName(String courseName, int index){
    courseList[index].setTitle(courseName);
  }

  getAppName(){
    return appName;
  }
}