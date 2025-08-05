import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/common_shapes/containers/circular_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCircularContainer(
      padding: EdgeInsets.all(MySizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress ? MyColor.primary.withAlpha(100) : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? MyColor.darkerGrey
              : MyColor.grey,
      margin: EdgeInsets.only(bottom: MySizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle : null,
            color: selectedAddress ? dark ? MyColor.light : MyColor.dark.withOpacity(0.5) : null,
                    ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: MySizes.sm / 2),
              Text('+23408765677', maxLines: 1, overflow: TextOverflow.ellipsis,),
              SizedBox(height: MySizes.sm / 2),
              Text(
                '77898 beverly hills, behind air force base,Misery california, USA',
              softWrap: true,
              ),
              SizedBox(height: MySizes.sm / 2),
            ],
          ),
        ],
      ),
    );
  }
}
