import 'package:get/get_instance/get_instance.dart';
import 'package:get/instance_manager.dart';
import 'package:news_app/app/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
