import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/signup/controller/signup_controller.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GetBuilder<SignupController>(builder: (controller) {
          return !controller.isLoading ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text('First name'),
              TextFormField(
                controller: controller.firstNameTEcontroller,
                decoration: InputDecoration(
                  labelText: 'first name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('last name'),
              TextFormField(
                controller: controller.lastNameTEcontroller,
                decoration: InputDecoration(
                  labelText: 'last name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Email'),
              TextFormField(
                controller: controller.emailTEcontroller,
                decoration: InputDecoration(
                  labelText: ' email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              
              TextFormField(
                controller: controller.phoneNMTEcontroller,
                decoration: InputDecoration(
                  labelText: ' Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              //================================  Date picker ============================//
              // OutlinedButton(
              //     onPressed: () async {
              //       await controller.selectDate(context);
              //     },
              //     child: Text(controller.selectedDate == null
              //         ? 'Date picker'
              //         : controller.selectedDate!.toIso8601String())),


              ElevatedButton(onPressed: ()async {
                await controller.signup();
              }, child: const Text('SignUp'))
            ],
          ):const Center(child: CircularProgressIndicator(),);
        }),
      ),
    );
  }
}
