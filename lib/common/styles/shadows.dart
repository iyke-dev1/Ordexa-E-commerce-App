import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: MyColor.darkGrey.withAlpha(30),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: MyColor.darkGrey.withAlpha(30),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}