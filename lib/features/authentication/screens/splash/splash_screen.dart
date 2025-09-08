import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart'; // Import GetStorage
import '../onboarding/onboarding.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final box = GetStorage(); // Initialize GetStorage

  @override
  void initState() {
    super.initState();
    // _checkInitialRoute();
  }

  // void _checkInitialRoute() async {
  //   // Introduce a small delay to ensure GetX's navigation context is fully ready
  //   await Future.delayed(const Duration(seconds: 5)); // Adjust splash duration as needed
  //
  //   final bool hasOnboarded = box.read('hasOnboarded') ?? false; // Read the flag
  //
  //   if (hasOnboarded) {
  //     // If user has onboarded, check login status
  //       Get.offAllNamed('/Home'); // Navigate to your main app screen
  //       Get.offAllNamed('/login'); // Navigate to login if not logged in
  //     }
  //   {
  //     // If user has NOT onboarded, go to OnboardingScreen
  //     Get.offAll(() => const OnboardingScreen());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logos/dark-splash-logo.png", height: 250, width: 250,),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("Ode",
                //   style: TextStyle(
                //     fontSize: 40,
                //     color: MyColor.primary,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                //
                // Text("xa",
                //   style: TextStyle(
                //     fontSize: 40,
                //     color: MyColor.primary,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}