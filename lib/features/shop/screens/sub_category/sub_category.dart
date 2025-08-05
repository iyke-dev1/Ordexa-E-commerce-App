import 'package:e_commerce_app/common/images/rounded_images.dart';
import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/products_card_horizontal.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Sport'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// -- banner
              RoundedImage(
                width: double.infinity,
                imageUrl: MyImage.promoBanner2,
                applyImageRadius: true,
              ),
              SizedBox(height: MySizes.spaceBtwSections),

              /// -- Sub-categories
              Column(
                children: [
                  MySectionHeading(
                    title: 'Sport Shirts',
                    onPressed: () {},
                    showActionButton: true,
                  ),
                  SizedBox(height: MySizes.spaceBetweenItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder: (context, index)=> SizedBox(width: MySizes.spaceBetweenItems,),
                      itemBuilder: (context, index) => ProductsCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
