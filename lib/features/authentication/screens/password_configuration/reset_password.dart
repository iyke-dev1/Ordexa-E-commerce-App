import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
            children: [
        /// Image
        Image(image: AssetImage(MyImage.success),
        width: MyHelperFunctions.screenWidth() * 0.6,
        height: MyHelperFunctions.screenHeight() * 0.4,

      ),
      SizedBox(height: MySizes.spaceBtwSections,),

      /// Title & SubTitle
      Text(MyTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),

      SizedBox(height: MySizes.spaceBetweenItems,),

      Text(MyTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

      SizedBox(height: MySizes.spaceBetweenItems,),

      /// Button
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: (){} , child: Text(MyTexts.done)),
      ),

      SizedBox(height: MySizes.spaceBetweenItems,),

      SizedBox(
        width: double.infinity,
        child: TextButton(onPressed: (){} , child: Text(MyTexts.resendEmail)),
         ),


          ],
        ),
        ),
      ),
    );
  }
}
