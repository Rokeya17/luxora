
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/data/services/api_response.dart';
import 'package:luxora/data/services/api_services.dart';
import 'package:luxora/signin/model/signin_model.dart';
import 'package:luxora/utils/constants/urls.dart';

class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController(text: 'rabbilidlc@gmail.com');
  TextEditingController passwordController = TextEditingController(text: '123');
  ApiServices apiServices = ApiServices();
  bool isLoading = false;
  SignInModel? signInModel ;


  Future<void> signIn() async {
    isLoading =true;
    update();
   final ApiResponse response = await   apiServices.post(url: '$baseurl/login', body: {
      'email': emailController.text.trim(),
      'password': passwordController.text
    });
    if(response.statusCode==200)
    {
     signInModel=SignInModel.fromJson(jsonDecode(response.body));
     Get.snackbar('ok', 'Successful');
     
    }else{
      Get.snackbar('Error', 'Something went wrong');
    }
    isLoading = false;
    update();


  }


}
