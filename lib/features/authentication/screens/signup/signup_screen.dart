import 'package:e_commerce_app/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Texts
              Text(MyTexts.signUpTitle, style: Theme
                  .of(context)
                  .textTheme
                  .headlineSmall,),
              SizedBox(height: MySizes.spaceBtwSections,),

              /// Form
              MySignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}

