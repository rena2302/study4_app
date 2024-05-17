import 'package:get/get.dart';
import 'package:study4_app/controller/home/home_controller.dart';
import 'package:study4_app/view/home/home_page_view.dart';

abstract class Routes{
  static const home = '/home';
  static const splash = '/splash';
}

abstract class AppPages{
  static String inital = Routes.home;
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: BindingsBuilder.put(() => HomeController())
    )
  ];
}