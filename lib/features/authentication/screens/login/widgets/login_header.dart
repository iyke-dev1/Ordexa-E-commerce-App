import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key});



  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDark(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? MyImage.lightAppLogo : MyImage.darkAppLogo,
          ),
        ),
        Text(
          MyTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MySizes.sm),
        Text(
          MyTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
