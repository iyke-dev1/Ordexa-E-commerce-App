import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/common/widget/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widget/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products/product_cards/products_cards_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('wishlist', style:  Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_, index)=> ProductsCardsVertical()),
          ],
        ),),
      ),
    );
  }
}
