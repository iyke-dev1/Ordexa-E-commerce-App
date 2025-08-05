import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/common/widget/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/brandedCard.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// -- Heading
              MySectionHeading(title: 'Brands', showActionButton: false),

              SizedBox(height: MySizes.defaultSpace),

              /// -- Brands
              MyGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder:
                    (context, index) => BrandedCard(
                      showBorder: true,
                      onTap: ()=> Get.to(() => BrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
