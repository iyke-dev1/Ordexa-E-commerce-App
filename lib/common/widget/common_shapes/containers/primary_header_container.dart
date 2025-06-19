import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: MyColor.primary,
        padding: EdgeInsets.only(bottom: 0),

        /// --- if [ size isFinite: is not true in stack] error occurred -> read README.md file at
        child: Stack(
          children: [
            /// --- Background custom shapes
            Positioned(
              top: -140,
              right: -200,
              child: MyCircularContainer(
                backgroundColor: MyColor.textWhite.withAlpha(30),
              ),
            ),
            Positioned(
              top: 80,
              right: -260,
              child: MyCircularContainer(
                backgroundColor: MyColor.textWhite.withAlpha(30),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
