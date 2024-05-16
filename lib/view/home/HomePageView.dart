import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:study4_app/obj/Course.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends GetView<HomeController>{
  HomePage({Key? key}) : super(key: key);
  
  final _homeController = Get.put(HomeController());


  Widget build(BuildContext context){
    return  GetX<HomeController>(
      builder: (controller) => Scaffold(
        appBar: appBarGenerate(controller),
        bottomNavigationBar: bottomAppBar(),
        body:  bodyGenerate(controller.courseList),
      ),
    );
  }
  //Body generate
    ListView bodyGenerate(List<Course> courseList) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: courseList.length,
      itemBuilder: (context, index){
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.all(12.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Image.network(courseList[index].getImageAsset()),
                Text(
                  courseList[index].getTitle(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  courseList[index].getPrice(),
                  style: TextStyle(
                    color: Colors.green[300],
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
  //Drawer generate
    BottomAppBar bottomAppBar() {
    return BottomAppBar(
      elevation: 0,
      notchMargin: 10,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(icon: IconlyLight.home, page: 0),
              _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1),
              _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
              _bottomAppBarItem(icon: IconlyLight.profile, page: 3),
            ],
          ),
        ),
      ),
    );
  }
  Widget _bottomAppBarItem({icon, page}) {
    return ZoomTapAnimation(
      onTap: () => _homeController.goToTab(page),
      child: Icon(icon, color: _homeController.currentPage == page ? Colors.blue : Colors.grey, size: 22,),
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