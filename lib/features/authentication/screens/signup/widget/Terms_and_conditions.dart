import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyTermsAndConditions extends StatelessWidget {
  const MyTermsAndConditions({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDark(context);
    return Row(
      children: [
        SizedBox(
            width: 25,
            height: 24,
            child: Checkbox(value: true, onChanged: (
                value) {})),

        SizedBox(height: MySizes.spaceBetweenItems,),

        Text.rich(TextSpan(
            children: [
              TextSpan(
                  text: '${MyTexts.iAgreeTo} ', style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall),
              TextSpan(text: '${MyTexts.privacyPolicy} ',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                    color: dark ? MyColor.white : MyColor
                        .primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark
                        ? MyColor.white
                        : MyColor.primary,
                  )),
              TextSpan(text: ' ${MyTexts.and} ', style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall),
              TextSpan(
                  text: '${MyTexts.termOfUse} ', style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                color: dark ? MyColor.white : MyColor.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? MyColor.white
                    : MyColor.primary,
              )),

            ]
        )),
      ],
    );
  }
}
