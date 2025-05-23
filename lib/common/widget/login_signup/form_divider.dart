import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class MyFormDivider extends StatelessWidget {
  const MyFormDivider({
    super.key,
    required this.dividerText,
  });

final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark  = MyHelperFunctions.isDark(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyColor.darkGrey : MyColor.grey,
            thickness: 0.5,
            indent: 40,
            endIndent: 5,
          ),
        ),

        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),

        Flexible(
          child: Divider(
            color: dark ? MyColor.darkGrey : MyColor.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 40,
          ),
        ),
      ],
    );
  }
}
