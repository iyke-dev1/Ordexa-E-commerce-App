import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// called from main.dart on app launch
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      screenRedirect();
    });
  }

  /// Function to show relevant screen
  void screenRedirect() async {
    final storage = GetStorage();

    if (kDebugMode) {
      print('============= GET STORAGE IsFirstTime ==============');
      print(storage.read('IsFirstTime'));
    }

    // If first time, write true (so onboarding will show)
    deviceStorage.writeIfNull('IsFirstTime', true);

    if (deviceStorage.read('IsFirstTime') == true) {
      Get.offAll(() => OnboardingScreen());
    } else {
      Get.offAll(() => LoginScreen());
    }
  }

  /*-------------- Email & Password sign-in -----------------*/


  /// [MailVerification] -  MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try{
      await _auth.currentUser?.sendEmailVerification();

    }catch (e){
      throw 'something went wrong. please try again';
    }

  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (kDebugMode) {
        print("✅ User created: ${userCredential.user?.uid}");
      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print("❌ Firebase Auth error: ${e.code} - ${e.message}");
      }
      throw e.message ?? "Something went wrong. Please try again.";
    } catch (e) {
      throw "Unexpected error: $e";
    }
  }

  /// [EmailAuthentication] - SignIn
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "Login failed. Please try again.";
    }
  }

  /// [LogoutUser]
  Future<void> logout() async => await _auth.signOut();

  /// Listen to Auth state changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();
}
