import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study4_app/obj/course.dart';
import 'package:study4_app/view/home/tabs/card_tab.dart';
import 'package:study4_app/view/home/tabs/course_tab.dart';
import 'package:study4_app/view/home/tabs/exam_tab.dart';

class HomeController extends GetxController{
  var currentPage = 1.obs;

  late PageController pageController;

  final appName = 'STUDY4';
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
    const ExamTab(),
    const CourseTab(),
    const CardTab(),
  ];

  @override
  void onInit(){
    pageController = PageController(initialPage: currentPage.value);
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