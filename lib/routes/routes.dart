import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:study4_app/controller/home/HomeController.dart';
import 'package:study4_app/view/home/HomePageView.dart';

abstract class Routes{
  static const home = '/home';
  static const splash = '/splash';
}

abstract class AppPages{
  static String inital = Routes.home;
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: BindingsBuilder.put(() => HomeController())
    )
  ];
}