import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  int index = 0;

  void changeIndex(int i) {
    index = i;
    update();
  }
}
