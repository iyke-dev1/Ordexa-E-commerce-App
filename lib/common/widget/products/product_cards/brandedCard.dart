import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../images/circular_images.dart';
import '../../common_shapes/containers/circular_container.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';

class BrandedCard extends StatelessWidget {
  const BrandedCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: MyCircularContainer(
        padding: EdgeInsets.all(MySizes.sm),
        showBorder: false,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- icons
            Flexible(
              child: CircularImage(
                image: MyImage.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                dark ? MyColor.white : MyColor.black,
              ),
            ),

            SizedBox(width: MySizes.spaceBetweenItems / 2),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  BrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.medium,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style:
                    Theme.of(
                      context,
                    ).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
