import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/app.dart';
import 'package:luxora/signin/controller/signin_controller.dart';
import 'package:luxora/signup/controller/signup_controller.dart';

void main() {
  Get.put(SigninController());
  Get.put(SignupController());
  runApp(const App());

}


