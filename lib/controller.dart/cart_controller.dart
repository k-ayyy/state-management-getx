import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var laptopCounter = 0.obs; // make it observable and changeable state
  var mouseCounter = 0.obs;

  int get sum => laptopCounter.value + mouseCounter.value;

  incrementLaptop() {
    laptopCounter.value++;
  }

  decrementLaptop() {
    if (laptopCounter.value <= 0) {
      Get.snackbar(
        "Buying Laptops",
        "Buying not supported for less than zero",
        icon: Icon(Icons.error),
        barBlur: 10,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      laptopCounter.value--;
    }
  }

  incrementMouse() {
    mouseCounter.value++;
  }

  decrementMouse() {
    if (mouseCounter.value <= 0) {
      Get.snackbar(
        "Buying Mouse",
        "Buying not supported for less than zero",
        icon: Icon(Icons.error),
        barBlur: 10,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      mouseCounter.value--;
    }
  }
}
