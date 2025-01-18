import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/signin/controller/signin_controller.dart';
import 'package:luxora/signin/model/signin_model.dart';

//GetView<SigninController>
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    SigninController controller = Get.find<SigninController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Section
              // Container(
              //   height: 120.0,
              //   width: 120.0,
              //   decoration: const BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: DecorationImage(
              //       image: AssetImage(''),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20.0),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Log in to continue",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30.0),

              TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20.0),

              TextFormField(
                controller: controller.passwordController,
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
              const SizedBox(height: 20.0),
              GetBuilder<SigninController>(builder: (controller) {
                return SizedBox(
                  width: double.infinity,
                  child:!controller.isLoading ? ElevatedButton(
                    onPressed: ()async {
                      await controller.signIn();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ):Center(child: CircularProgressIndicator(),)
                );
              }),

              const SizedBox(height: 20.0),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
