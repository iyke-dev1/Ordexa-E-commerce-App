import 'package:e_commerce_app/common/images/rounded_images.dart';
import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/product_price_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class ProductsCardsVertical extends StatelessWidget {
  const ProductsCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    /// Container With Side Padding, Color, edges, radius and Shadow.
    return GestureDetector(
      onTap: ()=> Get.to(()=> ProductDetails()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColor.darkGrey : MyColor.white,
        ),
        child: Column(
          children: [
            /// -- ThumbNail, WishList Button, Discount Tag.
            MyCircularContainer(
              height: 180,
              padding: EdgeInsets.all(MySizes.sm),
              backgroundColor: dark ? MyColor.dark : MyColor.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  RoundedImage(
                    imageUrl: MyImage.productImage1,
                    applyImageRadius: true,
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

            SizedBox(height: MySizes.spaceBetweenItems / 2),

            /// -- Details
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'White Nike Air Shoe', smallSize: true),
                  SizedBox(height: MySizes.spaceBetweenItems / 2),

                  BrandTitleTextWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),


            /// Add spacer() here to keep height of each box same in case 1 and 2 lines of heading
            /// this usually happens when product title is in a single line or two lines (max)
            /// use spacer() to utilize all the space to set the price and cart button at the buttom
            Spacer(),

            /// -- price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// price
                Padding(
                  padding: const EdgeInsets.only(left: MySizes.sm ),
                  child: ProductPriceText(price: '35.5', isLarge: false, lineThrough: true,),
                ),



                /// Add to cart button
                Container(
                  decoration: BoxDecoration(
                      color: MyColor.dark,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(MySizes.productImageRadius),
                          topLeft: Radius.circular(MySizes.cardRadiusMd)
                      )
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
    );
  }
}

