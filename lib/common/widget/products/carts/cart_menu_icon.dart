import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Stack(children: [
      IconButton(onPressed: ()=> Get.to(()=> CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: dark ? MyColor.white : MyColor.black,
              borderRadius: BorderRadius.circular(100)
          ),
          child: Center(
            child: Text("2",  style: Theme.of(context,).textTheme.labelMedium!.apply(color: dark ? MyColor.black : MyColor.white, fontSizeFactor: 0.8), ),),
        ),
      ),

    ],);
  }
}
