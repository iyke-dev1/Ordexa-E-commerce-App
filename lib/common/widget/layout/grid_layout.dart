import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 270,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: MySizes.gridviewSpacing,
        mainAxisExtent: mainAxisExtent,
        crossAxisSpacing: MySizes.gridviewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
