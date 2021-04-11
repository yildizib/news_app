import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  var _storage;
  get storage => _storage;

  Future<void> onInit() async {
    super.onInit();
    GetStorage.init();
    _storage = GetStorage();
  }
}
