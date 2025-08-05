import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../images/rounded_images.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// -- images
        RoundedImage(
          imageUrl: MyImage.shoeIcon,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(MySizes.sm),
          backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColor.darkerGrey : MyColor.light,
        ),


        SizedBox(width: MySizes.spaceBetweenItems,),

        /// -- Text, Price and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              Flexible(child: ProductTitleText(title: 'Black Sport Shoes', maxLines: 1,)),

              /// -- Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Uk 08 ', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
