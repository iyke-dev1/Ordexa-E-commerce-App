import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/loaders/animation_loader.dart';
import '../constants/colors.dart';


/// A Utility class For managing a Full-Screen Loading Dialog
class MyFullScreenLoader {
  /// Open a full screen loading Dialog with a text animation
  /// this is a method designed to return anything
  /// this method doesn't return anything
  ///
  /// Parameters:
  ///  -text: The text to be displayed in the loading Dialog
  ///  -animation: The lottie animation to be shown

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = constraints.maxHeight;
            final screenWidth = constraints.maxWidth;

            return Container(
              color: MyHelperFunctions.isDarkMode(Get.context!)
                  ? MyColor.dark
                  : MyColor.white,
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.6,   // 60% of screen width
                  height: screenHeight * 0.3, // 30% of screen height
                  child: MyAnimationLoaderWidget(
                    text: text,
                    animation: animation,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }



  /// Close the full screen loading Dialog
 /// this is a method designed to return anything
static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); // Close the loading dialog
}
}

