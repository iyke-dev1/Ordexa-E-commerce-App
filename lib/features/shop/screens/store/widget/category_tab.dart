import 'package:e_commerce_app/common/widget/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/products_cards_vertical.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            BrandShowcase(images: [MyImage.productImage1, MyImage.productImage1, MyImage.productImage1],),
            BrandShowcase(images: [MyImage.productImage1, MyImage.productImage1, MyImage.productImage1],),
            SizedBox(height: MySizes.spaceBetweenItems,),
      
      
            /// -- Products
            MySectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
            SizedBox(height: MySizes.spaceBetweenItems,),
      
            MyGridLayout(itemCount: 4, itemBuilder: (_, index)=> ProductsCardsVertical())
          ],
        ),
      
      ),
    ]
    );

  }
}
