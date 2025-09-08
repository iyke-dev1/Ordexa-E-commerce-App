import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/repositories/user/user_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/network_manager.dart';
import '../../../../utils/popups/full_screen_loaders.dart';
import '../../../../utils/popups/loaders.dart';
import '../../models/user_model/user_model.dart';
import '../../screens/signup/verify_email.dart';


class SignupController extends GetxController{
  static SignupController get instance => Get.find();


  /// Variables
  final hidePassword = true.obs; //Observable boolean to control password visibility
  final privacyPolicy = true.obs; //Observable boolean to control privacy policy checkbox
  final email = TextEditingController(); //Controller for email input
  final firstName = TextEditingController(); //Controller for first name input
  final lastName = TextEditingController(); //Controller for last name input
  final userName = TextEditingController(); //Controller for username input
  final phoneNumber = TextEditingController(); //Controller for phone number input
  final password = TextEditingController(); //Controller for password input
  // final confirmPassword = TextEditingController(); //Controller for confirm password input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //Global key for form validation>

  /// SIGNUP
  void signup() async {
    try {
      // Check internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      // Form Validation
      final formState = signupFormKey.currentState;
      if (formState == null || !formState.validate()) {
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        MyLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create an account, you must have to read and accept the privacy policy',
        );
        return;
      }

      // ✅ Start Loading only after all checks passed
      MyFullScreenLoader.openLoadingDialog(
        'We are Processing Your information',
        MyImage.success,
      );

      // Register User in Firebase Authentication and Save User Data In Firebase Firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save Authenticated Data in the firebase Firestore
      final user = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = UserRepository.instance;
      await userRepository.saveUserRecord(user);

      // Remove Loader
      MyFullScreenLoader.stopLoading();

      // Show Success Message
      MyLoaders.successSnackBar(
        title: 'Success',
        message: 'Your account has been created successfully! verify your email to continue',
      );

      // Move to verify Email Screen
      Get.offAll(() => VerifyEmailScreen());
    } catch (e) {
      // Remove Loader
      MyFullScreenLoader.stopLoading();

      // Show some generic error message to users
      MyLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}