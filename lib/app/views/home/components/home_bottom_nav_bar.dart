import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/app/controllers/home_controller.dart';

class HomeBottomNavBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0.0),
      padding: const EdgeInsets.all(0.0),
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: Colors.black12))),
      child: Obx(() => BottomNavigationBar(
              onTap: (int index) => controller.onTapSelectedIndex = index,
              iconSize: 25,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              currentIndex: controller.onTapSelectedIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
              ])),
    );
  }
}
