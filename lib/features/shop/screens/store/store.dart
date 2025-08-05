import 'package:e_commerce_app/common/widget/appBar/tab_bar.dart';
import 'package:e_commerce_app/common/widget/common_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widget/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products/carts/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brands/all_brands.dart';
import 'package:e_commerce_app/features/shop/screens/store/widget/category_tab.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/appBar/app_bar.dart';
import '../../../../common/widget/products/product_cards/brandedCard.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? MyColor.black : MyColor.white,
                expandedHeight: 440,


                flexibleSpace: Padding(
                  padding: EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: MySizes.spaceBetweenItems / 2),
                      MySearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: MySizes.spaceBtwSections / 2),

                      /// -- featured brands
                      MySectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: ()=> Get.to(()=> AllBrandsScreen()),
                      ),
                      SizedBox(height: MySizes.spaceBetweenItems / 2),

                      MyGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return BrandedCard(showBorder: false,);
                        },
                      ),
                    ],
                  ),
                ),

                bottom: MyTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],

                )
              ),
            ];
          },

          /// -- body
          body: TabBarView(
              children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),

              ]
          ),
        ),
      ),
    );
  }
}


