import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/data/services/api_response.dart';
import 'package:luxora/data/services/api_services.dart';
import 'package:luxora/signup/model/signup_model.dart';
import 'package:luxora/utils/constants/urls.dart';

class SignupController extends GetxController {
  TextEditingController firstNameTEcontroller = TextEditingController(text: 'Mimo');
  TextEditingController lastNameTEcontroller = TextEditingController(text: 'Mim');
  TextEditingController emailTEcontroller = TextEditingController(text: 'rabbil@rabbil.com');
  TextEditingController passwordTEcontroller = TextEditingController(text:'1234');
  TextEditingController phoneNMTEcontroller = TextEditingController(text: '01723456789');
  bool isLoading = false;
  ApiServices apiServices = ApiServices();
  SignUpModel? signUpModel;

  DateTime? selectedDate;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      update();
    }
  }

  Future<bool> signup() async {
    isLoading = true;
    update();
    final ApiResponse response =
        await apiServices.post(url: '$baseurl/registration', body: {
    "email":emailTEcontroller.text.trim(),
    "firstName":firstNameTEcontroller.text.trim(),
    "lastName":lastNameTEcontroller.text.trim(),
    "mobile":phoneNMTEcontroller.text.trim(),
    "password":passwordTEcontroller.text,
    "photo":''
    });

    if (response.statusCode == 200) {
       signUpModel = SignUpModel.fromJson(jsonDecode(response.body)); 
      isLoading = false;
      update();
      Get.snackbar('success', 'successfully logged in');
      return true;
    } else {
      isLoading = false;
      update(); 
      Get.snackbar('error', 'Something went WRONG');
      return false;


    }
    
    
  }
  
}
