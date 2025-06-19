import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class CircularIcon extends StatelessWidget {
  /// A Common Circular Icon Widgets with a background color
  ///
  /// properties are:
  /// Container [width], [height], and [backgroundColor]
  ///
  /// icon's [size], [color], and [onPressed]
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    this.backgroundColor,
    this.color,
    this.onPressed,
    required this.icon,
  });

  final double? width, height, size;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null ? backgroundColor! : MyHelperFunctions.isDarkMode(context) ? MyColor.black.withAlpha(250) : MyColor.white.withAlpha(250),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}
