import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../common_shapes/containers/circular_container.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCircularContainer(
      showBorder: true,
      backgroundColor: dark ? MyColor.dark : MyColor.white,
      padding: EdgeInsets.only(top: MySizes.md, bottom: MySizes.sm, right: MySizes.sm, left: MySizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Have a Promo Code ? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? MyColor.white.withOpacity(0.5) : MyColor.dark.withOpacity(0.5),
                  backgroundColor: MyColor.grey.withOpacity(0.7),
                  side: BorderSide(color: MyColor.grey.withOpacity(0.1)),
                ),
                child: Text('Apply'),
              )),
        ],
      ),
    );
  }
}
