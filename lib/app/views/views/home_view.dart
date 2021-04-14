import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("home_app_bar_title".tr),
          centerTitle: true,
          toolbarHeight: 40),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(0.0),
        padding: const EdgeInsets.all(0.0),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black12))),
        child: Obx(() => BottomNavigationBar(
                onTap: (int index) => controller.onTapSelectedIndex = index,
                iconSize: 25,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                currentIndex: controller.onTapSelectedIndex,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.bookmark), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ''),
                ])),
      ),
      body: Container(
        child: Center(
          child: Text("Center"),
        ),
      ),
    );
  }
}
