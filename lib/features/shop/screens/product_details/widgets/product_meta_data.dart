import 'package:e_commerce_app/common/images/circular_images.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/product_price_text.dart';
import 'package:e_commerce_app/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/common_shapes/containers/circular_container.dart';
import '../../../../../common/widget/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -- Price and sales price
        Row(children: [
          /// -- Sales Tag
          MyCircularContainer(
            radius: MySizes.sm,
            backgroundColor: MyColor.secondary.withAlpha(200),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySizes.sm,
                vertical: MySizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.apply(color: MyColor.black),
              ),
            ),
          ),
            SizedBox(width: MySizes.spaceBetweenItems,),
          /// --  price
          Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough ),),
          SizedBox(width: MySizes.spaceBetweenItems,),
          ProductPriceText(price: '175', isLarge: true,),
        ],),

        SizedBox(height: MySizes.spaceBetweenItems / 1.5,),
        /// -- Title
        ProductTitleText(title: 'Green Nike Sport shirt',),
        SizedBox(height: MySizes.spaceBetweenItems / 1.5,),

        /// -- Stock and Status
        Row(
          children: [
            ProductTitleText(title: 'Status',),
            SizedBox(width: MySizes.spaceBetweenItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems / 1.5,),

        /// -- Brand
        Row(
          children: [
            CircularImage(
              image: MyImage.shoeIcon,
              width: 30,
              height: 30,
              overlayColor: dark ? MyColor.white : MyColor.black,
            ),  
            BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
