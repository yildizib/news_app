import 'package:get/get.dart';
import 'package:news_app/app/bindings/home_binding.dart';
import 'package:news_app/app/views/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
