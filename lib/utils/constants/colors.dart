import 'package:flutter/material.dart';

class MyColor{
  MyColor._();

  /// App Basic Colors
  static Color primary = Color(0xFF4B68FF);
  static Color secondary = Color(0xFFFFE24B);
  static Color accent = Color(0xFFb0c7ff);

  /// Gradient Colors
  static Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
    Color(0xffff9a9a),
    Color(0xfffad0c4),
    Color(0xfffad0d5),
  ]);
  

  /// text Colors
  static Color textPrimary = Color(0xFF333333);
  static Color textSecondary = Color(0xFF6c757d);
  static Color textWhite = Colors.white;

  /// Background Color
  static Color light = Color(0xFFF6F6F6);
  static Color dark = Color(0xFF272727);
  static Color primaryBackground = Color(0xFFF3F5FF);

  /// Background Container Colors
  static Color lightContainer = Color(0xFfF6F6F6);
  static Color darkContainer = MyColor.textWhite.withAlpha(30);

  ///Button Colors
  static Color buttonPrimary = Color(0xFF4B68FF);
  static Color buttonSecondary = Color(0xFF6c757d);
  static Color buttonDisabled = Color(0xFFc4c4c4);

  /// Border Colors
  static Color borderPrimary = Color(0xFFd9d9d9);
  static Color borderSecondary = Color(0xFFe6e6e6);

  /// Error Validation Color
  static Color error = Color(0xFFd32f2f);
  static Color success = Color(0xFF388e3c);
  static Color warning = Color(0xFFf57c00);
  static Color info = Color(0xFF1976d2);

  /// Neutral shades
  static Color black = Color(0xFF232323);
  static Color darkGrey = Color(0xFF4f4f4f);
  static Color darkerGrey = Color(0xFF393939);
  static Color grey = Color(0xFFe0e0e0);
  static Color softGrey = Color(0xFFf4f4f4);
  static Color lightGrey = Color(0xFFf9f9f9);
  static Color white = Color(0xFFffffff);

}