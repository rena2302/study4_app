
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:study4_app/controller/home/home_controller.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return  GetX<HomeController>(
      builder: (controller) => Scaffold(
        appBar: appBarGenerate(controller),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: controller.currentPage.value,
          onTap: (index)  => controller.goToTab(index) ,
          items: [
            bottomNavItemGenerate(icon: IconlyLight.paper, label: 'Exam'),
            bottomNavItemGenerate(icon: IconlyLight.home, label: 'Home'),
            bottomNavItemGenerate(icon: Icons.card_membership, label: 'Flashcard')
          ],
        ),
        body:  PageView(
          controller: controller.pageController,
          onPageChanged: controller.updateCurrentPage,
          children: controller.pages,
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavItemGenerate({icon, label}) {
    return BottomNavigationBarItem(
            icon: Icon(icon),
            label: label,
          );
  }
 
  
  //Appbar generate code
    AppBar appBarGenerate(HomeController controller) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child:  Text(
          controller.appName,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
      ],
    );
  }
}