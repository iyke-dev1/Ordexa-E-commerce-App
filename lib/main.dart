import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

  /// ------- Entry point of flutter app -------
Future<void> main() async {
 // Add Widget Binding
  WidgetsFlutterBinding.ensureInitialized();

 // --- GetX Local Storage
 await GetStorage.init();

 // --- Init Firebase
 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );

 // --- Inject AuthenticationRepository into memory
 Get.put(AuthenticationRepository());

 // --- Run the app
 runApp(const MyApp());
}
