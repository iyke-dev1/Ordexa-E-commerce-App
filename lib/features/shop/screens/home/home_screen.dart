import 'package:e_commerce_app/common/widget/products/product_cards/products_cards_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/common_shapes/containers/primary_header_container.dart';
import '../../../../common/widget/common_shapes/containers/search_container.dart';
import '../../../../common/widget/layout/grid_layout.dart';
import '../../../../common/widget/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// -- Header
            MyPrimaryHeaderContainer(
              child: Column(
                children: [

                  /// -- AppBar
                  MyHomeAppBar(),

                  SizedBox(height: MySizes.smallerDefaultSpace),

                  /// -- SearchBar
                  MySearchContainer(text: 'Search in Store'),
                  SizedBox(height: MySizes.spaceBtwSections
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        MySectionHeading(
                          title: 'Popular Categories',
                          textColor: MyColor.white,
                          showActionButton: false,
                        ),
                        SizedBox(height: MySizes.defaultSpace),

                        /// -- Categories
                        HomeCategory(),

                      ],
                    ),
                  ),
                  SizedBox(height: MySizes.spaceBtwSections,),
                ],
              ),
            ),

            /// --- Body
            Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// -- promo slider
                  PromoSlider(banners: [
                    MyImage.promoBanner1,
                    MyImage.promoBanner2,
                    MyImage.promoBanner3,
                  ],),

                  SizedBox(height: MySizes.spaceBtwSections,),

                  /// -- Heading
                  MySectionHeading(title: 'Popular Product', onPressed:  (){},),
                  SizedBox(height: MySizes.spaceBetweenItems),

                  /// -- popular Products
                  GridLayout(itemCount: 4, itemBuilder: (_ , index) => ProductsCardsVertical(),)

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}





