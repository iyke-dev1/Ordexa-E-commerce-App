import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MySizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyTexts.email,
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField / 2),

            /// Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(MyTexts.rememberMe),
                  ],
                ),

                /// Forget password
                TextButton(
                  onPressed: ()=> Get.to(()=> ForgotPassword()),
                  child: Text(MyTexts.forgetPasswordTitle),
                ),
              ],
            ),

            SizedBox(height: MySizes.defaultSpace),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(()=> NavigationMenu()),
                child: Text(MyTexts.signIn),
              ),
            ),

            SizedBox(height: MySizes.spaceBetweenItems),

            /// create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(()=>SignupScreen()),
                child: Text(MyTexts.createAccount),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
