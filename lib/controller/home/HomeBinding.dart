import 'package:get/get.dart';
import 'package:study4_app/controller/home/HomeController.dart';

class HomeBinding extends Bindings {
  // default dependency
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
  }
}