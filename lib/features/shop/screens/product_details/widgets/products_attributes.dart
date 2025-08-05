import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/product_price_text.dart';
import 'package:e_commerce_app/common/widget/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/chips/my_choice_chip.dart';

class ProductsAttributes extends StatelessWidget {
  const ProductsAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MyCircularContainer(
          padding: EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColor.darkerGrey : MyColor.grey,

          child: Column(
            children: [
              ///  -- selected attribute pricing
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// -- Title price and Stock status
                  MySectionHeading(title: "variation"),
                  SizedBox(width: MySizes.spaceBetweenItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          ProductTitleText(title: 'Price : ', smallSize: true,),
                          /// -- Actual price
                          Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),

                          SizedBox(width: MySizes.spaceBetweenItems,),

                          /// -- sale Price
                          ProductPriceText(price: '20'),
                        ],
                      ),

                      /// -- Stock
                      Row(
                        children: [
                          ProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )
                    ],
                  ),

                ],
              ),

              /// -- Variation Description
              ProductTitleText(title: 'This is the Description of the product and it can go up to max 4 lines', smallSize: true, maxLines: 4,)
            ],
          ),
        ),
        SizedBox(height: MySizes.spaceBetweenItems,),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MySectionHeading(title: 'Colors'),
            SizedBox(height: MySizes.spaceBetweenItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                MyChoiceChip(text: 'Blue', selected: true, onSelected: (value){},),
                MyChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            )

          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MySectionHeading(title: 'Sizes'),
            SizedBox(height: MySizes.spaceBetweenItems / 2,),
           Wrap(
             spacing: 8,
             children: [
               MyChoiceChip(text: 'Eu 34', selected: true, onSelected: (value){},),
               MyChoiceChip(text: 'Eu 36', selected: false, onSelected: (value){},),
               MyChoiceChip(text: 'Eu 38', selected: false, onSelected: (value){},),
             ],
           )

          ],
        )
      ],
    );
  }
}

