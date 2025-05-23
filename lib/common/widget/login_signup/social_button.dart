import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class MySocialButtons extends StatelessWidget {
  const MySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: MySizes.iconMd,
              width: MySizes.iconMd,
              image: AssetImage(MyImage.googleLogo),),
          ),
        ),


        SizedBox(width: MySizes.defaultSpace,),

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: MySizes.iconMd,
              width: MySizes.iconMd,
              image: AssetImage(MyImage.facebookLogo),),
          ),
        ),
      ],
    );
  }
}
