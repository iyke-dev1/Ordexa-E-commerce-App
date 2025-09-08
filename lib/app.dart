import 'package:e_commerce_app/bindings/general_binding.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce_app/features/authentication/screens/splash/splash_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/widget/success_screen/success_screen.dart';
import 'navigation_menu.dart' show NavigationMenu;

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
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: true,
      home: Splashscreen(),



      // initialRoute: '/splash', // This tells GetX where to start
      //
      // getPages: [
      //   GetPage(name: '/splash', page: () => const Splashscreen()),
      //   GetPage(name: '/login', page: () => const LoginScreen()),
      //   GetPage(
      //     name: '/register',
      //     page: () => SuccessScreen(
      //       image: MyImage.success, // Ensure MyImage.success is a valid asset path (e.g., 'assets/images/success.png')
      //       title: 'Success!',
      //       subTitle: 'Your Account has been created',
      //       onPressed: () => Get.offAllNamed('/login'),
      //     ),
      //   ),
      //   GetPage(name: '/Home', page: () => const NavigationMenu()),
      //   // GetPage(name: '/Assistant', page: () => const AssistantScreen()), // Assuming this is needed
      // ],
    );
  }
}
