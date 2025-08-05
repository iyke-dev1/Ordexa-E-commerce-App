import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/images/rounded_images.dart';
import '../../../../../common/widget/appBar/app_bar.dart';
import '../../../../../common/widget/common_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widget/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? MyColor.darkGrey : MyColor.light,
        child: Stack(
          children: [

            /// main Large image
            SizedBox(height: 360,
                child: Padding(
                  padding: const EdgeInsets.all(
                      MySizes.productImageRadius * 3),
                  child: Center(child: Image(image: AssetImage(
                      MyImage.productImage1))),
                )
            ),


            /// image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      SizedBox(width: MySizes.spaceBetweenItems,),
                  itemBuilder: (_, index) => RoundedImage(
                      width: 80,
                      backgroundColor: dark ? MyColor.dark : MyColor.white,
                      border: Border.all(color: MyColor.primary),
                      padding: EdgeInsets.all(MySizes.sm),
                      imageUrl: MyImage.productImage1
                  ),),
              ),
            ),

            MyAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
