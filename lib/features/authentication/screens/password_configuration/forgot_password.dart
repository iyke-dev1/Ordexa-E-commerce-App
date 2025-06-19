import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(MyTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),

              SizedBox(height: MySizes.spaceBetweenItems,),

              Text(MyTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

              SizedBox(height: MySizes.spaceBetweenItems * 2,),

              /// Text field
              /// Email
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyTexts.email,
                ),
              ),

              SizedBox(height: MySizes.spaceBtwSections,),
              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=>  Get.off(()=> ResetPassword()), child: Text(MyTexts.submit)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
