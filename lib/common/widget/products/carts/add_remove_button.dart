import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class MyProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const MyProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyHelperFunctions.isDarkMode(context) ? MyColor.white : MyColor.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColor.darkerGrey : MyColor.light,

        ),
        SizedBox(width: MySizes.spaceBetweenItems,),
        Text('2', style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: MySizes.spaceBetweenItems,),

        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color:  MyColor.white,
          backgroundColor:  MyColor.primary,
        ),
      ],
    );
  }
}
