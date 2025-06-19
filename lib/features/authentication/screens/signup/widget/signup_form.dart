import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widget/login_signup/form_divider.dart';
import '../../../../../common/widget/login_signup/social_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'Terms_and_conditions.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: MyTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),

                SizedBox(width: MySizes.spaceBtwInputField,),

                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: MyTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// userName
            TextFormField(
              decoration: InputDecoration(
                labelText: MyTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Email
            TextFormField(
              decoration: InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Phone Number
            TextFormField(
              decoration: InputDecoration(
                labelText: MyTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                  labelText: MyTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Terms & Conditions
            MyTermsAndConditions(),

            SizedBox(height: MySizes.spaceBetweenItems,),

            /// SignUp Button
            SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(VerifyEmailScreen()),
                  child: Text(MyTexts.createAccount)),),

            SizedBox(height: MySizes.spaceBetweenItems,),
            /// Divider
            MyFormDivider(dividerText: MyTexts.orSignUpWith.capitalize!),

            SizedBox(height: MySizes.spaceBetweenItems,),

            /// social Buttons
            MySocialButtons(),

          ],
        )
    );
  }
}

