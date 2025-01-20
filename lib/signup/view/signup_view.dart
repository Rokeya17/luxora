import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/component/textfromfield.dart';
import 'package:luxora/signin/view/signin_view.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: GetBuilder<SignupController>(builder: (controller) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Please fill in the details below to sign up.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 24),
                      PrimaryTextFormField(
                        labelText: 'First Name',
                        controller: controller.firstNameTEcontroller,
                      ),
                      const SizedBox(height: 16),
                      PrimaryTextFormField(
                        labelText: 'Last Name',
                        controller: controller.lastNameTEcontroller,
                      ),
                      const SizedBox(height: 16),
                      PrimaryTextFormField(
                        labelText: 'Email',
                        controller: controller.emailTEcontroller,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16),
                      PrimaryTextFormField(
                        labelText: 'Phone Number',
                        controller: controller.phoneNMTEcontroller,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),
                      const PrimaryTextFormField(
                        labelText: 'Password',
                        obscureText: true,
                        suffixIcon: const Icon(Icons.visibility),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () async {
                          await controller.signup();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account? ',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const SigninView());
                            },
                            child: const Text(
                              'Signin',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (controller.isLoading)
                  Container(
                    color: Colors.black54,
                    child: const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
