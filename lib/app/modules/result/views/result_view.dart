import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 80.0,
              animation: true,
              animationDuration: 2000,
              lineWidth: 20.0,
              percent: controller.random / 100,
              center: Text("${controller.random}%"),
              progressColor: Get.theme.colorScheme.primary,
            ),
            const SizedBox(height: 50),
            Text(
              "Love between ${controller.args[0]} and ${controller.args[1]} is \n ${controller.random}%",
              style: Get.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
