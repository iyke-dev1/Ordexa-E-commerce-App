import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget{
  /// if you want to add the background color to tabs you have to wrap them in material widgets.
  /// To do that we need [preferredSized] Widget and that's why i created custom class. [PreferredSizedWidget]
  const MyTabBar({super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyColor.black : MyColor.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: MyColor.primary,
          unselectedLabelColor: MyColor.darkGrey,
          labelColor: dark ? MyColor.white : MyColor.black,
          tabAlignment: TabAlignment.start,
        ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}
