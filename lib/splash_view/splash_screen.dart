import 'package:flutter/material.dart';
import 'package:luxora/utils/constants/appimages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.appLogo, 
              height: 150, 
              width: 150, 
              fit: BoxFit.contain, 
            ),
          ),
        ],
      ),
    );
  }
}
