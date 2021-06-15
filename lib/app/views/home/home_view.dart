import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/controllers/home_controller.dart';
import 'package:news_app/app/views/home/components/home_body.dart';
import 'package:news_app/app/views/home/components/home_bottom_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("home_app_bar_title".tr),
          centerTitle: true,
          toolbarHeight: 40),
      bottomNavigationBar: HomeBottomNavBar(),
      body: Container(
        child: Center(
          child: HomeBody(),
        ),
      ),
    );
  }
}
