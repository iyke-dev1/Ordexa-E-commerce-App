import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';

class MySpacingStyle {
  static EdgeInsetsGeometry paddingWithAppHeight = EdgeInsets.only(
      top: MySizes.appBarHeight,
      left: MySizes.defaultSpace,
      bottom: MySizes.defaultSpace,
      right: MySizes.defaultSpace
  );
}