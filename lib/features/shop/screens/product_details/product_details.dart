import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/products_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../product review/product_review.dart';
import 'bottom_add_to_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(

      bottomNavigationBar:  BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// -- Product image Slider
            ProductImageSlider(),

            /// -- product details
            Padding(
                padding: EdgeInsets.only(left: MySizes.defaultSpace, right: MySizes.defaultSpace, bottom: MySizes.defaultSpace),
                child: Column(
                  children: [
                    /// --- Rating & share
                    RatingAndShare(),
                    /// -- Price, Title, Stock & brand
                    ProductMetaData(),

                    ///  -- Attributes
                    ProductsAttributes(),

                    SizedBox(height: MySizes.spaceBtwSections,),
                    ///  -- CheckOut button
                    SizedBox(
                      width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),

                    SizedBox(height: MySizes.spaceBtwSections,),

                    ///   -- Description
                    MySectionHeading(title: 'Description', showActionButton: false,),
                    SizedBox(height: MySizes.spaceBetweenItems,),
                    ReadMoreText(
                      'This is a Product description for blue Nike Sleeveless vest, There are more things that can be added but i am just going to stop some where here ',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    ///   -- Reviews
                    Divider(),
                    SizedBox(height: MySizes.spaceBetweenItems,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MySectionHeading(title: 'Reviews(119)', showActionButton: false,),
                        IconButton(onPressed: ()=> Get.to(()=> ProductReview()), icon: Icon(Iconsax.arrow_right_34))
                      ],
                    ),
                    SizedBox(height: MySizes.spaceBtwSections,)
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}


