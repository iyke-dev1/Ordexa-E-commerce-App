import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/login_signup/form_divider.dart';
import '../../../../common/widget/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppHeight,
          child: SafeArea(
            child: Column(
              children: [
                /// logo, title & sub-title
                MyLoginHeader(),
            
                /// form
                MyLoginForm(),
            
                /// Divider
                MyFormDivider(
                  dividerText: MyTexts.orSignUpWith.capitalize!,
                ),
            
                SizedBox(height: MySizes.spaceBtwSections,),
            
                /// Footer
                MySocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




