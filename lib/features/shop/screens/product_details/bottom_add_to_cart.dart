import 'package:e_commerce_app/common/widget/icons/circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MySizes.defaultSpace,
        vertical: MySizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? MyColor.darkerGrey : MyColor.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MySizes.cardRadiusLg),
          topRight: Radius.circular(MySizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: MyColor.darkerGrey,
                color: MyColor.white,
              ),

              SizedBox(width: MySizes.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: MySizes.spaceBetweenItems),

              CircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: MyColor.darkerGrey,
                color: MyColor.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(MySizes.md),
                backgroundColor: MyColor.black,
                side: BorderSide(color: MyColor.black),
              ),
              child: Text('Add to cart')),
        ],
      ),
    );
  }
}
