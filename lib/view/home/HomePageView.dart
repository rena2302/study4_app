import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return  GetX<HomeController>(
      builder: (controller) => Scaffold(
        appBar: appBarGenerate(controller),
        bottomNavigationBar: bottomAppBar(controller),
        body:  PageView(
          controller: controller.pageController,
          onPageChanged: controller.updateCurrentPage,
          children: controller.pages,
        ),
      ),
    );
  }
 
  //Drawer generate
    BottomAppBar bottomAppBar(HomeController controller) {
    return BottomAppBar(
      elevation: 0,
      notchMargin: 10,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(icon: IconlyLight.home, page: 0,controller: controller),
              _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1,controller: controller),
              _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
              _bottomAppBarItem(icon: IconlyLight.profile, page: 3,controller: controller),
            ],
          ),
        ),
      ),
    );
  }
  Widget _bottomAppBarItem({icon, page, controller}) {
    return ZoomTapAnimation(
        onTap: () => controller.goToTab(page),
        child: Icon(icon, color: controller.currentPage == page ? Colors.blue : Colors.grey, size: 22,),
      );
  }
  //Appbar generate code
    AppBar appBarGenerate(HomeController controller) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child:  Text(
            controller.appName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}