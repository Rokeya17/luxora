import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxora/splash_view/splash_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home:const SplashScreen()
    );
  }
}