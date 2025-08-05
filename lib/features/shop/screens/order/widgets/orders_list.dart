import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyOrdersListItem extends StatelessWidget {
  const MyOrdersListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __)=> SizedBox(height: MySizes.spaceBetweenItems,),
      itemBuilder: (_, index)=> MyCircularContainer(
        showBorder: true,
        padding: EdgeInsets.all(MySizes.defaultSpace),
        backgroundColor: dark ? MyColor.dark : MyColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             /// -- row 1
            Row(
              children: [
                Icon(Iconsax.ship),
                SizedBox(width: MySizes.spaceBetweenItems / 2,),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order', style: Theme.of(context).textTheme.bodyLarge!.apply(color: MyColor.primary, fontSizeDelta: 1),),

                      Text('03 april, 2025', style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),

                Icon(Iconsax.arrow_right_34, size:  MySizes.iconSm,),
              ],
            ),

            SizedBox(height: MySizes.spaceBetweenItems,),
            /// -- row 2
            Row(
              children: [

                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      SizedBox(width: MySizes.spaceBetweenItems / 2,),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelLarge,),

                            Text('[#6556]', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(width: MySizes.spaceBetweenItems / 2,),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelLarge,),

                            Text('03 feb 2025', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
