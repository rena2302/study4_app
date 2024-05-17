import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study4_app/obj/Course.dart';
import 'package:study4_app/view/home/tabs/CardTab.dart';
import 'package:study4_app/view/home/tabs/FavoriteTab.dart';
import 'package:study4_app/view/home/tabs/HomeTab.dart';
import 'package:study4_app/view/home/tabs/SettingTab.dart';

class HomeController extends GetxController{
  var currentPage = 0.obs;

  late PageController pageController;

  final appName = 'Study4';
  final courseList = [
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
      Course.withFullField('[IELTS General Training] Intensive Reading: Từ Vựng - Chiến Lược Làm Bài - Chữa đề chi tiết', 'https://study4.com/media/courses/Course/files/2023/12/12/gt_reading-min.webp', '699.000đ'),
    ].obs;
 final appNameEditingController = TextEditingController();
 
  List<Widget> pages = [
    HomeTab(),
    CardTab(),
    FavoriteTab(),
    SettingTab(),
  ];

  @override
  void onInit(){
    pageController = PageController(initialPage: 0);

    super.onInit();
  }
  
  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void updateCurrentPage(int index) {
    currentPage.value = index;
  }

  updateCourseName(String courseName, int index){
    courseList[index].setTitle(courseName);
  }

  getAppName(){
    return appName;
  }

}