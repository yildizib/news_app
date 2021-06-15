import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/app/controllers/home_controller.dart';

class HomeBody extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Username',
          ),
        ),
// spacer
        SizedBox(height: 12.0),
// [Password]
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Password',
          ),
          obscureText: true,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {},
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
              child: Text('NEXT'),
              onPressed: () {},
            )
          ],
        )
      ],
    ));
  }
}
