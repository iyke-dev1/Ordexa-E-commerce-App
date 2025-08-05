import 'package:e_commerce_app/common/products/sortable/sortable_products.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/brandedCard.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/appBar/app_bar.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: MyAppBar(title: Text("Nike"),),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                /// -- Brand Details
                BrandedCard(showBorder: true),
                SizedBox(height: MySizes.spaceBtwSections,),


                SortableProducts()
              ],
            ),
        ),
      ),
    );
  }
}
