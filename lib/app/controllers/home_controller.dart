import 'package:get/get.dart';

class HomeController extends GetxController {
  final _onTapSelectedIndex = 0.obs;
  get onTapSelectedIndex => _onTapSelectedIndex.value;
  set onTapSelectedIndex(index) => _onTapSelectedIndex.value = index;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
