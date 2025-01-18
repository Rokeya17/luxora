import 'package:flutter/material.dart';
import 'dart:async';

import 'package:luxora/signin/view/signin_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SigninView()));});
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          
        const  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                // Container(
                //   height: 100.0,
                //   width: 100.0,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage(''), /// pub and assets issue
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                 SizedBox(height: 20.0),
                
                 Text(
                  'Luxora',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                 SizedBox(height: 10.0),
                
                 Text(
                  'Luxora: For the Love of Luxury.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),

          
         const Positioned(
            bottom: 30.0,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children:  [
                  CircularProgressIndicator(
                    color: Colors.white,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

