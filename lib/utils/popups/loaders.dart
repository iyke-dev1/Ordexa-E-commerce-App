import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class MyLoaders {
  /// Success snackbar
  static successSnackBar({
    required String title,
    String message = '',
    int duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: MyColor.primary,
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.check, color: Colors.white),
    );
  }

  /// Warning snackbar
  static warningSnackBar({
    required String title,
    String message = '',
    int duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange,
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.warning, color: Colors.white),
    );
  }

  /// Error snackbar
  static errorSnackBar({
    required String title,
    String message = '',
    int duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.shade600,
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.error, color: Colors.white),
    );
  }
}
