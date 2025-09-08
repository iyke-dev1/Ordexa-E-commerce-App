import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widget/login_signup/form_divider.dart';
import '../../../../../common/widget/login_signup/social_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/signup/signup_controller.dart';
import 'Terms_and_conditions.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) => MyValidator.validateEmptyText('First name', value),
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
                    controller: controller.lastName,
                    validator: (value) => MyValidator.validateEmptyText('Last name', value),
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
              controller: controller.userName,
              validator: (value) => MyValidator.validateEmptyText('Username', value),
              decoration: InputDecoration(
                labelText: MyTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => MyValidator.validateEmail(value!),
              decoration: InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Phone Number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => MyValidator.validatePhoneNumber(value),
              decoration: InputDecoration(
                labelText: MyTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Password
            Obx( () =>
               TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) => MyValidator.validatePassword(value!),
                decoration: InputDecoration(
                    labelText: MyTexts.password,
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                    )
                ),
              ),
            ),

            SizedBox(height: MySizes.spaceBtwInputField,),

            /// Terms & Conditions
            MyTermsAndConditions(),

            SizedBox(height: MySizes.spaceBetweenItems,),

            /// SignUp Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                if (controller.signupFormKey.currentState!.validate()) {
                  controller.signup();
                }
              },
              child: Text(MyTexts.createAccount),
            ),

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

