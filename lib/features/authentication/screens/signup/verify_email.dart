import 'package:e_commerce_app/common/widget/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace,),
        child: Column(
          children: [
            /// Image
            Image(image: AssetImage(MyImage.verifyEmail), width: MyHelperFunctions.screenWidth() * 0.6,),
            SizedBox(height: MySizes.spaceBtwSections,),

            /// Title & SubTitle
            Text(MyTexts.confirmEmail, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),

            SizedBox(height: MySizes.spaceBetweenItems,),

            Text("support@codingWithiyke.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),

            SizedBox(height: MySizes.spaceBetweenItems,),

            Text(MyTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

            SizedBox(height: MySizes.spaceBetweenItems,),

            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=> SuccessScreen(
                image: MyImage.success,
                title: MyTexts.yourAccountCreatedTitle,
                subTitle: MyTexts.yourAccountCreatedSubTitle,
                onPressed: ()=> Get.to(()=> LoginScreen()),
              )), child: Text(MyTexts.mContinue)),
            ),

            SizedBox(height: MySizes.spaceBetweenItems,),

            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text(MyTexts.resendEmail)),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
