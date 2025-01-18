import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/data/services/api_response.dart';
import 'package:luxora/data/services/api_services.dart';
import 'package:luxora/signin/model/signin_model.dart';
import 'package:luxora/utils/constants/urls.dart';

class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController(text: 'anik.ba@pakizatvl.com');
  TextEditingController passwordController = TextEditingController(text: '12345678As@');
  ApiServices apiServices = ApiServices();
  bool isLoading = false;
  SignInModel? signInModel ;


  Future<void> signIn() async {
    isLoading =true;
    update();
   final ApiResponse response = await   apiServices.post(url: '$baseurl/api/login', body: {
      'email': emailController.text.trim(),
      'password': passwordController.text
    });
    if(response.statusCode==200)
    {
     signInModel=SignInModel.fromJson(response.body as Map<String,dynamic>);
     Get.snackbar('ok', 'Successful');
     
    }else{
      Get.snackbar('Error', 'Something went wrong');
    }
    isLoading = false;
    update();


  }

  @override
  void onInit() {
    super.onInit();
  }
}
