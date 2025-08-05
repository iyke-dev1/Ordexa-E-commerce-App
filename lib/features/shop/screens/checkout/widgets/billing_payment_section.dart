import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        MySectionHeading(title: 'Payment Method', buttonTitle: "change", showActionButton: true,),
        SizedBox(height: MySizes.spaceBetweenItems / 2,),

        Row(
          children: [
            MyCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? MyColor.light : MyColor.white,
              padding: EdgeInsets.all(MySizes.sm),
              child: Image(image: AssetImage(MyImage.shoeIcon)),
            ),

            SizedBox(width: MySizes.spaceBetweenItems,),

            Text("PayPal", style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
