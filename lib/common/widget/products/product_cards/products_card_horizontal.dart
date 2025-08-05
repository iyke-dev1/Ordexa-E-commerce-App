import 'package:e_commerce_app/common/images/rounded_images.dart';
import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/product_price_text.dart';
import 'package:e_commerce_app/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widget/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';

class ProductsCardHorizontal extends StatelessWidget {
  const ProductsCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColor.darkerGrey : MyColor.softGrey,
      ),
      child: Row(
        children: [
          /// -- Thumbnail
          MyCircularContainer(
            height: 120,
            padding: EdgeInsets.all(MySizes.sm),
            backgroundColor: dark ? MyColor.dark : MyColor.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl: MyImage.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                /// -- sales tag
                Positioned(
                  top: 12,
                  child: MyCircularContainer(
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
                ),

                /// -- favourite icon button
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          /// -- Details
          SizedBox(
            width: 235 ,
            child: Padding(
              padding:  EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: false,),
                      SizedBox(height: MySizes.spaceBetweenItems / 2,),
                      BrandTitleTextWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                   Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: ProductPriceText(price: '256.0')),

                      /// Add to cart button
                      Container(
                        decoration: BoxDecoration(
                          color: MyColor.dark,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(MySizes.productImageRadius),
                              topLeft: Radius.circular(MySizes.cardRadiusMd)
                          ),
                        ),
                        child: SizedBox(
                            width: MySizes.iconLg * 1.2,
                            height: MySizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: MyColor.white,))),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
