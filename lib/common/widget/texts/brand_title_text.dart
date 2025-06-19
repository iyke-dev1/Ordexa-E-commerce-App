import 'package:flutter/material.dart';
import '../../../utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        // check with brandSize is required and that style.
        style: brandTextSize == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color,)
        : brandTextSize == TextSizes.medium
        ? Theme.of(context).textTheme.bodyMedium!.apply(color: color,)
        : brandTextSize == TextSizes.large
        ? Theme.of(context).textTheme.titleMedium!.apply(color: color,)
        : Theme.of(context).textTheme.bodyMedium!.apply(color: color,),
      );
  }
}
