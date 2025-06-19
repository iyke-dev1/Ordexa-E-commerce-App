import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MySpacingStyle.paddingWithAppHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(image),
                width: MyHelperFunctions.screenWidth() * 0.6,
                height: MyHelperFunctions.screenHeight() * 0.4,

              ),
              SizedBox(height: MySizes.spaceBtwSections,),

              /// Title & SubTitle
              Text(title, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),

              SizedBox(height: MySizes.spaceBetweenItems,),

              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

              SizedBox(height: MySizes.spaceBetweenItems,),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: Text(MyTexts.mContinue)),
              ),

              SizedBox(height: MySizes.spaceBetweenItems,),

            ],
          ),
        ),
      ),
    );
  }
}
