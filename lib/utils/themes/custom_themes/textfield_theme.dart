import 'package:flutter/material.dart';

 class MyTextField{
   MyTextField._();

   static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
     errorMaxLines: 3,
     prefixIconColor: Colors.grey,
     suffixIconColor: Colors.grey,
     constraints: BoxConstraints.expand(height: 60),
     labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
     hintStyle: TextStyle().copyWith(fontSize: 16, color: Colors.black.withAlpha(60)),
     errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
     floatingLabelStyle: TextStyle().copyWith(color: Colors.black),
     border: OutlineInputBorder().copyWith(
       borderRadius:BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.black)
     ),
     enabledBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.grey)
     ),

       focusedBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.grey)
     ),

       errorBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.grey)
     )
   );


   static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
     errorMaxLines: 3,
     prefixIconColor: Colors.grey,
     suffixIconColor: Colors.grey,
     // constraints: BoxConstraints.expand(height: 60),
     labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
     hintStyle: TextStyle().copyWith(fontSize: 14, color: Colors.grey.withAlpha(60)),
       // errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
       floatingLabelStyle: TextStyle().copyWith(color: Colors.white),
     border: OutlineInputBorder().copyWith(
       borderRadius:BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.white)
     ),
     enabledBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.grey)
     ),

       focusedBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.grey)
     ),

       errorBorder: OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(14),
       borderSide: BorderSide(width: 1, color: Colors.black)
     )
   );
 }