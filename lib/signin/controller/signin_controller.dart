
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/data/services/api_response.dart';
import 'package:luxora/data/services/api_services.dart';
import 'package:luxora/signin/model/signin_model.dart';
import 'package:luxora/utils/constants/urls.dart';

class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController(text: 'rabbil@rabb.com');
  TextEditingController passwordController = TextEditingController(text: '1234');
  ApiServices apiServices = ApiServices();
  bool isLoading = false;
  SigninModel? signinModel ;


  Future<void> signIn() async {
    isLoading =true;
    update();
   final ApiResponse response = await   apiServices.post(url: '$baseurl/login', body: {
      'email': emailController.text.trim(),
      'password': passwordController.text
    });
    if(response.statusCode==200)
    {
     signinModel=SigninModel.fromJson(jsonDecode(response.body));
     Get.snackbar('ok', 'Successful');
     
    }else{
      Get.snackbar('Error', 'Something went wrong');
    }
    isLoading = false;
    update();


  }


}
