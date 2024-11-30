import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Love Calculator'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        height: Get.height,
        padding: EdgeInsets.all(24),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/logo/logo.jpeg',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: controller.firstNameController,
              decoration: InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: controller.secondNameController,
              decoration: InputDecoration(
                labelText: 'Partner Name',
                hintText: 'Enter Partner name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 45,
              child: ElevatedButton(
                child: Text('Calculate'),
                onPressed: () {
                  var firstName = controller.firstNameController.text;
                  var secondName = controller.secondNameController.text;

                  Get.toNamed(Routes.RESULT,
                      arguments: [firstName, secondName]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
