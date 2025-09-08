import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/signup/signup_controller.dart';

class MyTermsAndConditions extends StatelessWidget {
  const MyTermsAndConditions({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 25,
            height: 24,
            child: Obx(
                ()=> Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value),
            )),

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
