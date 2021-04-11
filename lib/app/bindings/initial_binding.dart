import 'package:get/instance_manager.dart';
import 'package:news_app/app/services/storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StorageService());
  }
}
