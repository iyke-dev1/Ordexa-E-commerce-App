import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// A widget for displaying an animation loader with optional text and action
class MyAnimationLoaderWidget extends StatelessWidget {
  const MyAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: SingleChildScrollView( // ✅ makes it scrollable if needed
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          mainAxisSize: MainAxisSize.min, // ✅ take only required space
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ keep animation within screen
            Lottie.asset(
              animation,
              width: size.width * 0.6,
              height: size.height * 0.3,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: MySizes.defaultSpace),

            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: MySizes.defaultSpace),

            if (showAction && actionText != null)
              SizedBox(
                width: 250,
                child: OutlinedButton(
                  onPressed: onActionPressed,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: MyColor.dark,
                  ),
                  child: Text(
                    actionText!,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: MyColor.light,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
