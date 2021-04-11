import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/controllers/home_controller.dart';
import 'package:news_app/app/locales/locales.g.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons_login'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'buttons_login'.tr,
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                })
          ],
        ),
      ),
    );
  }
}
