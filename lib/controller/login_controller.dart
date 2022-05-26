import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  int loginState = 1;

  void live() {
    loginState = 1;
    update();
  }

  void paperTrading() {
    loginState = 0;
    update();
  }

  bool isPassword = true;
  IconData suffixIcon = Icons.visibility_off_outlined;
  void ShowPassword() {
    isPassword = !isPassword;
    if (isPassword) {
      suffixIcon = Icons.visibility_off_outlined;
    } else {
      suffixIcon = Icons.visibility_outlined;
    }
    update();
  }
}
