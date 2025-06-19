import 'package:flutter/material.dart';
import '../../../../../common/widget/appBar/app_bar.dart';
import '../../../../../common/widget/products/carts/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: MyColor.grey),
          ),
          Text(
            MyTexts.homeAppBarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: MyColor.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {}, iconColor: MyColor.white,)
      ],
    );
  }
}
