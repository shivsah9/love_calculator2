import 'dart:math';

import 'package:get/get.dart';

class ResultController extends GetxController {
  //TODO: Implement ResultController

  final count = 0.obs;

  var args = Get.arguments ?? ['first', 'last']  ;

  // random number

  var random = Random().nextInt(20) + 80;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
