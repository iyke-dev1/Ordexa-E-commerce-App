import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;


  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text, style: Theme.of(context).textTheme.titleSmall,),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? MyColor.white : null),
        avatar:  isColor
            ? MyCircularContainer(
          width: 50,
          height: 50,
          backgroundColor: MyHelperFunctions.getColor(text)!) : null,
          labelPadding: isColor ? EdgeInsets.all(0) : null,
      
        /// -- make icon in the center
        shape: isColor ? CircleBorder() : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        // selectedColor: isColor  ? Colors.green : null,
        backgroundColor: isColor ? MyHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
