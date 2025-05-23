import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce_app/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// ----- Use this class to setup, Initial bindings, any Animations and much more
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
