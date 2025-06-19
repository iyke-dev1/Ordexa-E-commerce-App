import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import '../widget/common_shapes/containers/circular_container.dart';
import '../widget/products/product_cards/brandedCard.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCircularContainer(
      showBorder: true,
      borderColor: dark ? MyColor.darkGrey : MyColor.grey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(MySizes.md),
      margin: EdgeInsets.only(bottom: MySizes.spaceBetweenItems),
      child: Column(
        children: [
          /// -- Brand with Products Count
          BrandedCard(showBorder: false),

          /// -- Brand top 3 Product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
        child: MyCircularContainer(
          height: 100,
          backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColor.darkerGrey : MyColor.light,
          margin: EdgeInsets.only(right: MySizes.sm),
          padding: EdgeInsets.all(MySizes.md),
          child: Image( fit: BoxFit.contain, image: AssetImage(image)),
        )
    );
  }
}
